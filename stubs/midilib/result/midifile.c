BOOL midiReadGetNextMessage(const MIDI_FILE *_pMF, int iTrack, MIDI_MSG *pMsg)
{
MIDI_FILE_TRACK *pTrack;
BYTE *bptr, *pMsgDataPtr;
int sz;
	_VAR_CAST;
	if (!IsTrackValid(iTrack))			return FALSE;
	pTrack = &pMF->Track[iTrack];
	if (pTrack->ptr >= pTrack->pEnd)
		return FALSE;	
	pTrack->ptr = _midiReadVarLen(pTrack->ptr, &pMsg->dt);
	pTrack->pos += pMsg->dt;
	pMsg->dwAbsPos = pTrack->pos;
	if (*pTrack->ptr & 0x80)	/* Is this is sys message */
		{
		pMsg->iType = (tMIDI_MSG)((*pTrack->ptr) & 0xf0);
		pMsgDataPtr = pTrack->ptr+1;
		if (pMsg->iType == 0xf0)
			pMsg->iType = (tMIDI_MSG)(*pTrack->ptr);
		}
	else						/* just data - so use the last msg type */
		{
		pMsg->iType = pMsg->iLastMsgType;
		pMsgDataPtr = pTrack->ptr;
		}
	pMsg->iLastMsgType = (tMIDI_MSG)pMsg->iType;
	pMsg->iLastMsgChnl = (BYTE)((*pTrack->ptr) & 0x0f)+1;
	switch(pMsg->iType)
		{
		case	msgNoteOn:
							pMsg->MsgData.NoteOn.iChannel = pMsg->iLastMsgChnl;
							pMsg->MsgData.NoteOn.iNote = *(pMsgDataPtr);
							pMsg->MsgData.NoteOn.iVolume = *(pMsgDataPtr+1);
							pMsg->iMsgSize = 3;
							break;
		case	msgNoteOff:
							pMsg->MsgData.NoteOff.iChannel = pMsg->iLastMsgChnl;
							pMsg->MsgData.NoteOff.iNote = *(pMsgDataPtr);
							pMsg->iMsgSize = 3;
							break;
		case	msgNoteKeyPressure:
							pMsg->MsgData.NoteKeyPressure.iChannel = pMsg->iLastMsgChnl;
							pMsg->MsgData.NoteKeyPressure.iNote = *(pMsgDataPtr);
							pMsg->MsgData.NoteKeyPressure.iPressure = *(pMsgDataPtr+1);
							pMsg->iMsgSize = 3;
							break;
		case	msgSetParameter:
							pMsg->MsgData.NoteParameter.iChannel = pMsg->iLastMsgChnl;
							pMsg->MsgData.NoteParameter.iControl = (tMIDI_CC)*(pMsgDataPtr);
							pMsg->MsgData.NoteParameter.iParam = *(pMsgDataPtr+1);
							pMsg->iMsgSize = 3;
							break;
		case	msgSetProgram:
							pMsg->MsgData.ChangeProgram.iChannel = pMsg->iLastMsgChnl;
							pMsg->MsgData.ChangeProgram.iProgram = *(pMsgDataPtr);
							pMsg->iMsgSize = 2;
							break;
		case	msgChangePressure:
							pMsg->MsgData.ChangePressure.iChannel = pMsg->iLastMsgChnl;
							pMsg->MsgData.ChangePressure.iPressure = *(pMsgDataPtr);
							pMsg->iMsgSize = 2;
							break;
		case	msgSetPitchWheel:
							pMsg->MsgData.PitchWheel.iChannel = pMsg->iLastMsgChnl;
							pMsg->MsgData.PitchWheel.iPitch = *(pMsgDataPtr) | (*(pMsgDataPtr+1) << 7);
							pMsg->MsgData.PitchWheel.iPitch -= MIDI_WHEEL_CENTRE;
							pMsg->iMsgSize = 3;
							break;
		case	msgMetaEvent:
							bptr = pTrack->ptr;
							pMsg->MsgData.MetaEvent.iType = (tMIDI_META)*(pTrack->ptr+1);
							pTrack->ptr = _midiReadVarLen(pTrack->ptr+2, &pMsg->iMsgSize);
							sz = (pTrack->ptr-bptr)+pMsg->iMsgSize;							
							if (_midiReadTrackCopyData(pMsg, pTrack->ptr, sz, FALSE) == FALSE)
								return FALSE;
							memcpy(pMsg->data, bptr, sz);
							switch(pMsg->MsgData.MetaEvent.iType)
								{
								case	metaMIDIPort:
										pMsg->MsgData.MetaEvent.Data.iMIDIPort = *(pTrack->ptr+0);
										break;
								case	metaSequenceNumber:
										pMsg->MsgData.MetaEvent.Data.iSequenceNumber = *(pTrack->ptr+0);
										break;
								case	metaTextEvent:
								case	metaCopyright:
								case	metaTrackName:
								case	metaInstrument:
								case	metaLyric:
								case	metaMarker:
								case	metaCuePoint:
										pMsg->MsgData.MetaEvent.Data.Text.pData = pTrack->ptr;
										break;
								case	metaEndSequence:
										break;
								case	metaSetTempo:
										{
										DWORD us = ((*(pTrack->ptr+0))<<16)|((*(pTrack->ptr+1))<<8)|(*(pTrack->ptr+2));
										pMsg->MsgData.MetaEvent.Data.Tempo.iBPM = 60000000L/us;
										}
										break;
								case	metaSMPTEOffset:
										pMsg->MsgData.MetaEvent.Data.SMPTE.iHours = *(pTrack->ptr+0);
										pMsg->MsgData.MetaEvent.Data.SMPTE.iMins= *(pTrack->ptr+1);
										pMsg->MsgData.MetaEvent.Data.SMPTE.iSecs = *(pTrack->ptr+2);
										pMsg->MsgData.MetaEvent.Data.SMPTE.iFrames = *(pTrack->ptr+3);
										pMsg->MsgData.MetaEvent.Data.SMPTE.iFF = *(pTrack->ptr+4);
										break;
								case	metaTimeSig:
										pMsg->MsgData.MetaEvent.Data.TimeSig.iNom = *(pTrack->ptr+0);
										pMsg->MsgData.MetaEvent.Data.TimeSig.iDenom = *(pTrack->ptr+1) * MIDI_NOTE_MINIM;
										break;
								case	metaKeySig:
										if (*pTrack->ptr & 0x80)
											{
											pMsg->MsgData.MetaEvent.Data.KeySig.iKey = ((256-*pTrack->ptr)&keyMaskKey);
											pMsg->MsgData.MetaEvent.Data.KeySig.iKey |= keyMaskNeg;
											}
										else
											{
											pMsg->MsgData.MetaEvent.Data.KeySig.iKey = (tMIDI_KEYSIG)(*pTrack->ptr&keyMaskKey);
											}
										if (*(pTrack->ptr+1)) 
											pMsg->MsgData.MetaEvent.Data.KeySig.iKey |= keyMaskMin;
										break;
								case	metaSequencerSpecific:
										pMsg->MsgData.MetaEvent.Data.Sequencer.iSize = pMsg->iMsgSize;
										pMsg->MsgData.MetaEvent.Data.Sequencer.pData = pTrack->ptr;
										break;
								}
							pTrack->ptr += pMsg->iMsgSize;
							pMsg->iMsgSize = sz;
							break;
		case	msgSysEx1:
		case	msgSysEx2:
							bptr = pTrack->ptr;
							pTrack->ptr = _midiReadVarLen(pTrack->ptr+1, &pMsg->iMsgSize);
							sz = (pTrack->ptr-bptr)+pMsg->iMsgSize;
							if (_midiReadTrackCopyData(pMsg, pTrack->ptr, sz, FALSE) == FALSE)
								return FALSE;
							memcpy(pMsg->data, bptr, sz);
							pTrack->ptr += pMsg->iMsgSize;
							pMsg->iMsgSize = sz;
							pMsg->MsgData.SysEx.pData = pMsg->data;
							pMsg->MsgData.SysEx.iSize = sz;
							break;
		}
	pMsg->bImpliedMsg = FALSE;
	if ((pMsg->iType&0xf0) != 0xf0)
		{
		if (*pTrack->ptr & 0x80) 
			{
			}
		else 
			{
			pMsg->bImpliedMsg = TRUE;
			pMsg->iImpliedMsg = pMsg->iLastMsgType;
			pMsg->iMsgSize--;
			}
		_midiReadTrackCopyData(pMsg, pTrack->ptr, pMsg->iMsgSize, TRUE);
		pTrack->ptr+=pMsg->iMsgSize;
		}
	return TRUE;
}
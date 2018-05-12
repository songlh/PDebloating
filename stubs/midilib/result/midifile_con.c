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
							pMsg->MsgData.NoteKeyPressure.iChannel = pMsg->iLastMsgChnl;//delete
							pMsg->MsgData.NoteKeyPressure.iNote = *(pMsgDataPtr); //delete
							pMsg->MsgData.NoteKeyPressure.iPressure = *(pMsgDataPtr+1); //delete
							pMsg->iMsgSize = 3;  //no 
							break;
		case	msgSetParameter:
							pMsg->MsgData.NoteParameter.iChannel = pMsg->iLastMsgChnl; //delete
							pMsg->MsgData.NoteParameter.iControl = (tMIDI_CC)*(pMsgDataPtr); //delete
							pMsg->MsgData.NoteParameter.iParam = *(pMsgDataPtr+1); //delete
							pMsg->iMsgSize = 3; //no
							break;
		case	msgSetProgram:
							pMsg->MsgData.ChangeProgram.iChannel = pMsg->iLastMsgChnl; //delete
							pMsg->MsgData.ChangeProgram.iProgram = *(pMsgDataPtr); //delete
							pMsg->iMsgSize = 2; //no
							break;
		case	msgChangePressure:
							pMsg->MsgData.ChangePressure.iChannel = pMsg->iLastMsgChnl; //delete
							pMsg->MsgData.ChangePressure.iPressure = *(pMsgDataPtr); //delete
							pMsg->iMsgSize = 2;
							break;
		case	msgSetPitchWheel:
							pMsg->MsgData.PitchWheel.iChannel = pMsg->iLastMsgChnl; //delete
							pMsg->MsgData.PitchWheel.iPitch = *(pMsgDataPtr) | (*(pMsgDataPtr+1) << 7); //delete
							pMsg->MsgData.PitchWheel.iPitch -= MIDI_WHEEL_CENTRE;  //delete
							pMsg->iMsgSize = 3;
							break;
		case	msgMetaEvent: //not check
							bptr = pTrack->ptr;
							pMsg->MsgData.MetaEvent.iType = (tMIDI_META)*(pTrack->ptr+1);
							pTrack->ptr = _midiReadVarLen(pTrack->ptr+2, &pMsg->iMsgSize);
							sz = (pTrack->ptr-bptr)+pMsg->iMsgSize;							
							if (_midiReadTrackCopyData(pMsg, pTrack->ptr, sz, FALSE) == FALSE)
								return FALSE;
							memcpy(pMsg->data, bptr, sz); //delete
							switch(pMsg->MsgData.MetaEvent.iType)
								{
								case	metaMIDIPort: //delete
										pMsg->MsgData.MetaEvent.Data.iMIDIPort = *(pTrack->ptr+0); //delete
										break; //delete
								case	metaSequenceNumber: //delete
										pMsg->MsgData.MetaEvent.Data.iSequenceNumber = *(pTrack->ptr+0); //delete
										break; //delete
								case	metaTextEvent: //delete
 								case	metaCopyright: //delete
								case	metaTrackName: //delete
								case	metaInstrument: //delete
								case	metaLyric: //delete
								case	metaMarker: //delete
								case	metaCuePoint: //delete
										pMsg->MsgData.MetaEvent.Data.Text.pData = pTrack->ptr; //delete
										break; //delete
								case	metaEndSequence: //delete
										break; //delete
								case	metaSetTempo: //read above
										{
										DWORD us = ((*(pTrack->ptr+0))<<16)|((*(pTrack->ptr+1))<<8)|(*(pTrack->ptr+2));
										pMsg->MsgData.MetaEvent.Data.Tempo.iBPM = 60000000L/us;
										}
										break;
								case	metaSMPTEOffset: //delete
										pMsg->MsgData.MetaEvent.Data.SMPTE.iHours = *(pTrack->ptr+0); //delete
										pMsg->MsgData.MetaEvent.Data.SMPTE.iMins= *(pTrack->ptr+1); //delete
										pMsg->MsgData.MetaEvent.Data.SMPTE.iSecs = *(pTrack->ptr+2); //delete
										pMsg->MsgData.MetaEvent.Data.SMPTE.iFrames = *(pTrack->ptr+3); //delete
										pMsg->MsgData.MetaEvent.Data.SMPTE.iFF = *(pTrack->ptr+4); //delete
										break; //delete
								case	metaTimeSig: //delete
										pMsg->MsgData.MetaEvent.Data.TimeSig.iNom = *(pTrack->ptr+0); //delete
										pMsg->MsgData.MetaEvent.Data.TimeSig.iDenom = *(pTrack->ptr+1) * MIDI_NOTE_MINIM;//delete
										break; //delete
								case	metaKeySig: //delete
										if (*pTrack->ptr & 0x80) //delete
											{ //delete
											pMsg->MsgData.MetaEvent.Data.KeySig.iKey = ((256-*pTrack->ptr)&keyMaskKey); //delete
											pMsg->MsgData.MetaEvent.Data.KeySig.iKey |= keyMaskNeg; //delete
											} //delete
										else //delete
											{ //delete
											pMsg->MsgData.MetaEvent.Data.KeySig.iKey = (tMIDI_KEYSIG)(*pTrack->ptr&keyMaskKey); //delete
											} //delete
										if (*(pTrack->ptr+1)) //delete 
											pMsg->MsgData.MetaEvent.Data.KeySig.iKey |= keyMaskMin; //delete
										break; //delete
								case	metaSequencerSpecific: //delete
										pMsg->MsgData.MetaEvent.Data.Sequencer.iSize = pMsg->iMsgSize; ///delete
										pMsg->MsgData.MetaEvent.Data.Sequencer.pData = pTrack->ptr; //delete
										break; //delete
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
							memcpy(pMsg->data, bptr, sz); //delete
							pTrack->ptr += pMsg->iMsgSize;
							pMsg->iMsgSize = sz;
							pMsg->MsgData.SysEx.pData = pMsg->data; //delete
							pMsg->MsgData.SysEx.iSize = sz; //delete
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
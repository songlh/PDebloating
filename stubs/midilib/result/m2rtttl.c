while(midiReadGetNextMessage(mf, &msg)) {

  switch(msg.iType) {
    case msgNoteOff:
      if (iChannel == msg.MsgData.NoteOff.iChannel) {
        if (iCurrPlayingNote==msg.MsgData.NoteOff.iNote) {
          (*pAddNote)(iCurrPlayingNote, ...);
          iCurrPlayingNote = -1;
          iCurrPlayStart = msg.dwAbsPos;
        }
      }
      break;
    case msgNoteOn:
      ...
      break;
    case msgMetaEvent:
      ...
	  break;
    default: /* Ignore other cases */
	  break;
  }
}
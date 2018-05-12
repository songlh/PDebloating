typedef struct {
  tMIDI_MSG	iType;
  DWORD		dt;
  DWORD		dwAbsPos;
  ...
  union {
    struct {
      int iNote;
      int iChannel;
      int iVolume;
    } NoteOn;
    struct {
      int iNote;
      int iChannel;
    } NoteOff;
    struct {
      int iNote;
      int iChannel;
      int iPressure;
    } NoteKeyPressure;
    ...
  } MsgData;
  ...
} MIDI_MSG;
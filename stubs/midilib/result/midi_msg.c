typedef struct {
	tMIDI_MSG	iType; //read
	DWORD		dt;		/* delta time */
	DWORD		dwAbsPos; //read
	DWORD		iMsgSize;
	BOOL		bImpliedMsg;
	tMIDI_MSG	iImpliedMsg;
	BYTE 		*data;		/* dynamic data block */
	DWORD		data_sz;				
	union {
		struct {
			int iNote;    //read
			int	iChannel; //read
			int	iVolume;  //read
		} NoteOn;
		struct {
			int iNote; //read
			int	iChannel; //read
		} NoteOff;
		struct {
			int	iNote;
			int	iChannel;
			int	iPressure;
		} NoteKeyPressure;
		struct {
			int	iChannel;
			tMIDI_CC iControl;
			int	iParam;
		} NoteParameter;
		struct {
			int	iChannel;
			int	iProgram;
		} ChangeProgram;
		struct {
			int	iChannel;
			int	iPressure;
		} ChangePressure;
		struct {
			int	iChannel;
			int	iPitch;
		} PitchWheel;
		struct {
			tMIDI_META	iType; //read
			union {
				int	iMIDIPort;
				int	iSequenceNumber;
				struct {
					BYTE *pData;
				} Text;
				struct {
					int	iBPM; //read
				} Tempo;
				struct {
					int	iHours, iMins;
					int	iSecs, iFrames,iFF;
				} SMPTE;
				struct {
					tMIDI_KEYSIG iKey;
				} KeySig;
				struct {
					int	iNom, iDenom;
				} TimeSig;
				struct {
					BYTE *pData;
					int	iSize;
				} Sequencer;
			} Data;
		} MetaEvent;
		struct {
			BYTE *pData;
			int	iSize;
		} SysEx;
	} MsgData;/* State information - Please treat these as private*/
	tMIDI_MSG iLastMsgType;
	BYTE iLastMsgChnl;
} MIDI_MSG;
//44 primitive fields
//9 type
//9 field read
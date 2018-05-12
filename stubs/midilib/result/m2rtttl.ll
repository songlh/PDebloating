; ModuleID = 'm2rtttl.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._MIDI_FILE = type { %struct._IO_FILE*, i32, %struct.MIDI_HEADER, i8*, i32, [256 x %struct.MIDI_FILE_TRACK] }
%struct.MIDI_HEADER = type { i32, i16, i16, i16 }
%struct.MIDI_FILE_TRACK = type { i8*, i8*, i8*, i32, i32, i32, i32, i8, i8, [64 x %struct.MIDI_LAST_NOTE] }
%struct.MIDI_LAST_NOTE = type { i8, i8, i8, i8, i32 }
%struct.MIDI_END_POINT = type { i32, i32 }
%struct.MIDI_MSG = type { i32, i32, i32, i32, i32, i32, i8*, i32, %union.anon, i32, i8 }
%union.anon = type { %struct.anon.6 }
%struct.anon.6 = type { i32, %union.anon.7 }
%union.anon.7 = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32 }
%struct.anon.8 = type { i8* }
%struct.anon.9 = type { i32 }
%struct.anon.13 = type { i8*, i32 }
%struct.CONVERT_PREFS = type { i32, i32, i32, i32, float }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@midiFileClose.mthd = internal constant [4 x i8] c"MThd", align 1, !dbg !0
@midiFileClose.mtrk = internal constant [4 x i8] c"MTrk", align 1, !dbg !367
@midiSongAddEndSequence.tmp = internal global [3 x i8] c"\FF/\00", align 1, !dbg !410
@midiSongAddSMPTEOffset.tmp = internal global [8 x i8] c"\FFT\05\00\00\00\00\00", align 1, !dbg !373
@midiSongAddTimeSig.tmp = internal global [7 x i8] c"\FFX\04\00\00\00\00", align 1, !dbg !382
@midiSongAddKeySig.tmp = internal global [5 x i8] c"\FFY\02\00\00", align 1, !dbg !390
@midiSongAddTempo.tmp = internal global [6 x i8] c"\FFQ\03\00\00\00", align 1, !dbg !398
@midiSongAddMIDIPort.tmp = internal global [4 x i8] c"\FF!\01\00", align 1, !dbg !406
@szPatchList = internal global [128 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.178, i32 0, i32 0)], align 4, !dbg !418
@.str.51 = private unnamed_addr constant [21 x i8] c"Acoustic Grand Piano\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Bright Acoustic Piano\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"Electric Grand Piano\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"Honky-tonk Piano\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Electric Piano 1\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Electric Piano 2\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"Harpsichord\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"Clavinet\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"Celesta\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"Glockenspiel\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"Music Box\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"Vibraphone\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"Marimba\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"Xylophone\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"Tubular Bells\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"Dulcimer\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"Draw Organ\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"Percussive Organ\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"Rock Organ\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"Church Organ\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"Reed Organ\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"Accordian\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"Harmonica\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"Tango Accordian\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"Acoustic Guitar (nylon)\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"Acoustic Guitar (steel)\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"Electric Guitar (jazz)\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"Electric Guitar (clean)\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"Electric Guitar (muted)\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"Overdriven Guitar\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"Distortion Guitar\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"Guitar harmonics\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"Acoustic bass\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"Electric Bass (finger)\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"Electric Bass (picked)\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"Fretless Bass\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"Slap Bass 1\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"Slap Bass 2\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"Synth bass 1\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"Synth bass 2\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"Violin\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"Viola\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"Cello\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"Contrabass\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"Tremolo strings\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"Pizzicato strings\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"Orchestral harp\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"Timpani\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"String ensemble 1\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"String ensemble 2\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"Synth strings 1\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"Synth strings 2\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"Choir Ahhs\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"Voice oohs\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"Synth voice\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"Orchestra hit\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"Trumpet\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"Trombone\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"Tuba\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"Muted trumpet\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"French horn\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"Brass section\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"Synth brass 1\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"Synth brass 2\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"Soprano sax\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"Alto sax\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"Tenor sax\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"Baritone sax\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"Oboe\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"English horn\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"Bassoon\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"Clarinet\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"Picclo\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"Flute\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"Recorder\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"Pan Flute\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"Bottle Blow\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"Shakuhachi\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"Whistle\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"Ocarina\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"Lead 5 (Square)\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"Lead 5 (Sawtooth)\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"Lead 5 (Calliope)\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"Lead 5 (Chiff)\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"Lead 5 (Charang)\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"Lead 5 (Voice)\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"Lead 5 (Fifths)\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"Lead 5 (Bass+lead)\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"Pad 1 (New age)\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"Pad 2 (Warm)\00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c"Pad 3 (Polysynth)\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"Pad 4 (Choir)\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"Pad 5 (Bowed)\00", align 1
@.str.144 = private unnamed_addr constant [17 x i8] c"Pad 6 (Metallic)\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"Pad 7 (Halo)\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"Pad 8 (Sweep)\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"FX 1 (Rain)\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"FX 2 (Soundtrack)\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"FX 3 (Crystal)\00", align 1
@.str.150 = private unnamed_addr constant [18 x i8] c"FX 4 (Atmosphere)\00", align 1
@.str.151 = private unnamed_addr constant [18 x i8] c"FX 5 (Brightness)\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"FX 6 (Goblins)\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"FX 7 (Echoes)\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"FX 8 (Sci-fi)\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"Sitar\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"Banjo\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"Shamisen\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"Koto\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"Kalimba\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"Bagpipe\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"Fiddle\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"Shanai\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"Tinkle bell\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"Agogo\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"Steel drums\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"Woodblock\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"Taiko drum\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"Melodic tom\00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"Synth drum\00", align 1
@.str.170 = private unnamed_addr constant [15 x i8] c"Reverse cymbal\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"Guitar fret noise\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"Breath noise\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"Seashore\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"Bird tweet\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"Telephone ring\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"Helicopter\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"Applause\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"Gunshot\00", align 1
@szGMDrums = internal global [128 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.236, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null], align 4, !dbg !448
@.str.179 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"High Q\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"Slap\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"Sticks\00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"Square click\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"Acoustic Kick Drum\00", align 1
@.str.185 = private unnamed_addr constant [19 x i8] c"Electric Kick Drum\00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"Side Stick\00", align 1
@.str.187 = private unnamed_addr constant [20 x i8] c"Acoustic Snare Drum\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"Hand Clap\00", align 1
@.str.189 = private unnamed_addr constant [21 x i8] c"Electric Snare Drum \00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"Low Floor Tom\00", align 1
@.str.191 = private unnamed_addr constant [14 x i8] c"Closed Hi Hat\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c"High Floor Tom\00", align 1
@.str.193 = private unnamed_addr constant [15 x i8] c"Opening Hi Hat\00", align 1
@.str.194 = private unnamed_addr constant [8 x i8] c"Low Tom\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"Open Hi Hat\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"Low Mid Tom\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"High Mid Tom\00", align 1
@.str.198 = private unnamed_addr constant [15 x i8] c"Crash Cymbal 1\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"High Tom\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"Ride Cymbal 1\00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"Chinese Boom\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"Ride Bell\00", align 1
@.str.203 = private unnamed_addr constant [10 x i8] c"Tamborine\00", align 1
@.str.204 = private unnamed_addr constant [14 x i8] c"Splash cymbal\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"Cowbell\00", align 1
@.str.206 = private unnamed_addr constant [17 x i8] c"Crash Cymbal (2)\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"Vibra Slap\00", align 1
@.str.208 = private unnamed_addr constant [16 x i8] c"Ride Cymbal (2)\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"Hi bongo\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"Lo bongo\00", align 1
@.str.211 = private unnamed_addr constant [16 x i8] c"Mute High Conga\00", align 1
@.str.212 = private unnamed_addr constant [16 x i8] c"Open High Conga\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"Low Conga\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"High Timbale\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"Low Timbale\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"High Agogo\00", align 1
@.str.217 = private unnamed_addr constant [10 x i8] c"Low Agogo\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"Cabasa\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"Maracas\00", align 1
@.str.220 = private unnamed_addr constant [17 x i8] c"Short Hi Whistle\00", align 1
@.str.221 = private unnamed_addr constant [17 x i8] c"Long Low Whistle\00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c"Short Guiro\00", align 1
@.str.223 = private unnamed_addr constant [11 x i8] c"Long Guiro\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"Claves\00", align 1
@.str.225 = private unnamed_addr constant [15 x i8] c"High Woodblock\00", align 1
@.str.226 = private unnamed_addr constant [14 x i8] c"Low Woodblock\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"Mute Cuica\00", align 1
@.str.228 = private unnamed_addr constant [11 x i8] c"Open Cuica\00", align 1
@.str.229 = private unnamed_addr constant [14 x i8] c"Mute Triangle\00", align 1
@.str.230 = private unnamed_addr constant [14 x i8] c"Open Triangle\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"Shaker\00", align 1
@.str.232 = private unnamed_addr constant [12 x i8] c"Jingle Bell\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"Tring\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"Castinets\00", align 1
@.str.235 = private unnamed_addr constant [11 x i8] c"Mute Sudro\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c"Open Sudro\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Note off\00", align 1
@.str.1.4 = private unnamed_addr constant [8 x i8] c"Note on\00", align 1
@.str.2.5 = private unnamed_addr constant [18 x i8] c"Note key pressure\00", align 1
@.str.3.6 = private unnamed_addr constant [14 x i8] c"Set parameter\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Set program\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Change pressure\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Set pitch wheel\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Meta event\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SysEx1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SysEx2\00", align 1
@szCCList = internal global [128 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.313, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.319, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.320, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.327, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.347, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.349, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.351, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.353, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.355, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.359, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.361, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.363, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.364, i32 0, i32 0)], align 4, !dbg !453
@.str.237 = private unnamed_addr constant [12 x i8] c"Bank Select\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"Modulation\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"Breath Control\00", align 1
@.str.240 = private unnamed_addr constant [12 x i8] c"Undefined 3\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"Foot\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"Portamento Time\00", align 1
@.str.243 = private unnamed_addr constant [11 x i8] c"Date Entry\00", align 1
@.str.244 = private unnamed_addr constant [8 x i8] c"Volume\09\00", align 1
@.str.245 = private unnamed_addr constant [8 x i8] c"Balance\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"Undefined 9\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"Pan\00", align 1
@.str.248 = private unnamed_addr constant [11 x i8] c"Expression\00", align 1
@.str.249 = private unnamed_addr constant [17 x i8] c"Effort Control 1\00", align 1
@.str.250 = private unnamed_addr constant [17 x i8] c"Effort Control 2\00", align 1
@.str.251 = private unnamed_addr constant [13 x i8] c"Undefined 14\00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"Undefined 15\00", align 1
@.str.253 = private unnamed_addr constant [18 x i8] c"General Purpose 1\00", align 1
@.str.254 = private unnamed_addr constant [18 x i8] c"General Purpose 2\00", align 1
@.str.255 = private unnamed_addr constant [18 x i8] c"General Purpose 3\00", align 1
@.str.256 = private unnamed_addr constant [18 x i8] c"General Purpose 4\00", align 1
@.str.257 = private unnamed_addr constant [13 x i8] c"Undefined 20\00", align 1
@.str.258 = private unnamed_addr constant [13 x i8] c"Undefined 21\00", align 1
@.str.259 = private unnamed_addr constant [13 x i8] c"Undefined 22\00", align 1
@.str.260 = private unnamed_addr constant [13 x i8] c"Undefined 23\00", align 1
@.str.261 = private unnamed_addr constant [13 x i8] c"Undefined 24\00", align 1
@.str.262 = private unnamed_addr constant [13 x i8] c"Undefined 25\00", align 1
@.str.263 = private unnamed_addr constant [13 x i8] c"Undefined 26\00", align 1
@.str.264 = private unnamed_addr constant [13 x i8] c"Undefined 27\00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"Undefined 28\00", align 1
@.str.266 = private unnamed_addr constant [13 x i8] c"Undefined 29\00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"Undefined 30\00", align 1
@.str.268 = private unnamed_addr constant [13 x i8] c"Undefined 31\00", align 1
@.str.269 = private unnamed_addr constant [7 x i8] c"lsb-32\00", align 1
@.str.270 = private unnamed_addr constant [7 x i8] c"lsb-33\00", align 1
@.str.271 = private unnamed_addr constant [7 x i8] c"lsb-34\00", align 1
@.str.272 = private unnamed_addr constant [7 x i8] c"lsb-35\00", align 1
@.str.273 = private unnamed_addr constant [7 x i8] c"lsb-36\00", align 1
@.str.274 = private unnamed_addr constant [7 x i8] c"lsb-37\00", align 1
@.str.275 = private unnamed_addr constant [7 x i8] c"lsb-38\00", align 1
@.str.276 = private unnamed_addr constant [7 x i8] c"lsb-39\00", align 1
@.str.277 = private unnamed_addr constant [7 x i8] c"lsb-40\00", align 1
@.str.278 = private unnamed_addr constant [7 x i8] c"lsb-41\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"lsb-42\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c"lsb-43\00", align 1
@.str.281 = private unnamed_addr constant [7 x i8] c"lsb-44\00", align 1
@.str.282 = private unnamed_addr constant [7 x i8] c"lsb-45\00", align 1
@.str.283 = private unnamed_addr constant [7 x i8] c"lsb-46\00", align 1
@.str.284 = private unnamed_addr constant [7 x i8] c"lsb-47\00", align 1
@.str.285 = private unnamed_addr constant [7 x i8] c"lsb-48\00", align 1
@.str.286 = private unnamed_addr constant [7 x i8] c"lsb-49\00", align 1
@.str.287 = private unnamed_addr constant [7 x i8] c"lsb-50\00", align 1
@.str.288 = private unnamed_addr constant [7 x i8] c"lsb-51\00", align 1
@.str.289 = private unnamed_addr constant [7 x i8] c"lsb-52\00", align 1
@.str.290 = private unnamed_addr constant [7 x i8] c"lsb-53\00", align 1
@.str.291 = private unnamed_addr constant [7 x i8] c"lsb-54\00", align 1
@.str.292 = private unnamed_addr constant [7 x i8] c"lsb-55\00", align 1
@.str.293 = private unnamed_addr constant [7 x i8] c"lsb-56\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"lsb-57\00", align 1
@.str.295 = private unnamed_addr constant [7 x i8] c"lsb-58\00", align 1
@.str.296 = private unnamed_addr constant [7 x i8] c"lsb-59\00", align 1
@.str.297 = private unnamed_addr constant [7 x i8] c"lsb-60\00", align 1
@.str.298 = private unnamed_addr constant [7 x i8] c"lsb-61\00", align 1
@.str.299 = private unnamed_addr constant [7 x i8] c"lsb-62\00", align 1
@.str.300 = private unnamed_addr constant [7 x i8] c"lsb-63\00", align 1
@.str.301 = private unnamed_addr constant [14 x i8] c"Sustain Pedal\00", align 1
@.str.302 = private unnamed_addr constant [11 x i8] c"Portamento\00", align 1
@.str.303 = private unnamed_addr constant [16 x i8] c"Pedal Sustenuto\00", align 1
@.str.304 = private unnamed_addr constant [11 x i8] c"Pedal Soft\00", align 1
@.str.305 = private unnamed_addr constant [19 x i8] c"Legato Foot Switch\00", align 1
@.str.306 = private unnamed_addr constant [7 x i8] c"Hold 2\00", align 1
@.str.307 = private unnamed_addr constant [16 x i8] c"Sound Variation\00", align 1
@.str.308 = private unnamed_addr constant [13 x i8] c"Harm Content\00", align 1
@.str.309 = private unnamed_addr constant [13 x i8] c"Release Time\00", align 1
@.str.310 = private unnamed_addr constant [12 x i8] c"Attack Time\00", align 1
@.str.311 = private unnamed_addr constant [11 x i8] c"Brightness\00", align 1
@.str.312 = private unnamed_addr constant [7 x i8] c"Reverb\00", align 1
@.str.313 = private unnamed_addr constant [6 x i8] c"Delay\00", align 1
@.str.314 = private unnamed_addr constant [16 x i8] c"Pitch Transpose\00", align 1
@.str.315 = private unnamed_addr constant [7 x i8] c"Flange\00", align 1
@.str.316 = private unnamed_addr constant [11 x i8] c"Special FX\00", align 1
@.str.317 = private unnamed_addr constant [18 x i8] c"General Purpose 5\00", align 1
@.str.318 = private unnamed_addr constant [18 x i8] c"General Purpose 6\00", align 1
@.str.319 = private unnamed_addr constant [18 x i8] c"General Purpose 7\00", align 1
@.str.320 = private unnamed_addr constant [18 x i8] c"General Purpose 8\00", align 1
@.str.321 = private unnamed_addr constant [19 x i8] c"Portamento Control\00", align 1
@.str.322 = private unnamed_addr constant [13 x i8] c"Undefined 85\00", align 1
@.str.323 = private unnamed_addr constant [13 x i8] c"Undefined 86\00", align 1
@.str.324 = private unnamed_addr constant [13 x i8] c"Undefined 87\00", align 1
@.str.325 = private unnamed_addr constant [13 x i8] c"Undefined 88\00", align 1
@.str.326 = private unnamed_addr constant [13 x i8] c"Undefined 89\00", align 1
@.str.327 = private unnamed_addr constant [13 x i8] c"Undefined 90\00", align 1
@.str.328 = private unnamed_addr constant [9 x i8] c"FX Depth\00", align 1
@.str.329 = private unnamed_addr constant [14 x i8] c"Tremelo Depth\00", align 1
@.str.330 = private unnamed_addr constant [13 x i8] c"Chorus Depth\00", align 1
@.str.331 = private unnamed_addr constant [14 x i8] c"Celesta Depth\00", align 1
@.str.332 = private unnamed_addr constant [13 x i8] c"Phaser Depth\00", align 1
@.str.333 = private unnamed_addr constant [9 x i8] c"Data Inc\00", align 1
@.str.334 = private unnamed_addr constant [9 x i8] c"Data Dec\00", align 1
@.str.335 = private unnamed_addr constant [18 x i8] c"Non Reg Param LSB\00", align 1
@.str.336 = private unnamed_addr constant [18 x i8] c"Non Ref Param MSB\00", align 1
@.str.337 = private unnamed_addr constant [14 x i8] c"Reg Param LSB\00", align 1
@.str.338 = private unnamed_addr constant [14 x i8] c"Reg Param MSB\00", align 1
@.str.339 = private unnamed_addr constant [14 x i8] c"Undefined 102\00", align 1
@.str.340 = private unnamed_addr constant [14 x i8] c"Undefined 103\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"Undefined 104\00", align 1
@.str.342 = private unnamed_addr constant [14 x i8] c"Undefined 105\00", align 1
@.str.343 = private unnamed_addr constant [14 x i8] c"Undefined 106\00", align 1
@.str.344 = private unnamed_addr constant [14 x i8] c"Undefined 107\00", align 1
@.str.345 = private unnamed_addr constant [14 x i8] c"Undefined 108\00", align 1
@.str.346 = private unnamed_addr constant [14 x i8] c"Undefined 109\00", align 1
@.str.347 = private unnamed_addr constant [14 x i8] c"Undefined 110\00", align 1
@.str.348 = private unnamed_addr constant [14 x i8] c"Undefined 111\00", align 1
@.str.349 = private unnamed_addr constant [14 x i8] c"Undefined 112\00", align 1
@.str.350 = private unnamed_addr constant [14 x i8] c"Undefined 113\00", align 1
@.str.351 = private unnamed_addr constant [14 x i8] c"Undefined 114\00", align 1
@.str.352 = private unnamed_addr constant [14 x i8] c"Undefined 115\00", align 1
@.str.353 = private unnamed_addr constant [14 x i8] c"Undefined 116\00", align 1
@.str.354 = private unnamed_addr constant [14 x i8] c"Undefined 117\00", align 1
@.str.355 = private unnamed_addr constant [14 x i8] c"Undefined 118\00", align 1
@.str.356 = private unnamed_addr constant [14 x i8] c"Undefined 119\00", align 1
@.str.357 = private unnamed_addr constant [14 x i8] c"All Sound Off\00", align 1
@.str.358 = private unnamed_addr constant [22 x i8] c"Reset All Controllers\00", align 1
@.str.359 = private unnamed_addr constant [14 x i8] c"Local Control\00", align 1
@.str.360 = private unnamed_addr constant [14 x i8] c"All Notes Off\00", align 1
@.str.361 = private unnamed_addr constant [14 x i8] c"Omni Mode Off\00", align 1
@.str.362 = private unnamed_addr constant [13 x i8] c"Omni Mode On\00", align 1
@.str.363 = private unnamed_addr constant [13 x i8] c"Mono Mode On\00", align 1
@.str.364 = private unnamed_addr constant [13 x i8] c"Poly Mode On\00", align 1
@muGetKeySigName.iKeysList = internal global [2 x [8 x i8*]] [[8 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0)], [8 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)]], align 4, !dbg !440
@.str.25 = private unnamed_addr constant [5 x i8] c" Min\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c" Maj\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"C \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"G \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"D \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"A \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"E \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"B \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"F#\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"C#\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"F \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"Bb\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"Eb\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"Ab\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"Db\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"Gb\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"Cb\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Sequence Number\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Text Event\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Track Name\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Instrument\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Lyric\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Marker\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"Cue Point\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"MIDI Port\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"End Sequence\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"Set Tempo\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"SMPTE Offset\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Time Sig\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Key Sig\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"Sequencer Specific\00", align 1
@muGetNoteFromName.note_map = private unnamed_addr constant [7 x i32] [i32 9, i32 11, i32 0, i32 2, i32 4, i32 5, i32 7], align 4
@.str.42 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@szNoteName = internal global [12 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)], align 4, !dbg !455
@.str.43 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@fFreqlist = internal global [12 x float] [float 0x40705A1480000000, float 0x407152E140000000, float 0x40725A8F60000000, float 0x4073721480000000, float 0x40749A1480000000, float 0x4075D3AE20000000, float 0x40771FD700000000, float 3.920000e+02, float 0x4079F4CCC0000000, float 4.400000e+02, float 0x407D228F60000000, float 0x407EDE1480000000], align 4, !dbg !460
@.str.44 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c" aug\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c" dim\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"+7\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"+9\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"+7M\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@rtttlGetClosestTempo.Valid = internal global [32 x i32] [i32 25, i32 28, i32 31, i32 35, i32 40, i32 45, i32 50, i32 56, i32 63, i32 70, i32 80, i32 90, i32 100, i32 112, i32 125, i32 140, i32 160, i32 180, i32 200, i32 225, i32 250, i32 285, i32 320, i32 355, i32 400, i32 450, i32 500, i32 565, i32 635, i32 715, i32 800, i32 900], align 4, !dbg !464
@.str.12.7 = private unnamed_addr constant [6 x i8] c"t=%d:\00", align 1
@.str.13.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@outStdout.pNoteNames = internal global [12 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.366, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.367, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.368, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.369, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.370, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.371, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.372, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.373, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.374, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.376, i32 0, i32 0)], align 4, !dbg !474
@.str.14.9 = private unnamed_addr constant [7 x i8] c"%d%s%d\00", align 1
@.str.365 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1.366 = private unnamed_addr constant [3 x i8] c"c#\00", align 1
@.str.2.367 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.3.368 = private unnamed_addr constant [3 x i8] c"d#\00", align 1
@.str.4.369 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5.370 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.6.371 = private unnamed_addr constant [3 x i8] c"f#\00", align 1
@.str.7.372 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.8.373 = private unnamed_addr constant [3 x i8] c"g#\00", align 1
@.str.9.374 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.10.375 = private unnamed_addr constant [3 x i8] c"a#\00", align 1
@.str.11.376 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@stderr = external global %struct._IO_FILE*, align 4
@.str.15.377 = private unnamed_addr constant [45 x i8] c"Usage: %s [-c channel] [-h][-r][-s] file...\0A\00", align 1
@.str.16.378 = private unnamed_addr constant [71 x i8] c"You can rip any single MIDI channel and convert it into a mobile phone\00", align 1
@.str.17.379 = private unnamed_addr constant [62 x i8] c"ring (the RTTTL format), or play it through the PC's speaker.\00", align 1
@.str.18.380 = private unnamed_addr constant [35 x i8] c"\0A-c\09Rip only from a single channel\00", align 1
@.str.19.381 = private unnamed_addr constant [39 x i8] c"-r\09Convert into RTTTL format (default)\00", align 1
@.str.20.382 = private unnamed_addr constant [37 x i8] c"-s\09Play as sounds through PC speaker\00", align 1
@.str.21.383 = private unnamed_addr constant [13 x i8] c"-h\09Help page\00", align 1
@.str.22.384 = private unnamed_addr constant [10 x i8] c"Cc:HRShrs\00", align 1
@optarg = external global i8*, align 4
@optopt = external global i32, align 4
@.str.23.385 = private unnamed_addr constant [36 x i8] c"%s: The %c option needs an operand\0A\00", align 1
@.str.24.386 = private unnamed_addr constant [24 x i8] c"(i.e. a channel number)\00", align 1
@optind = external global i32, align 4
@.str.25.387 = private unnamed_addr constant [19 x i8] c"converted:d=4,o=4,\00", align 1
@.str.26.388 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define internal i8* @midiFileCreate(i8*, i32) #0 !dbg !496 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._MIDI_FILE*, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !501, metadata !502), !dbg !503
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !504, metadata !502), !dbg !505
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %6, metadata !506, metadata !502), !dbg !507
  %8 = call noalias i8* @malloc(i32 139292) #7, !dbg !508
  %9 = bitcast i8* %8 to %struct._MIDI_FILE*, !dbg !509
  store %struct._MIDI_FILE* %9, %struct._MIDI_FILE** %6, align 4, !dbg !507
  call void @llvm.dbg.declare(metadata i32* %7, metadata !510, metadata !502), !dbg !511
  %10 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !512
  %11 = icmp ne %struct._MIDI_FILE* %10, null, !dbg !512
  br i1 %11, label %13, label %12, !dbg !514

; <label>:12:                                     ; preds = %2
  store i8* null, i8** %3, align 4, !dbg !515
  br label %104, !dbg !515

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %5, align 4, !dbg !516
  %15 = icmp ne i32 %14, 0, !dbg !516
  br i1 %15, label %30, label %16, !dbg !518

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** %4, align 4, !dbg !519
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !522
  %19 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !523
  %20 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %19, i32 0, i32 0, !dbg !524
  store %struct._IO_FILE* %18, %struct._IO_FILE** %20, align 4, !dbg !525
  %21 = icmp ne %struct._IO_FILE* %18, null, !dbg !525
  br i1 %21, label %22, label %29, !dbg !526

; <label>:22:                                     ; preds = %16
  %23 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !527
  %24 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %23, i32 0, i32 0, !dbg !529
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 4, !dbg !529
  %26 = call i32 @fclose(%struct._IO_FILE* %25), !dbg !530
  %27 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !531
  %28 = bitcast %struct._MIDI_FILE* %27 to i8*, !dbg !531
  call void @free(i8* %28) #7, !dbg !532
  store i8* null, i8** %3, align 4, !dbg !533
  br label %104, !dbg !533

; <label>:29:                                     ; preds = %16
  br label %30, !dbg !534

; <label>:30:                                     ; preds = %29, %13
  %31 = load i8*, i8** %4, align 4, !dbg !535
  %32 = call %struct._IO_FILE* @fopen(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !537
  %33 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !538
  %34 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %33, i32 0, i32 0, !dbg !539
  store %struct._IO_FILE* %32, %struct._IO_FILE** %34, align 4, !dbg !540
  %35 = icmp ne %struct._IO_FILE* %32, null, !dbg !540
  br i1 %35, label %36, label %37, !dbg !541

; <label>:36:                                     ; preds = %30
  br label %40, !dbg !542

; <label>:37:                                     ; preds = %30
  %38 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !544
  %39 = bitcast %struct._MIDI_FILE* %38 to i8*, !dbg !546
  call void @free(i8* %39) #7, !dbg !547
  store i8* null, i8** %3, align 4, !dbg !548
  br label %104, !dbg !548

; <label>:40:                                     ; preds = %36
  %41 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !549
  %42 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %41, i32 0, i32 1, !dbg !550
  store i32 1, i32* %42, align 4, !dbg !551
  %43 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !552
  %44 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %43, i32 0, i32 2, !dbg !553
  %45 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %44, i32 0, i32 3, !dbg !554
  store i16 384, i16* %45, align 4, !dbg !555
  %46 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !556
  %47 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %46, i32 0, i32 2, !dbg !557
  %48 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %47, i32 0, i32 1, !dbg !558
  store i16 1, i16* %48, align 4, !dbg !559
  store i32 0, i32* %7, align 4, !dbg !560
  br label %49, !dbg !562

; <label>:49:                                     ; preds = %98, %40
  %50 = load i32, i32* %7, align 4, !dbg !563
  %51 = icmp slt i32 %50, 256, !dbg !565
  br i1 %51, label %52, label %101, !dbg !566

; <label>:52:                                     ; preds = %49
  %53 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !567
  %54 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %53, i32 0, i32 5, !dbg !569
  %55 = load i32, i32* %7, align 4, !dbg !570
  %56 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %54, i32 0, i32 %55, !dbg !567
  %57 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %56, i32 0, i32 3, !dbg !571
  store i32 0, i32* %57, align 4, !dbg !572
  %58 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !573
  %59 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %58, i32 0, i32 5, !dbg !574
  %60 = load i32, i32* %7, align 4, !dbg !575
  %61 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %59, i32 0, i32 %60, !dbg !573
  %62 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %61, i32 0, i32 0, !dbg !576
  store i8* null, i8** %62, align 4, !dbg !577
  %63 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !578
  %64 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %63, i32 0, i32 5, !dbg !579
  %65 = load i32, i32* %7, align 4, !dbg !580
  %66 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %64, i32 0, i32 %65, !dbg !578
  %67 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %66, i32 0, i32 1, !dbg !581
  store i8* null, i8** %67, align 4, !dbg !582
  %68 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !583
  %69 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %68, i32 0, i32 5, !dbg !584
  %70 = load i32, i32* %7, align 4, !dbg !585
  %71 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %69, i32 0, i32 %70, !dbg !583
  %72 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %71, i32 0, i32 2, !dbg !586
  store i8* null, i8** %72, align 4, !dbg !587
  %73 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !588
  %74 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %73, i32 0, i32 5, !dbg !589
  %75 = load i32, i32* %7, align 4, !dbg !590
  %76 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %74, i32 0, i32 %75, !dbg !588
  %77 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %76, i32 0, i32 6, !dbg !591
  store i32 0, i32* %77, align 4, !dbg !592
  %78 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !593
  %79 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %78, i32 0, i32 5, !dbg !594
  %80 = load i32, i32* %7, align 4, !dbg !595
  %81 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %79, i32 0, i32 %80, !dbg !593
  %82 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %81, i32 0, i32 4, !dbg !596
  store i32 0, i32* %82, align 4, !dbg !597
  %83 = load i32, i32* %7, align 4, !dbg !598
  %84 = and i32 %83, 15, !dbg !599
  %85 = trunc i32 %84 to i8, !dbg !600
  %86 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !601
  %87 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %86, i32 0, i32 5, !dbg !602
  %88 = load i32, i32* %7, align 4, !dbg !603
  %89 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %87, i32 0, i32 %88, !dbg !601
  %90 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %89, i32 0, i32 7, !dbg !604
  store i8 %85, i8* %90, align 4, !dbg !605
  %91 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !606
  %92 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %91, i32 0, i32 5, !dbg !607
  %93 = load i32, i32* %7, align 4, !dbg !608
  %94 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %92, i32 0, i32 %93, !dbg !606
  %95 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %94, i32 0, i32 9, !dbg !609
  %96 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %95, i32 0, i32 0, !dbg !610
  %97 = bitcast %struct.MIDI_LAST_NOTE* %96 to i8*, !dbg !610
  call void @llvm.memset.p0i8.i32(i8* %97, i8 0, i32 512, i32 4, i1 false), !dbg !610
  br label %98, !dbg !611

; <label>:98:                                     ; preds = %52
  %99 = load i32, i32* %7, align 4, !dbg !612
  %100 = add nsw i32 %99, 1, !dbg !612
  store i32 %100, i32* %7, align 4, !dbg !612
  br label %49, !dbg !613, !llvm.loop !614

; <label>:101:                                    ; preds = %49
  %102 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !616
  %103 = bitcast %struct._MIDI_FILE* %102 to i8*, !dbg !617
  store i8* %103, i8** %3, align 4, !dbg !618
  br label %104, !dbg !618

; <label>:104:                                    ; preds = %101, %37, %22, %12
  %105 = load i8*, i8** %3, align 4, !dbg !619
  ret i8* %105, !dbg !619
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #4

; Function Attrs: noinline nounwind optnone
define internal i32 @midiFileSetTracksDefaultChannel(i8*, i32, i32) #0 !dbg !620 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !623, metadata !502), !dbg !624
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !625, metadata !502), !dbg !626
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !627, metadata !502), !dbg !628
  call void @llvm.dbg.declare(metadata i32* %8, metadata !629, metadata !502), !dbg !630
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %9, metadata !631, metadata !502), !dbg !632
  %10 = load i8*, i8** %5, align 4, !dbg !632
  %11 = bitcast i8* %10 to %struct._MIDI_FILE*, !dbg !632
  store %struct._MIDI_FILE* %11, %struct._MIDI_FILE** %9, align 4, !dbg !632
  %12 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %9, align 4, !dbg !633
  %13 = icmp ne %struct._MIDI_FILE* %12, null, !dbg !633
  br i1 %13, label %15, label %14, !dbg !635

; <label>:14:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !636
  br label %46, !dbg !636

; <label>:15:                                     ; preds = %3
  %16 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %9, align 4, !dbg !637
  %17 = load i32, i32* %6, align 4, !dbg !637
  %18 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %16, i32 %17), !dbg !637
  %19 = icmp ne i32 %18, 0, !dbg !637
  br i1 %19, label %21, label %20, !dbg !639

; <label>:20:                                     ; preds = %15
  store i32 0, i32* %4, align 4, !dbg !640
  br label %46, !dbg !640

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %7, align 4, !dbg !641
  %23 = icmp sge i32 %22, 1, !dbg !641
  br i1 %23, label %24, label %27, !dbg !641

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %7, align 4, !dbg !641
  %26 = icmp sle i32 %25, 16, !dbg !641
  br i1 %26, label %28, label %27, !dbg !643

; <label>:27:                                     ; preds = %24, %21
  store i32 0, i32* %4, align 4, !dbg !644
  br label %46, !dbg !644

; <label>:28:                                     ; preds = %24
  %29 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %9, align 4, !dbg !645
  %30 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %29, i32 0, i32 5, !dbg !646
  %31 = load i32, i32* %6, align 4, !dbg !647
  %32 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %30, i32 0, i32 %31, !dbg !645
  %33 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %32, i32 0, i32 7, !dbg !648
  %34 = load i8, i8* %33, align 4, !dbg !648
  %35 = zext i8 %34 to i32, !dbg !645
  %36 = add nsw i32 %35, 1, !dbg !649
  store i32 %36, i32* %8, align 4, !dbg !650
  %37 = load i32, i32* %7, align 4, !dbg !651
  %38 = sub nsw i32 %37, 1, !dbg !652
  %39 = trunc i32 %38 to i8, !dbg !653
  %40 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %9, align 4, !dbg !654
  %41 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %40, i32 0, i32 5, !dbg !655
  %42 = load i32, i32* %6, align 4, !dbg !656
  %43 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %41, i32 0, i32 %42, !dbg !654
  %44 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %43, i32 0, i32 7, !dbg !657
  store i8 %39, i8* %44, align 4, !dbg !658
  %45 = load i32, i32* %8, align 4, !dbg !659
  store i32 %45, i32* %4, align 4, !dbg !660
  br label %46, !dbg !660

; <label>:46:                                     ; preds = %28, %27, %20, %14
  %47 = load i32, i32* %4, align 4, !dbg !661
  ret i32 %47, !dbg !661
}

; Function Attrs: noinline nounwind optnone
define internal i32 @_midiValidateTrack(%struct._MIDI_FILE*, i32) #0 !dbg !662 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._MIDI_FILE*, align 4
  %5 = alloca i32, align 4
  store %struct._MIDI_FILE* %0, %struct._MIDI_FILE** %4, align 4
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %4, metadata !667, metadata !502), !dbg !668
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !669, metadata !502), !dbg !670
  %6 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !671
  %7 = icmp ne %struct._MIDI_FILE* %6, null, !dbg !671
  br i1 %7, label %9, label %8, !dbg !673

; <label>:8:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !674
  br label %42, !dbg !674

; <label>:9:                                      ; preds = %2
  %10 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !675
  %11 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %10, i32 0, i32 1, !dbg !677
  %12 = load i32, i32* %11, align 4, !dbg !677
  %13 = icmp ne i32 %12, 0, !dbg !675
  br i1 %13, label %14, label %22, !dbg !678

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %5, align 4, !dbg !679
  %16 = icmp slt i32 %15, 0, !dbg !682
  br i1 %16, label %20, label %17, !dbg !683

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %5, align 4, !dbg !684
  %19 = icmp sge i32 %18, 256, !dbg !685
  br i1 %19, label %20, label %21, !dbg !686

; <label>:20:                                     ; preds = %17, %14
  store i32 0, i32* %3, align 4, !dbg !687
  br label %42, !dbg !687

; <label>:21:                                     ; preds = %17
  br label %41, !dbg !688

; <label>:22:                                     ; preds = %9
  %23 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !689
  %24 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %23, i32 0, i32 3, !dbg !692
  %25 = load i8*, i8** %24, align 4, !dbg !692
  %26 = icmp ne i8* %25, null, !dbg !689
  br i1 %26, label %28, label %27, !dbg !693

; <label>:27:                                     ; preds = %22
  store i32 0, i32* %3, align 4, !dbg !694
  br label %42, !dbg !694

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %5, align 4, !dbg !695
  %30 = icmp slt i32 %29, 0, !dbg !697
  br i1 %30, label %39, label %31, !dbg !698

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %5, align 4, !dbg !699
  %33 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !700
  %34 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %33, i32 0, i32 2, !dbg !701
  %35 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %34, i32 0, i32 2, !dbg !702
  %36 = load i16, i16* %35, align 2, !dbg !702
  %37 = zext i16 %36 to i32, !dbg !700
  %38 = icmp sge i32 %32, %37, !dbg !703
  br i1 %38, label %39, label %40, !dbg !704

; <label>:39:                                     ; preds = %31, %28
  store i32 0, i32* %3, align 4, !dbg !705
  br label %42, !dbg !705

; <label>:40:                                     ; preds = %31
  br label %41

; <label>:41:                                     ; preds = %40, %21
  store i32 1, i32* %3, align 4, !dbg !706
  br label %42, !dbg !706

; <label>:42:                                     ; preds = %41, %39, %27, %20, %8
  %43 = load i32, i32* %3, align 4, !dbg !707
  ret i32 %43, !dbg !707
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiFileGetTracksDefaultChannel(i8*, i32) #0 !dbg !708 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !713, metadata !502), !dbg !714
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !715, metadata !502), !dbg !716
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %6, metadata !717, metadata !502), !dbg !718
  %7 = load i8*, i8** %4, align 4, !dbg !718
  %8 = bitcast i8* %7 to %struct._MIDI_FILE*, !dbg !718
  store %struct._MIDI_FILE* %8, %struct._MIDI_FILE** %6, align 4, !dbg !718
  %9 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !719
  %10 = icmp ne %struct._MIDI_FILE* %9, null, !dbg !719
  br i1 %10, label %12, label %11, !dbg !721

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !722
  br label %27, !dbg !722

; <label>:12:                                     ; preds = %2
  %13 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !723
  %14 = load i32, i32* %5, align 4, !dbg !723
  %15 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %13, i32 %14), !dbg !723
  %16 = icmp ne i32 %15, 0, !dbg !723
  br i1 %16, label %18, label %17, !dbg !725

; <label>:17:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !726
  br label %27, !dbg !726

; <label>:18:                                     ; preds = %12
  %19 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !727
  %20 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %19, i32 0, i32 5, !dbg !728
  %21 = load i32, i32* %5, align 4, !dbg !729
  %22 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %20, i32 0, i32 %21, !dbg !727
  %23 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %22, i32 0, i32 7, !dbg !730
  %24 = load i8, i8* %23, align 4, !dbg !730
  %25 = zext i8 %24 to i32, !dbg !727
  %26 = add nsw i32 %25, 1, !dbg !731
  store i32 %26, i32* %3, align 4, !dbg !732
  br label %27, !dbg !732

; <label>:27:                                     ; preds = %18, %17, %11
  %28 = load i32, i32* %3, align 4, !dbg !733
  ret i32 %28, !dbg !733
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiFileSetPPQN(i8*, i32) #0 !dbg !734 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !737, metadata !502), !dbg !738
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !739, metadata !502), !dbg !740
  call void @llvm.dbg.declare(metadata i32* %6, metadata !741, metadata !502), !dbg !742
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %7, metadata !743, metadata !502), !dbg !744
  %8 = load i8*, i8** %4, align 4, !dbg !744
  %9 = bitcast i8* %8 to %struct._MIDI_FILE*, !dbg !744
  store %struct._MIDI_FILE* %9, %struct._MIDI_FILE** %7, align 4, !dbg !744
  %10 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %7, align 4, !dbg !745
  %11 = icmp ne %struct._MIDI_FILE* %10, null, !dbg !745
  br i1 %11, label %13, label %12, !dbg !747

; <label>:12:                                     ; preds = %2
  store i32 384, i32* %3, align 4, !dbg !748
  br label %25, !dbg !748

; <label>:13:                                     ; preds = %2
  %14 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %7, align 4, !dbg !749
  %15 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %14, i32 0, i32 2, !dbg !750
  %16 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %15, i32 0, i32 3, !dbg !751
  %17 = load i16, i16* %16, align 4, !dbg !751
  %18 = zext i16 %17 to i32, !dbg !749
  store i32 %18, i32* %6, align 4, !dbg !752
  %19 = load i32, i32* %5, align 4, !dbg !753
  %20 = trunc i32 %19 to i16, !dbg !754
  %21 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %7, align 4, !dbg !755
  %22 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %21, i32 0, i32 2, !dbg !756
  %23 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %22, i32 0, i32 3, !dbg !757
  store i16 %20, i16* %23, align 4, !dbg !758
  %24 = load i32, i32* %6, align 4, !dbg !759
  store i32 %24, i32* %3, align 4, !dbg !760
  br label %25, !dbg !760

; <label>:25:                                     ; preds = %13, %12
  %26 = load i32, i32* %3, align 4, !dbg !761
  ret i32 %26, !dbg !761
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiFileGetPPQN(i8*) #0 !dbg !762 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !765, metadata !502), !dbg !766
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %4, metadata !767, metadata !502), !dbg !768
  %5 = load i8*, i8** %3, align 4, !dbg !768
  %6 = bitcast i8* %5 to %struct._MIDI_FILE*, !dbg !768
  store %struct._MIDI_FILE* %6, %struct._MIDI_FILE** %4, align 4, !dbg !768
  %7 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !769
  %8 = icmp ne %struct._MIDI_FILE* %7, null, !dbg !769
  br i1 %8, label %10, label %9, !dbg !771

; <label>:9:                                      ; preds = %1
  store i32 384, i32* %2, align 4, !dbg !772
  br label %16, !dbg !772

; <label>:10:                                     ; preds = %1
  %11 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !773
  %12 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %11, i32 0, i32 2, !dbg !774
  %13 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %12, i32 0, i32 3, !dbg !775
  %14 = load i16, i16* %13, align 4, !dbg !775
  %15 = zext i16 %14 to i32, !dbg !776
  store i32 %15, i32* %2, align 4, !dbg !777
  br label %16, !dbg !777

; <label>:16:                                     ; preds = %10, %9
  %17 = load i32, i32* %2, align 4, !dbg !778
  ret i32 %17, !dbg !778
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiFileSetVersion(i8*, i32) #0 !dbg !779 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !780, metadata !502), !dbg !781
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !782, metadata !502), !dbg !783
  call void @llvm.dbg.declare(metadata i32* %6, metadata !784, metadata !502), !dbg !785
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %7, metadata !786, metadata !502), !dbg !787
  %8 = load i8*, i8** %4, align 4, !dbg !787
  %9 = bitcast i8* %8 to %struct._MIDI_FILE*, !dbg !787
  store %struct._MIDI_FILE* %9, %struct._MIDI_FILE** %7, align 4, !dbg !787
  %10 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %7, align 4, !dbg !788
  %11 = icmp ne %struct._MIDI_FILE* %10, null, !dbg !788
  br i1 %11, label %13, label %12, !dbg !790

; <label>:12:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !791
  br label %32, !dbg !791

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %5, align 4, !dbg !792
  %15 = icmp slt i32 %14, 0, !dbg !794
  br i1 %15, label %19, label %16, !dbg !795

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %5, align 4, !dbg !796
  %18 = icmp sgt i32 %17, 2, !dbg !797
  br i1 %18, label %19, label %20, !dbg !798

; <label>:19:                                     ; preds = %16, %13
  store i32 1, i32* %3, align 4, !dbg !799
  br label %32, !dbg !799

; <label>:20:                                     ; preds = %16
  %21 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %7, align 4, !dbg !800
  %22 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %21, i32 0, i32 2, !dbg !801
  %23 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %22, i32 0, i32 1, !dbg !802
  %24 = load i16, i16* %23, align 4, !dbg !802
  %25 = zext i16 %24 to i32, !dbg !800
  store i32 %25, i32* %6, align 4, !dbg !803
  %26 = load i32, i32* %5, align 4, !dbg !804
  %27 = trunc i32 %26 to i16, !dbg !805
  %28 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %7, align 4, !dbg !806
  %29 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %28, i32 0, i32 2, !dbg !807
  %30 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %29, i32 0, i32 1, !dbg !808
  store i16 %27, i16* %30, align 4, !dbg !809
  %31 = load i32, i32* %6, align 4, !dbg !810
  store i32 %31, i32* %3, align 4, !dbg !811
  br label %32, !dbg !811

; <label>:32:                                     ; preds = %20, %19, %12
  %33 = load i32, i32* %3, align 4, !dbg !812
  ret i32 %33, !dbg !812
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiFileGetVersion(i8*) #0 !dbg !813 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !814, metadata !502), !dbg !815
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %4, metadata !816, metadata !502), !dbg !817
  %5 = load i8*, i8** %3, align 4, !dbg !817
  %6 = bitcast i8* %5 to %struct._MIDI_FILE*, !dbg !817
  store %struct._MIDI_FILE* %6, %struct._MIDI_FILE** %4, align 4, !dbg !817
  %7 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !818
  %8 = icmp ne %struct._MIDI_FILE* %7, null, !dbg !818
  br i1 %8, label %10, label %9, !dbg !820

; <label>:9:                                      ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !821
  br label %16, !dbg !821

; <label>:10:                                     ; preds = %1
  %11 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !822
  %12 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %11, i32 0, i32 2, !dbg !823
  %13 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %12, i32 0, i32 1, !dbg !824
  %14 = load i16, i16* %13, align 4, !dbg !824
  %15 = zext i16 %14 to i32, !dbg !822
  store i32 %15, i32* %2, align 4, !dbg !825
  br label %16, !dbg !825

; <label>:16:                                     ; preds = %10, %9
  %17 = load i32, i32* %2, align 4, !dbg !826
  ret i32 %17, !dbg !826
}

; Function Attrs: noinline nounwind optnone
define internal i8* @midiFileOpen(i8*) #0 !dbg !827 {
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca %struct._IO_FILE*, align 4
  %5 = alloca %struct._MIDI_FILE*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !830, metadata !502), !dbg !831
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !832, metadata !502), !dbg !833
  %12 = load i8*, i8** %3, align 4, !dbg !834
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)), !dbg !835
  store %struct._IO_FILE* %13, %struct._IO_FILE** %4, align 4, !dbg !833
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %5, metadata !836, metadata !502), !dbg !837
  store %struct._MIDI_FILE* null, %struct._MIDI_FILE** %5, align 4, !dbg !837
  call void @llvm.dbg.declare(metadata i8** %6, metadata !838, metadata !502), !dbg !839
  call void @llvm.dbg.declare(metadata i32* %7, metadata !840, metadata !502), !dbg !841
  store i32 0, i32* %7, align 4, !dbg !841
  call void @llvm.dbg.declare(metadata i32* %8, metadata !842, metadata !502), !dbg !843
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4, !dbg !844
  %15 = icmp ne %struct._IO_FILE* %14, null, !dbg !844
  br i1 %15, label %16, label %236, !dbg !846

; <label>:16:                                     ; preds = %1
  %17 = call noalias i8* @malloc(i32 139292) #7, !dbg !847
  %18 = bitcast i8* %17 to %struct._MIDI_FILE*, !dbg !850
  store %struct._MIDI_FILE* %18, %struct._MIDI_FILE** %5, align 4, !dbg !851
  %19 = icmp ne %struct._MIDI_FILE* %18, null, !dbg !851
  br i1 %19, label %20, label %233, !dbg !852

; <label>:20:                                     ; preds = %16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4, !dbg !853
  %22 = call i32 @fseek(%struct._IO_FILE* %21, i32 0, i32 2), !dbg !855
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4, !dbg !856
  %24 = call i32 @ftell(%struct._IO_FILE* %23), !dbg !857
  store i32 %24, i32* %8, align 4, !dbg !858
  %25 = load i32, i32* %8, align 4, !dbg !859
  %26 = call noalias i8* @malloc(i32 %25) #7, !dbg !861
  %27 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !862
  %28 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %27, i32 0, i32 3, !dbg !863
  store i8* %26, i8** %28, align 4, !dbg !864
  %29 = icmp ne i8* %26, null, !dbg !864
  br i1 %29, label %30, label %232, !dbg !865

; <label>:30:                                     ; preds = %20
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4, !dbg !866
  %32 = call i32 @fseek(%struct._IO_FILE* %31, i32 0, i32 0), !dbg !868
  %33 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !869
  %34 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %33, i32 0, i32 3, !dbg !870
  %35 = load i8*, i8** %34, align 4, !dbg !870
  %36 = load i32, i32* %8, align 4, !dbg !871
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4, !dbg !872
  %38 = call i32 @fread(i8* %35, i32 1, i32 %36, %struct._IO_FILE* %37), !dbg !873
  %39 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !874
  %40 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %39, i32 0, i32 3, !dbg !875
  %41 = load i8*, i8** %40, align 4, !dbg !875
  store i8* %41, i8** %6, align 4, !dbg !876
  %42 = load i8*, i8** %6, align 4, !dbg !877
  %43 = getelementptr inbounds i8, i8* %42, i32 0, !dbg !879
  %44 = load i8, i8* %43, align 1, !dbg !880
  %45 = zext i8 %44 to i32, !dbg !880
  %46 = icmp eq i32 %45, 77, !dbg !881
  br i1 %46, label %47, label %231, !dbg !882

; <label>:47:                                     ; preds = %30
  %48 = load i8*, i8** %6, align 4, !dbg !883
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !884
  %50 = load i8, i8* %49, align 1, !dbg !885
  %51 = zext i8 %50 to i32, !dbg !885
  %52 = icmp eq i32 %51, 84, !dbg !886
  br i1 %52, label %53, label %231, !dbg !887

; <label>:53:                                     ; preds = %47
  %54 = load i8*, i8** %6, align 4, !dbg !888
  %55 = getelementptr inbounds i8, i8* %54, i32 2, !dbg !889
  %56 = load i8, i8* %55, align 1, !dbg !890
  %57 = zext i8 %56 to i32, !dbg !890
  %58 = icmp eq i32 %57, 104, !dbg !891
  br i1 %58, label %59, label %231, !dbg !892

; <label>:59:                                     ; preds = %53
  %60 = load i8*, i8** %6, align 4, !dbg !893
  %61 = getelementptr inbounds i8, i8* %60, i32 3, !dbg !894
  %62 = load i8, i8* %61, align 1, !dbg !895
  %63 = zext i8 %62 to i32, !dbg !895
  %64 = icmp eq i32 %63, 100, !dbg !896
  br i1 %64, label %65, label %231, !dbg !897

; <label>:65:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %9, metadata !898, metadata !502), !dbg !900
  call void @llvm.dbg.declare(metadata i16* %10, metadata !901, metadata !502), !dbg !902
  call void @llvm.dbg.declare(metadata i32* %11, metadata !903, metadata !502), !dbg !904
  %66 = load i8*, i8** %6, align 4, !dbg !905
  %67 = getelementptr inbounds i8, i8* %66, i32 4, !dbg !906
  %68 = bitcast i8* %67 to i32*, !dbg !907
  %69 = load i32, i32* %68, align 4, !dbg !907
  store i32 %69, i32* %9, align 4, !dbg !908
  %70 = load i32, i32* %9, align 4, !dbg !909
  %71 = lshr i32 %70, 24, !dbg !909
  %72 = load i32, i32* %9, align 4, !dbg !909
  %73 = lshr i32 %72, 8, !dbg !909
  %74 = and i32 %73, 65280, !dbg !909
  %75 = or i32 %71, %74, !dbg !909
  %76 = load i32, i32* %9, align 4, !dbg !909
  %77 = shl i32 %76, 8, !dbg !909
  %78 = and i32 %77, 16711680, !dbg !909
  %79 = or i32 %75, %78, !dbg !909
  %80 = load i32, i32* %9, align 4, !dbg !909
  %81 = shl i32 %80, 24, !dbg !909
  %82 = or i32 %79, %81, !dbg !909
  %83 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !910
  %84 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %83, i32 0, i32 2, !dbg !911
  %85 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %84, i32 0, i32 0, !dbg !912
  store i32 %82, i32* %85, align 4, !dbg !913
  %86 = load i8*, i8** %6, align 4, !dbg !914
  %87 = getelementptr inbounds i8, i8* %86, i32 8, !dbg !915
  %88 = bitcast i8* %87 to i16*, !dbg !916
  %89 = load i16, i16* %88, align 2, !dbg !916
  store i16 %89, i16* %10, align 2, !dbg !917
  %90 = load i16, i16* %10, align 2, !dbg !918
  %91 = zext i16 %90 to i32, !dbg !918
  %92 = ashr i32 %91, 8, !dbg !918
  %93 = load i16, i16* %10, align 2, !dbg !918
  %94 = zext i16 %93 to i32, !dbg !918
  %95 = shl i32 %94, 8, !dbg !918
  %96 = or i32 %92, %95, !dbg !918
  %97 = trunc i32 %96 to i16, !dbg !918
  %98 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !919
  %99 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %98, i32 0, i32 2, !dbg !920
  %100 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %99, i32 0, i32 1, !dbg !921
  store i16 %97, i16* %100, align 4, !dbg !922
  %101 = load i8*, i8** %6, align 4, !dbg !923
  %102 = getelementptr inbounds i8, i8* %101, i32 10, !dbg !924
  %103 = bitcast i8* %102 to i16*, !dbg !925
  %104 = load i16, i16* %103, align 2, !dbg !925
  store i16 %104, i16* %10, align 2, !dbg !926
  %105 = load i16, i16* %10, align 2, !dbg !927
  %106 = zext i16 %105 to i32, !dbg !927
  %107 = ashr i32 %106, 8, !dbg !927
  %108 = load i16, i16* %10, align 2, !dbg !927
  %109 = zext i16 %108 to i32, !dbg !927
  %110 = shl i32 %109, 8, !dbg !927
  %111 = or i32 %107, %110, !dbg !927
  %112 = trunc i32 %111 to i16, !dbg !927
  %113 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !928
  %114 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %113, i32 0, i32 2, !dbg !929
  %115 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %114, i32 0, i32 2, !dbg !930
  store i16 %112, i16* %115, align 2, !dbg !931
  %116 = load i8*, i8** %6, align 4, !dbg !932
  %117 = getelementptr inbounds i8, i8* %116, i32 12, !dbg !933
  %118 = bitcast i8* %117 to i16*, !dbg !934
  %119 = load i16, i16* %118, align 2, !dbg !934
  store i16 %119, i16* %10, align 2, !dbg !935
  %120 = load i16, i16* %10, align 2, !dbg !936
  %121 = zext i16 %120 to i32, !dbg !936
  %122 = ashr i32 %121, 8, !dbg !936
  %123 = load i16, i16* %10, align 2, !dbg !936
  %124 = zext i16 %123 to i32, !dbg !936
  %125 = shl i32 %124, 8, !dbg !936
  %126 = or i32 %122, %125, !dbg !936
  %127 = trunc i32 %126 to i16, !dbg !936
  %128 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !937
  %129 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %128, i32 0, i32 2, !dbg !938
  %130 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %129, i32 0, i32 3, !dbg !939
  store i16 %127, i16* %130, align 4, !dbg !940
  %131 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !941
  %132 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %131, i32 0, i32 2, !dbg !942
  %133 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %132, i32 0, i32 0, !dbg !943
  %134 = load i32, i32* %133, align 4, !dbg !943
  %135 = add i32 %134, 8, !dbg !944
  %136 = load i8*, i8** %6, align 4, !dbg !945
  %137 = getelementptr inbounds i8, i8* %136, i32 %135, !dbg !945
  store i8* %137, i8** %6, align 4, !dbg !945
  store i32 0, i32* %11, align 4, !dbg !946
  br label %138, !dbg !948

; <label>:138:                                    ; preds = %152, %65
  %139 = load i32, i32* %11, align 4, !dbg !949
  %140 = icmp slt i32 %139, 256, !dbg !951
  br i1 %140, label %141, label %155, !dbg !952

; <label>:141:                                    ; preds = %138
  %142 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !953
  %143 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %142, i32 0, i32 5, !dbg !955
  %144 = load i32, i32* %11, align 4, !dbg !956
  %145 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %143, i32 0, i32 %144, !dbg !953
  %146 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %145, i32 0, i32 3, !dbg !957
  store i32 0, i32* %146, align 4, !dbg !958
  %147 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !959
  %148 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %147, i32 0, i32 5, !dbg !960
  %149 = load i32, i32* %11, align 4, !dbg !961
  %150 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %148, i32 0, i32 %149, !dbg !959
  %151 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %150, i32 0, i32 8, !dbg !962
  store i8 0, i8* %151, align 1, !dbg !963
  br label %152, !dbg !964

; <label>:152:                                    ; preds = %141
  %153 = load i32, i32* %11, align 4, !dbg !965
  %154 = add nsw i32 %153, 1, !dbg !965
  store i32 %154, i32* %11, align 4, !dbg !965
  br label %138, !dbg !966, !llvm.loop !967

; <label>:155:                                    ; preds = %138
  store i32 0, i32* %11, align 4, !dbg !969
  br label %156, !dbg !971

; <label>:156:                                    ; preds = %223, %155
  %157 = load i32, i32* %11, align 4, !dbg !972
  %158 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !974
  %159 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %158, i32 0, i32 2, !dbg !975
  %160 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %159, i32 0, i32 2, !dbg !976
  %161 = load i16, i16* %160, align 2, !dbg !976
  %162 = zext i16 %161 to i32, !dbg !974
  %163 = icmp slt i32 %157, %162, !dbg !977
  br i1 %163, label %164, label %226, !dbg !978

; <label>:164:                                    ; preds = %156
  %165 = load i8*, i8** %6, align 4, !dbg !979
  %166 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !981
  %167 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %166, i32 0, i32 5, !dbg !982
  %168 = load i32, i32* %11, align 4, !dbg !983
  %169 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %167, i32 0, i32 %168, !dbg !981
  %170 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %169, i32 0, i32 1, !dbg !984
  store i8* %165, i8** %170, align 4, !dbg !985
  %171 = load i8*, i8** %6, align 4, !dbg !986
  %172 = getelementptr inbounds i8, i8* %171, i32 8, !dbg !987
  %173 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !988
  %174 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %173, i32 0, i32 5, !dbg !989
  %175 = load i32, i32* %11, align 4, !dbg !990
  %176 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %174, i32 0, i32 %175, !dbg !988
  %177 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %176, i32 0, i32 0, !dbg !991
  store i8* %172, i8** %177, align 4, !dbg !992
  %178 = load i8*, i8** %6, align 4, !dbg !993
  %179 = getelementptr inbounds i8, i8* %178, i32 4, !dbg !994
  %180 = bitcast i8* %179 to i32*, !dbg !995
  %181 = load i32, i32* %180, align 4, !dbg !995
  store i32 %181, i32* %9, align 4, !dbg !996
  %182 = load i32, i32* %9, align 4, !dbg !997
  %183 = lshr i32 %182, 24, !dbg !997
  %184 = load i32, i32* %9, align 4, !dbg !997
  %185 = lshr i32 %184, 8, !dbg !997
  %186 = and i32 %185, 65280, !dbg !997
  %187 = or i32 %183, %186, !dbg !997
  %188 = load i32, i32* %9, align 4, !dbg !997
  %189 = shl i32 %188, 8, !dbg !997
  %190 = and i32 %189, 16711680, !dbg !997
  %191 = or i32 %187, %190, !dbg !997
  %192 = load i32, i32* %9, align 4, !dbg !997
  %193 = shl i32 %192, 24, !dbg !997
  %194 = or i32 %191, %193, !dbg !997
  %195 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !998
  %196 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %195, i32 0, i32 5, !dbg !999
  %197 = load i32, i32* %11, align 4, !dbg !1000
  %198 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %196, i32 0, i32 %197, !dbg !998
  %199 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %198, i32 0, i32 5, !dbg !1001
  store i32 %194, i32* %199, align 4, !dbg !1002
  %200 = load i8*, i8** %6, align 4, !dbg !1003
  %201 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !1004
  %202 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %201, i32 0, i32 5, !dbg !1005
  %203 = load i32, i32* %11, align 4, !dbg !1006
  %204 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %202, i32 0, i32 %203, !dbg !1004
  %205 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %204, i32 0, i32 5, !dbg !1007
  %206 = load i32, i32* %205, align 4, !dbg !1007
  %207 = getelementptr inbounds i8, i8* %200, i32 %206, !dbg !1008
  %208 = getelementptr inbounds i8, i8* %207, i32 8, !dbg !1009
  %209 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !1010
  %210 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %209, i32 0, i32 5, !dbg !1011
  %211 = load i32, i32* %11, align 4, !dbg !1012
  %212 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %210, i32 0, i32 %211, !dbg !1010
  %213 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %212, i32 0, i32 2, !dbg !1013
  store i8* %208, i8** %213, align 4, !dbg !1014
  %214 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !1015
  %215 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %214, i32 0, i32 5, !dbg !1016
  %216 = load i32, i32* %11, align 4, !dbg !1017
  %217 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %215, i32 0, i32 %216, !dbg !1015
  %218 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %217, i32 0, i32 5, !dbg !1018
  %219 = load i32, i32* %218, align 4, !dbg !1018
  %220 = add i32 %219, 8, !dbg !1019
  %221 = load i8*, i8** %6, align 4, !dbg !1020
  %222 = getelementptr inbounds i8, i8* %221, i32 %220, !dbg !1020
  store i8* %222, i8** %6, align 4, !dbg !1020
  br label %223, !dbg !1021

; <label>:223:                                    ; preds = %164
  %224 = load i32, i32* %11, align 4, !dbg !1022
  %225 = add nsw i32 %224, 1, !dbg !1022
  store i32 %225, i32* %11, align 4, !dbg !1022
  br label %156, !dbg !1023, !llvm.loop !1024

; <label>:226:                                    ; preds = %156
  %227 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !1026
  %228 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %227, i32 0, i32 1, !dbg !1027
  store i32 0, i32* %228, align 4, !dbg !1028
  %229 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !1029
  %230 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %229, i32 0, i32 0, !dbg !1030
  store %struct._IO_FILE* null, %struct._IO_FILE** %230, align 4, !dbg !1031
  store i32 1, i32* %7, align 4, !dbg !1032
  br label %231, !dbg !1033

; <label>:231:                                    ; preds = %226, %59, %53, %47, %30
  br label %232, !dbg !1034

; <label>:232:                                    ; preds = %231, %20
  br label %233, !dbg !1035

; <label>:233:                                    ; preds = %232, %16
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 4, !dbg !1036
  %235 = call i32 @fclose(%struct._IO_FILE* %234), !dbg !1037
  br label %236, !dbg !1038

; <label>:236:                                    ; preds = %233, %1
  %237 = load i32, i32* %7, align 4, !dbg !1039
  %238 = icmp ne i32 %237, 0, !dbg !1039
  br i1 %238, label %246, label %239, !dbg !1041

; <label>:239:                                    ; preds = %236
  %240 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !1042
  %241 = icmp ne %struct._MIDI_FILE* %240, null, !dbg !1042
  br i1 %241, label %242, label %245, !dbg !1045

; <label>:242:                                    ; preds = %239
  %243 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !1046
  %244 = bitcast %struct._MIDI_FILE* %243 to i8*, !dbg !1047
  call void @free(i8* %244) #7, !dbg !1048
  br label %245, !dbg !1048

; <label>:245:                                    ; preds = %242, %239
  store i8* null, i8** %2, align 4, !dbg !1049
  br label %249, !dbg !1049

; <label>:246:                                    ; preds = %236
  %247 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !1050
  %248 = bitcast %struct._MIDI_FILE* %247 to i8*, !dbg !1051
  store i8* %248, i8** %2, align 4, !dbg !1052
  br label %249, !dbg !1052

; <label>:249:                                    ; preds = %246, %245
  %250 = load i8*, i8** %2, align 4, !dbg !1053
  ret i8* %250, !dbg !1053
}

declare i32 @fseek(%struct._IO_FILE*, i32, i32) #3

declare i32 @ftell(%struct._IO_FILE*) #3

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone
define internal i32 @midiFileFlushTrack(i8*, i32, i32, i32) #0 !dbg !1054 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 4
  %12 = alloca %struct.MIDI_END_POINT*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1057, metadata !502), !dbg !1058
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1059, metadata !502), !dbg !1060
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1061, metadata !502), !dbg !1062
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1063, metadata !502), !dbg !1064
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1065, metadata !502), !dbg !1066
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1067, metadata !502), !dbg !1068
  call void @llvm.dbg.declare(metadata %struct.MIDI_END_POINT** %12, metadata !1069, metadata !502), !dbg !1070
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1071, metadata !502), !dbg !1072
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1073, metadata !502), !dbg !1074
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1075, metadata !502), !dbg !1076
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1077, metadata !502), !dbg !1078
  store i32 1, i32* %16, align 4, !dbg !1078
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %17, metadata !1079, metadata !502), !dbg !1080
  %18 = load i8*, i8** %6, align 4, !dbg !1080
  %19 = bitcast i8* %18 to %struct._MIDI_FILE*, !dbg !1080
  store %struct._MIDI_FILE* %19, %struct._MIDI_FILE** %17, align 4, !dbg !1080
  %20 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1081
  %21 = icmp ne %struct._MIDI_FILE* %20, null, !dbg !1081
  br i1 %21, label %23, label %22, !dbg !1083

; <label>:22:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !1084
  br label %224, !dbg !1084

; <label>:23:                                     ; preds = %4
  %24 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1085
  %25 = load i32, i32* %7, align 4, !dbg !1087
  %26 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %24, i32 %25), !dbg !1088
  %27 = icmp ne i32 %26, 0, !dbg !1088
  br i1 %27, label %29, label %28, !dbg !1089

; <label>:28:                                     ; preds = %23
  store i32 0, i32* %5, align 4, !dbg !1090
  br label %224, !dbg !1090

; <label>:29:                                     ; preds = %23
  store i32 64, i32* %10, align 4, !dbg !1091
  %30 = load i32, i32* %10, align 4, !dbg !1092
  %31 = mul i32 %30, 8, !dbg !1093
  %32 = call noalias i8* @malloc(i32 %31) #7, !dbg !1094
  %33 = bitcast i8* %32 to %struct.MIDI_END_POINT*, !dbg !1095
  store %struct.MIDI_END_POINT* %33, %struct.MIDI_END_POINT** %12, align 4, !dbg !1096
  store i32 0, i32* %15, align 4, !dbg !1097
  store i32 0, i32* %14, align 4, !dbg !1098
  br label %34, !dbg !1100

; <label>:34:                                     ; preds = %71, %29
  %35 = load i32, i32* %14, align 4, !dbg !1101
  %36 = load i32, i32* %10, align 4, !dbg !1103
  %37 = icmp slt i32 %35, %36, !dbg !1104
  br i1 %37, label %38, label %74, !dbg !1105

; <label>:38:                                     ; preds = %34
  %39 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1106
  %40 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %39, i32 0, i32 5, !dbg !1108
  %41 = load i32, i32* %7, align 4, !dbg !1109
  %42 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %40, i32 0, i32 %41, !dbg !1106
  %43 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %42, i32 0, i32 9, !dbg !1110
  %44 = load i32, i32* %14, align 4, !dbg !1111
  %45 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %43, i32 0, i32 %44, !dbg !1106
  %46 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %45, i32 0, i32 2, !dbg !1112
  %47 = load i8, i8* %46, align 2, !dbg !1112
  %48 = icmp ne i8 %47, 0, !dbg !1106
  br i1 %48, label %49, label %70, !dbg !1113

; <label>:49:                                     ; preds = %38
  %50 = load i32, i32* %14, align 4, !dbg !1114
  %51 = load %struct.MIDI_END_POINT*, %struct.MIDI_END_POINT** %12, align 4, !dbg !1116
  %52 = load i32, i32* %15, align 4, !dbg !1117
  %53 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %51, i32 %52, !dbg !1116
  %54 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %53, i32 0, i32 0, !dbg !1118
  store i32 %50, i32* %54, align 4, !dbg !1119
  %55 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1120
  %56 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %55, i32 0, i32 5, !dbg !1121
  %57 = load i32, i32* %7, align 4, !dbg !1122
  %58 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %56, i32 0, i32 %57, !dbg !1120
  %59 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %58, i32 0, i32 9, !dbg !1123
  %60 = load i32, i32* %14, align 4, !dbg !1124
  %61 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %59, i32 0, i32 %60, !dbg !1120
  %62 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %61, i32 0, i32 4, !dbg !1125
  %63 = load i32, i32* %62, align 4, !dbg !1125
  %64 = load %struct.MIDI_END_POINT*, %struct.MIDI_END_POINT** %12, align 4, !dbg !1126
  %65 = load i32, i32* %15, align 4, !dbg !1127
  %66 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %64, i32 %65, !dbg !1126
  %67 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %66, i32 0, i32 1, !dbg !1128
  store i32 %63, i32* %67, align 4, !dbg !1129
  %68 = load i32, i32* %15, align 4, !dbg !1130
  %69 = add nsw i32 %68, 1, !dbg !1130
  store i32 %69, i32* %15, align 4, !dbg !1130
  br label %70, !dbg !1131

; <label>:70:                                     ; preds = %49, %38
  br label %71, !dbg !1112

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %14, align 4, !dbg !1132
  %73 = add nsw i32 %72, 1, !dbg !1132
  store i32 %73, i32* %14, align 4, !dbg !1132
  br label %34, !dbg !1133, !llvm.loop !1134

; <label>:74:                                     ; preds = %34
  %75 = load i32, i32* %8, align 4, !dbg !1136
  %76 = icmp ne i32 %75, 0, !dbg !1136
  br i1 %76, label %77, label %95, !dbg !1138

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %15, align 4, !dbg !1139
  %79 = icmp ne i32 %78, 0, !dbg !1139
  br i1 %79, label %80, label %87, !dbg !1142

; <label>:80:                                     ; preds = %77
  %81 = load %struct.MIDI_END_POINT*, %struct.MIDI_END_POINT** %12, align 4, !dbg !1143
  %82 = load i32, i32* %15, align 4, !dbg !1144
  %83 = sub nsw i32 %82, 1, !dbg !1145
  %84 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %81, i32 %83, !dbg !1143
  %85 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %84, i32 0, i32 1, !dbg !1146
  %86 = load i32, i32* %85, align 4, !dbg !1146
  store i32 %86, i32* %9, align 4, !dbg !1147
  br label %94, !dbg !1148

; <label>:87:                                     ; preds = %77
  %88 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1149
  %89 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %88, i32 0, i32 5, !dbg !1150
  %90 = load i32, i32* %7, align 4, !dbg !1151
  %91 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %89, i32 0, i32 %90, !dbg !1149
  %92 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %91, i32 0, i32 3, !dbg !1152
  %93 = load i32, i32* %92, align 4, !dbg !1152
  store i32 %93, i32* %9, align 4, !dbg !1153
  br label %94

; <label>:94:                                     ; preds = %87, %80
  br label %95, !dbg !1154

; <label>:95:                                     ; preds = %94, %74
  %96 = load i32, i32* %15, align 4, !dbg !1155
  %97 = icmp ne i32 %96, 0, !dbg !1155
  br i1 %97, label %98, label %208, !dbg !1157

; <label>:98:                                     ; preds = %95
  %99 = load %struct.MIDI_END_POINT*, %struct.MIDI_END_POINT** %12, align 4, !dbg !1158
  %100 = bitcast %struct.MIDI_END_POINT* %99 to i8*, !dbg !1158
  %101 = load i32, i32* %15, align 4, !dbg !1160
  call void @qsort(i8* %100, i32 %101, i32 8, i32 (i8*, i8*)* @qs_cmp_pEndPoints), !dbg !1161
  store i32 0, i32* %14, align 4, !dbg !1162
  br label %102, !dbg !1163

; <label>:102:                                    ; preds = %126, %98
  %103 = load i32, i32* %9, align 4, !dbg !1164
  %104 = load %struct.MIDI_END_POINT*, %struct.MIDI_END_POINT** %12, align 4, !dbg !1165
  %105 = load i32, i32* %14, align 4, !dbg !1166
  %106 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %104, i32 %105, !dbg !1165
  %107 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %106, i32 0, i32 1, !dbg !1167
  %108 = load i32, i32* %107, align 4, !dbg !1167
  %109 = icmp uge i32 %103, %108, !dbg !1168
  br i1 %109, label %113, label %110, !dbg !1169

; <label>:110:                                    ; preds = %102
  %111 = load i32, i32* %8, align 4, !dbg !1170
  %112 = icmp ne i32 %111, 0, !dbg !1170
  br i1 %112, label %113, label %117, !dbg !1171

; <label>:113:                                    ; preds = %110, %102
  %114 = load i32, i32* %14, align 4, !dbg !1172
  %115 = load i32, i32* %15, align 4, !dbg !1173
  %116 = icmp slt i32 %114, %115, !dbg !1174
  br label %117

; <label>:117:                                    ; preds = %113, %110
  %118 = phi i1 [ false, %110 ], [ %116, %113 ]
  br i1 %118, label %119, label %207, !dbg !1163

; <label>:119:                                    ; preds = %117
  %120 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1175
  %121 = load i32, i32* %7, align 4, !dbg !1177
  %122 = call i8* @_midiGetPtr(%struct._MIDI_FILE* %120, i32 %121, i32 32), !dbg !1178
  store i8* %122, i8** %11, align 4, !dbg !1179
  %123 = load i8*, i8** %11, align 4, !dbg !1180
  %124 = icmp ne i8* %123, null, !dbg !1180
  br i1 %124, label %126, label %125, !dbg !1182

; <label>:125:                                    ; preds = %119
  store i32 0, i32* %5, align 4, !dbg !1183
  br label %224, !dbg !1183

; <label>:126:                                    ; preds = %119
  %127 = load %struct.MIDI_END_POINT*, %struct.MIDI_END_POINT** %12, align 4, !dbg !1184
  %128 = load i32, i32* %14, align 4, !dbg !1185
  %129 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %127, i32 %128, !dbg !1184
  %130 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %129, i32 0, i32 0, !dbg !1186
  %131 = load i32, i32* %130, align 4, !dbg !1186
  store i32 %131, i32* %13, align 4, !dbg !1187
  %132 = load i8*, i8** %11, align 4, !dbg !1188
  %133 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1189
  %134 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %133, i32 0, i32 5, !dbg !1190
  %135 = load i32, i32* %7, align 4, !dbg !1191
  %136 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %134, i32 0, i32 %135, !dbg !1189
  %137 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %136, i32 0, i32 9, !dbg !1192
  %138 = load i32, i32* %13, align 4, !dbg !1193
  %139 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %137, i32 0, i32 %138, !dbg !1189
  %140 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %139, i32 0, i32 4, !dbg !1194
  %141 = load i32, i32* %140, align 4, !dbg !1194
  %142 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1195
  %143 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %142, i32 0, i32 5, !dbg !1196
  %144 = load i32, i32* %7, align 4, !dbg !1197
  %145 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %143, i32 0, i32 %144, !dbg !1195
  %146 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %145, i32 0, i32 3, !dbg !1198
  %147 = load i32, i32* %146, align 4, !dbg !1198
  %148 = sub i32 %141, %147, !dbg !1199
  %149 = call i8* @_midiWriteVarLen(i8* %132, i32 %148), !dbg !1200
  store i8* %149, i8** %11, align 4, !dbg !1201
  %150 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1202
  %151 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %150, i32 0, i32 5, !dbg !1203
  %152 = load i32, i32* %7, align 4, !dbg !1204
  %153 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %151, i32 0, i32 %152, !dbg !1202
  %154 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %153, i32 0, i32 9, !dbg !1205
  %155 = load i32, i32* %13, align 4, !dbg !1206
  %156 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %154, i32 0, i32 %155, !dbg !1202
  %157 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %156, i32 0, i32 1, !dbg !1207
  %158 = load i8, i8* %157, align 1, !dbg !1207
  %159 = zext i8 %158 to i32, !dbg !1202
  %160 = or i32 128, %159, !dbg !1208
  %161 = trunc i32 %160 to i8, !dbg !1209
  %162 = load i8*, i8** %11, align 4, !dbg !1210
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !1210
  store i8* %163, i8** %11, align 4, !dbg !1210
  store i8 %161, i8* %162, align 1, !dbg !1211
  %164 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1212
  %165 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %164, i32 0, i32 5, !dbg !1213
  %166 = load i32, i32* %7, align 4, !dbg !1214
  %167 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %165, i32 0, i32 %166, !dbg !1212
  %168 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %167, i32 0, i32 9, !dbg !1215
  %169 = load i32, i32* %13, align 4, !dbg !1216
  %170 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %168, i32 0, i32 %169, !dbg !1212
  %171 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %170, i32 0, i32 0, !dbg !1217
  %172 = load i8, i8* %171, align 4, !dbg !1217
  %173 = load i8*, i8** %11, align 4, !dbg !1218
  %174 = getelementptr inbounds i8, i8* %173, i32 1, !dbg !1218
  store i8* %174, i8** %11, align 4, !dbg !1218
  store i8 %172, i8* %173, align 1, !dbg !1219
  %175 = load i8*, i8** %11, align 4, !dbg !1220
  %176 = getelementptr inbounds i8, i8* %175, i32 1, !dbg !1220
  store i8* %176, i8** %11, align 4, !dbg !1220
  store i8 0, i8* %175, align 1, !dbg !1221
  %177 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1222
  %178 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %177, i32 0, i32 5, !dbg !1223
  %179 = load i32, i32* %7, align 4, !dbg !1224
  %180 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %178, i32 0, i32 %179, !dbg !1222
  %181 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %180, i32 0, i32 9, !dbg !1225
  %182 = load i32, i32* %13, align 4, !dbg !1226
  %183 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %181, i32 0, i32 %182, !dbg !1222
  %184 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %183, i32 0, i32 2, !dbg !1227
  store i8 0, i8* %184, align 2, !dbg !1228
  %185 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1229
  %186 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %185, i32 0, i32 5, !dbg !1230
  %187 = load i32, i32* %7, align 4, !dbg !1231
  %188 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %186, i32 0, i32 %187, !dbg !1229
  %189 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %188, i32 0, i32 9, !dbg !1232
  %190 = load i32, i32* %13, align 4, !dbg !1233
  %191 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %189, i32 0, i32 %190, !dbg !1229
  %192 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %191, i32 0, i32 4, !dbg !1234
  %193 = load i32, i32* %192, align 4, !dbg !1234
  %194 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1235
  %195 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %194, i32 0, i32 5, !dbg !1236
  %196 = load i32, i32* %7, align 4, !dbg !1237
  %197 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %195, i32 0, i32 %196, !dbg !1235
  %198 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %197, i32 0, i32 3, !dbg !1238
  store i32 %193, i32* %198, align 4, !dbg !1239
  %199 = load i8*, i8** %11, align 4, !dbg !1240
  %200 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1241
  %201 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %200, i32 0, i32 5, !dbg !1242
  %202 = load i32, i32* %7, align 4, !dbg !1243
  %203 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %201, i32 0, i32 %202, !dbg !1241
  %204 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %203, i32 0, i32 0, !dbg !1244
  store i8* %199, i8** %204, align 4, !dbg !1245
  %205 = load i32, i32* %14, align 4, !dbg !1246
  %206 = add nsw i32 %205, 1, !dbg !1246
  store i32 %206, i32* %14, align 4, !dbg !1246
  store i32 0, i32* %16, align 4, !dbg !1247
  br label %102, !dbg !1163, !llvm.loop !1248

; <label>:207:                                    ; preds = %117
  br label %208, !dbg !1250

; <label>:208:                                    ; preds = %207, %95
  %209 = load %struct.MIDI_END_POINT*, %struct.MIDI_END_POINT** %12, align 4, !dbg !1251
  %210 = bitcast %struct.MIDI_END_POINT* %209 to i8*, !dbg !1252
  call void @free(i8* %210) #7, !dbg !1253
  %211 = load i32, i32* %9, align 4, !dbg !1254
  %212 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1255
  %213 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %212, i32 0, i32 5, !dbg !1256
  %214 = load i32, i32* %7, align 4, !dbg !1257
  %215 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %213, i32 0, i32 %214, !dbg !1255
  %216 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %215, i32 0, i32 3, !dbg !1258
  %217 = load i32, i32* %216, align 4, !dbg !1258
  %218 = sub i32 %211, %217, !dbg !1259
  %219 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1260
  %220 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %219, i32 0, i32 5, !dbg !1261
  %221 = load i32, i32* %7, align 4, !dbg !1262
  %222 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %220, i32 0, i32 %221, !dbg !1260
  %223 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %222, i32 0, i32 4, !dbg !1263
  store i32 %218, i32* %223, align 4, !dbg !1264
  store i32 1, i32* %5, align 4, !dbg !1265
  br label %224, !dbg !1265

; <label>:224:                                    ; preds = %208, %125, %28, %22
  %225 = load i32, i32* %5, align 4, !dbg !1266
  ret i32 %225, !dbg !1266
}

; Function Attrs: noinline nounwind optnone
define internal i32 @qs_cmp_pEndPoints(i8*, i8*) #0 !dbg !1267 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca %struct.MIDI_END_POINT*, align 4
  %6 = alloca %struct.MIDI_END_POINT*, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1272, metadata !502), !dbg !1273
  store i8* %1, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1274, metadata !502), !dbg !1275
  call void @llvm.dbg.declare(metadata %struct.MIDI_END_POINT** %5, metadata !1276, metadata !502), !dbg !1277
  %7 = load i8*, i8** %3, align 4, !dbg !1278
  %8 = bitcast i8* %7 to %struct.MIDI_END_POINT*, !dbg !1279
  store %struct.MIDI_END_POINT* %8, %struct.MIDI_END_POINT** %5, align 4, !dbg !1277
  call void @llvm.dbg.declare(metadata %struct.MIDI_END_POINT** %6, metadata !1280, metadata !502), !dbg !1281
  %9 = load i8*, i8** %4, align 4, !dbg !1282
  %10 = bitcast i8* %9 to %struct.MIDI_END_POINT*, !dbg !1283
  store %struct.MIDI_END_POINT* %10, %struct.MIDI_END_POINT** %6, align 4, !dbg !1281
  %11 = load %struct.MIDI_END_POINT*, %struct.MIDI_END_POINT** %5, align 4, !dbg !1284
  %12 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %11, i32 0, i32 1, !dbg !1285
  %13 = load i32, i32* %12, align 4, !dbg !1285
  %14 = load %struct.MIDI_END_POINT*, %struct.MIDI_END_POINT** %6, align 4, !dbg !1286
  %15 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %14, i32 0, i32 1, !dbg !1287
  %16 = load i32, i32* %15, align 4, !dbg !1287
  %17 = sub nsw i32 %13, %16, !dbg !1288
  ret i32 %17, !dbg !1289
}

declare void @qsort(i8*, i32, i32, i32 (i8*, i8*)*) #3

; Function Attrs: noinline nounwind optnone
define internal i8* @_midiGetPtr(%struct._MIDI_FILE*, i32, i32) #0 !dbg !1290 {
  %4 = alloca i8*, align 4
  %5 = alloca %struct._MIDI_FILE*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.MIDI_FILE_TRACK*, align 4
  store %struct._MIDI_FILE* %0, %struct._MIDI_FILE** %5, align 4
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %5, metadata !1293, metadata !502), !dbg !1294
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1295, metadata !502), !dbg !1296
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1297, metadata !502), !dbg !1298
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1299, metadata !502), !dbg !1301
  store i32 8092, i32* %8, align 4, !dbg !1301
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1302, metadata !502), !dbg !1303
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1304, metadata !502), !dbg !1305
  call void @llvm.dbg.declare(metadata %struct.MIDI_FILE_TRACK** %11, metadata !1306, metadata !502), !dbg !1308
  %12 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %5, align 4, !dbg !1309
  %13 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %12, i32 0, i32 5, !dbg !1310
  %14 = load i32, i32* %6, align 4, !dbg !1311
  %15 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %13, i32 0, i32 %14, !dbg !1309
  store %struct.MIDI_FILE_TRACK* %15, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1308
  %16 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1312
  %17 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %16, i32 0, i32 0, !dbg !1313
  %18 = load i8*, i8** %17, align 4, !dbg !1313
  store i8* %18, i8** %9, align 4, !dbg !1314
  %19 = load i8*, i8** %9, align 4, !dbg !1315
  %20 = icmp eq i8* %19, null, !dbg !1317
  br i1 %20, label %29, label %21, !dbg !1318

; <label>:21:                                     ; preds = %3
  %22 = load i8*, i8** %9, align 4, !dbg !1319
  %23 = load i32, i32* %7, align 4, !dbg !1320
  %24 = getelementptr inbounds i8, i8* %22, i32 %23, !dbg !1321
  %25 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1322
  %26 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %25, i32 0, i32 2, !dbg !1323
  %27 = load i8*, i8** %26, align 4, !dbg !1323
  %28 = icmp ugt i8* %24, %27, !dbg !1324
  br i1 %28, label %29, label %71, !dbg !1325

; <label>:29:                                     ; preds = %21, %3
  %30 = load i8*, i8** %9, align 4, !dbg !1326
  %31 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1328
  %32 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %31, i32 0, i32 1, !dbg !1329
  %33 = load i8*, i8** %32, align 4, !dbg !1329
  %34 = ptrtoint i8* %30 to i32, !dbg !1330
  %35 = ptrtoint i8* %33 to i32, !dbg !1330
  %36 = sub i32 %34, %35, !dbg !1330
  store i32 %36, i32* %10, align 4, !dbg !1331
  %37 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1332
  %38 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %37, i32 0, i32 1, !dbg !1334
  %39 = load i8*, i8** %38, align 4, !dbg !1334
  %40 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1335
  %41 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %40, i32 0, i32 6, !dbg !1336
  %42 = load i32, i32* %41, align 4, !dbg !1336
  %43 = add i32 8092, %42, !dbg !1337
  %44 = call i8* @realloc(i8* %39, i32 %43) #7, !dbg !1338
  store i8* %44, i8** %9, align 4, !dbg !1339
  %45 = icmp ne i8* %44, null, !dbg !1339
  br i1 %45, label %46, label %69, !dbg !1340

; <label>:46:                                     ; preds = %29
  %47 = load i8*, i8** %9, align 4, !dbg !1341
  %48 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1343
  %49 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %48, i32 0, i32 1, !dbg !1344
  store i8* %47, i8** %49, align 4, !dbg !1345
  %50 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1346
  %51 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %50, i32 0, i32 6, !dbg !1347
  %52 = load i32, i32* %51, align 4, !dbg !1348
  %53 = add i32 %52, 8092, !dbg !1348
  store i32 %53, i32* %51, align 4, !dbg !1348
  %54 = load i8*, i8** %9, align 4, !dbg !1349
  %55 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1350
  %56 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %55, i32 0, i32 6, !dbg !1351
  %57 = load i32, i32* %56, align 4, !dbg !1351
  %58 = getelementptr inbounds i8, i8* %54, i32 %57, !dbg !1352
  %59 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1353
  %60 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %59, i32 0, i32 2, !dbg !1354
  store i8* %58, i8** %60, align 4, !dbg !1355
  %61 = load i8*, i8** %9, align 4, !dbg !1356
  %62 = load i32, i32* %10, align 4, !dbg !1357
  %63 = getelementptr inbounds i8, i8* %61, i32 %62, !dbg !1358
  %64 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %11, align 4, !dbg !1359
  %65 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %64, i32 0, i32 0, !dbg !1360
  store i8* %63, i8** %65, align 4, !dbg !1361
  %66 = load i32, i32* %10, align 4, !dbg !1362
  %67 = load i8*, i8** %9, align 4, !dbg !1363
  %68 = getelementptr inbounds i8, i8* %67, i32 %66, !dbg !1363
  store i8* %68, i8** %9, align 4, !dbg !1363
  br label %70, !dbg !1364

; <label>:69:                                     ; preds = %29
  store i8* null, i8** %4, align 4, !dbg !1365
  br label %73, !dbg !1365

; <label>:70:                                     ; preds = %46
  br label %71, !dbg !1367

; <label>:71:                                     ; preds = %70, %21
  %72 = load i8*, i8** %9, align 4, !dbg !1368
  store i8* %72, i8** %4, align 4, !dbg !1369
  br label %73, !dbg !1369

; <label>:73:                                     ; preds = %71, %69
  %74 = load i8*, i8** %4, align 4, !dbg !1370
  ret i8* %74, !dbg !1370
}

; Function Attrs: noinline nounwind optnone
define internal i8* @_midiWriteVarLen(i8*, i32) #0 !dbg !1371 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1374, metadata !502), !dbg !1375
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1376, metadata !502), !dbg !1377
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1378, metadata !502), !dbg !1379
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1380, metadata !502), !dbg !1381
  %7 = load i32, i32* %4, align 4, !dbg !1382
  store i32 %7, i32* %6, align 4, !dbg !1381
  %8 = load i32, i32* %6, align 4, !dbg !1383
  %9 = and i32 %8, 127, !dbg !1384
  store i32 %9, i32* %5, align 4, !dbg !1385
  br label %10, !dbg !1386

; <label>:10:                                     ; preds = %14, %2
  %11 = load i32, i32* %6, align 4, !dbg !1387
  %12 = ashr i32 %11, 7, !dbg !1387
  store i32 %12, i32* %6, align 4, !dbg !1387
  %13 = icmp sgt i32 %12, 0, !dbg !1388
  br i1 %13, label %14, label %23, !dbg !1386

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %5, align 4, !dbg !1389
  %16 = shl i32 %15, 8, !dbg !1389
  store i32 %16, i32* %5, align 4, !dbg !1389
  %17 = load i32, i32* %5, align 4, !dbg !1391
  %18 = or i32 %17, 128, !dbg !1391
  store i32 %18, i32* %5, align 4, !dbg !1391
  %19 = load i32, i32* %6, align 4, !dbg !1392
  %20 = and i32 %19, 127, !dbg !1393
  %21 = load i32, i32* %5, align 4, !dbg !1394
  %22 = add nsw i32 %21, %20, !dbg !1394
  store i32 %22, i32* %5, align 4, !dbg !1394
  br label %10, !dbg !1386, !llvm.loop !1395

; <label>:23:                                     ; preds = %10
  br label %24, !dbg !1397

; <label>:24:                                     ; preds = %36, %23
  %25 = load i32, i32* %5, align 4, !dbg !1398
  %26 = trunc i32 %25 to i8, !dbg !1400
  %27 = load i8*, i8** %3, align 4, !dbg !1401
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !1401
  store i8* %28, i8** %3, align 4, !dbg !1401
  store i8 %26, i8* %27, align 1, !dbg !1402
  %29 = load i32, i32* %5, align 4, !dbg !1403
  %30 = and i32 %29, 128, !dbg !1405
  %31 = icmp ne i32 %30, 0, !dbg !1405
  br i1 %31, label %32, label %35, !dbg !1406

; <label>:32:                                     ; preds = %24
  %33 = load i32, i32* %5, align 4, !dbg !1407
  %34 = ashr i32 %33, 8, !dbg !1407
  store i32 %34, i32* %5, align 4, !dbg !1407
  br label %36, !dbg !1408

; <label>:35:                                     ; preds = %24
  br label %37, !dbg !1409

; <label>:36:                                     ; preds = %32
  br label %24, !dbg !1397, !llvm.loop !1410

; <label>:37:                                     ; preds = %35
  %38 = load i8*, i8** %3, align 4, !dbg !1412
  ret i8* %38, !dbg !1413
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @midiFileSyncTracks(i8*, i32, i32) #0 !dbg !1414 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1415, metadata !502), !dbg !1416
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1417, metadata !502), !dbg !1418
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1419, metadata !502), !dbg !1420
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1421, metadata !502), !dbg !1422
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1423, metadata !502), !dbg !1424
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %10, metadata !1425, metadata !502), !dbg !1426
  %11 = load i8*, i8** %5, align 4, !dbg !1426
  %12 = bitcast i8* %11 to %struct._MIDI_FILE*, !dbg !1426
  store %struct._MIDI_FILE* %12, %struct._MIDI_FILE** %10, align 4, !dbg !1426
  %13 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !1427
  %14 = icmp ne %struct._MIDI_FILE* %13, null, !dbg !1427
  br i1 %14, label %16, label %15, !dbg !1429

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !1430
  br label %80, !dbg !1430

; <label>:16:                                     ; preds = %3
  %17 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !1431
  %18 = load i32, i32* %6, align 4, !dbg !1431
  %19 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %17, i32 %18), !dbg !1431
  %20 = icmp ne i32 %19, 0, !dbg !1431
  br i1 %20, label %22, label %21, !dbg !1433

; <label>:21:                                     ; preds = %16
  store i32 0, i32* %4, align 4, !dbg !1434
  br label %80, !dbg !1434

; <label>:22:                                     ; preds = %16
  %23 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !1435
  %24 = load i32, i32* %7, align 4, !dbg !1435
  %25 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %23, i32 %24), !dbg !1435
  %26 = icmp ne i32 %25, 0, !dbg !1435
  br i1 %26, label %28, label %27, !dbg !1437

; <label>:27:                                     ; preds = %22
  store i32 0, i32* %4, align 4, !dbg !1438
  br label %80, !dbg !1438

; <label>:28:                                     ; preds = %22
  %29 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !1439
  %30 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %29, i32 0, i32 5, !dbg !1440
  %31 = load i32, i32* %6, align 4, !dbg !1441
  %32 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %30, i32 0, i32 %31, !dbg !1439
  %33 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %32, i32 0, i32 3, !dbg !1442
  %34 = load i32, i32* %33, align 4, !dbg !1442
  %35 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !1443
  %36 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %35, i32 0, i32 5, !dbg !1444
  %37 = load i32, i32* %6, align 4, !dbg !1445
  %38 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %36, i32 0, i32 %37, !dbg !1443
  %39 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %38, i32 0, i32 4, !dbg !1446
  %40 = load i32, i32* %39, align 4, !dbg !1446
  %41 = add i32 %34, %40, !dbg !1447
  store i32 %41, i32* %8, align 4, !dbg !1448
  %42 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !1449
  %43 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %42, i32 0, i32 5, !dbg !1450
  %44 = load i32, i32* %7, align 4, !dbg !1451
  %45 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %43, i32 0, i32 %44, !dbg !1449
  %46 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %45, i32 0, i32 3, !dbg !1452
  %47 = load i32, i32* %46, align 4, !dbg !1452
  %48 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !1453
  %49 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %48, i32 0, i32 5, !dbg !1454
  %50 = load i32, i32* %7, align 4, !dbg !1455
  %51 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %49, i32 0, i32 %50, !dbg !1453
  %52 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %51, i32 0, i32 4, !dbg !1456
  %53 = load i32, i32* %52, align 4, !dbg !1456
  %54 = add i32 %47, %53, !dbg !1457
  store i32 %54, i32* %9, align 4, !dbg !1458
  %55 = load i32, i32* %8, align 4, !dbg !1459
  %56 = load i32, i32* %9, align 4, !dbg !1461
  %57 = icmp slt i32 %55, %56, !dbg !1462
  br i1 %57, label %58, label %66, !dbg !1463

; <label>:58:                                     ; preds = %28
  %59 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !1464
  %60 = bitcast %struct._MIDI_FILE* %59 to i8*, !dbg !1464
  %61 = load i32, i32* %6, align 4, !dbg !1465
  %62 = load i32, i32* %9, align 4, !dbg !1466
  %63 = load i32, i32* %8, align 4, !dbg !1467
  %64 = sub nsw i32 %62, %63, !dbg !1468
  %65 = call i32 @midiTrackIncTime(i8* %60, i32 %61, i32 %64, i32 1), !dbg !1469
  br label %79, !dbg !1469

; <label>:66:                                     ; preds = %28
  %67 = load i32, i32* %9, align 4, !dbg !1470
  %68 = load i32, i32* %8, align 4, !dbg !1472
  %69 = icmp slt i32 %67, %68, !dbg !1473
  br i1 %69, label %70, label %78, !dbg !1474

; <label>:70:                                     ; preds = %66
  %71 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !1475
  %72 = bitcast %struct._MIDI_FILE* %71 to i8*, !dbg !1475
  %73 = load i32, i32* %7, align 4, !dbg !1476
  %74 = load i32, i32* %8, align 4, !dbg !1477
  %75 = load i32, i32* %9, align 4, !dbg !1478
  %76 = sub nsw i32 %74, %75, !dbg !1479
  %77 = call i32 @midiTrackIncTime(i8* %72, i32 %73, i32 %76, i32 1), !dbg !1480
  br label %78, !dbg !1480

; <label>:78:                                     ; preds = %70, %66
  br label %79

; <label>:79:                                     ; preds = %78, %58
  store i32 1, i32* %4, align 4, !dbg !1481
  br label %80, !dbg !1481

; <label>:80:                                     ; preds = %79, %27, %21, %15
  %81 = load i32, i32* %4, align 4, !dbg !1482
  ret i32 %81, !dbg !1482
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackIncTime(i8*, i32, i32, i32) #0 !dbg !1483 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1486, metadata !502), !dbg !1487
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1488, metadata !502), !dbg !1489
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1490, metadata !502), !dbg !1491
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1492, metadata !502), !dbg !1493
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1494, metadata !502), !dbg !1495
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %11, metadata !1496, metadata !502), !dbg !1497
  %12 = load i8*, i8** %6, align 4, !dbg !1497
  %13 = bitcast i8* %12 to %struct._MIDI_FILE*, !dbg !1497
  store %struct._MIDI_FILE* %13, %struct._MIDI_FILE** %11, align 4, !dbg !1497
  %14 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %11, align 4, !dbg !1498
  %15 = icmp ne %struct._MIDI_FILE* %14, null, !dbg !1498
  br i1 %15, label %17, label %16, !dbg !1500

; <label>:16:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !1501
  br label %52, !dbg !1501

; <label>:17:                                     ; preds = %4
  %18 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %11, align 4, !dbg !1502
  %19 = load i32, i32* %7, align 4, !dbg !1502
  %20 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %18, i32 %19), !dbg !1502
  %21 = icmp ne i32 %20, 0, !dbg !1502
  br i1 %21, label %23, label %22, !dbg !1504

; <label>:22:                                     ; preds = %17
  store i32 0, i32* %5, align 4, !dbg !1505
  br label %52, !dbg !1505

; <label>:23:                                     ; preds = %17
  %24 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %11, align 4, !dbg !1506
  %25 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %24, i32 0, i32 2, !dbg !1507
  %26 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %25, i32 0, i32 3, !dbg !1508
  %27 = load i16, i16* %26, align 4, !dbg !1508
  %28 = zext i16 %27 to i32, !dbg !1506
  %29 = load i32, i32* %8, align 4, !dbg !1509
  %30 = load i32, i32* %9, align 4, !dbg !1510
  %31 = call i32 @_midiGetLength(i32 %28, i32 %29, i32 %30), !dbg !1511
  store i32 %31, i32* %10, align 4, !dbg !1512
  %32 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %11, align 4, !dbg !1513
  %33 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %32, i32 0, i32 5, !dbg !1514
  %34 = load i32, i32* %7, align 4, !dbg !1515
  %35 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %33, i32 0, i32 %34, !dbg !1513
  %36 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %35, i32 0, i32 3, !dbg !1516
  %37 = load i32, i32* %36, align 4, !dbg !1516
  %38 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %11, align 4, !dbg !1517
  %39 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %38, i32 0, i32 5, !dbg !1518
  %40 = load i32, i32* %7, align 4, !dbg !1519
  %41 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %39, i32 0, i32 %40, !dbg !1517
  %42 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %41, i32 0, i32 4, !dbg !1520
  %43 = load i32, i32* %42, align 4, !dbg !1520
  %44 = add i32 %37, %43, !dbg !1521
  %45 = load i32, i32* %10, align 4, !dbg !1522
  %46 = add i32 %45, %44, !dbg !1522
  store i32 %46, i32* %10, align 4, !dbg !1522
  %47 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %11, align 4, !dbg !1523
  %48 = bitcast %struct._MIDI_FILE* %47 to i8*, !dbg !1523
  %49 = load i32, i32* %7, align 4, !dbg !1524
  %50 = load i32, i32* %10, align 4, !dbg !1525
  %51 = call i32 @midiFileFlushTrack(i8* %48, i32 %49, i32 0, i32 %50), !dbg !1526
  store i32 1, i32* %5, align 4, !dbg !1527
  br label %52, !dbg !1527

; <label>:52:                                     ; preds = %23, %22, %16
  %53 = load i32, i32* %5, align 4, !dbg !1528
  ret i32 %53, !dbg !1528
}

; Function Attrs: noinline nounwind optnone
define internal i32 @_midiGetLength(i32, i32, i32) #0 !dbg !1529 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1532, metadata !502), !dbg !1533
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1534, metadata !502), !dbg !1535
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1536, metadata !502), !dbg !1537
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1538, metadata !502), !dbg !1539
  %8 = load i32, i32* %4, align 4, !dbg !1540
  store i32 %8, i32* %7, align 4, !dbg !1539
  %9 = load i32, i32* %6, align 4, !dbg !1541
  %10 = icmp ne i32 %9, 0, !dbg !1541
  br i1 %10, label %11, label %13, !dbg !1543

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %5, align 4, !dbg !1544
  store i32 %12, i32* %7, align 4, !dbg !1546
  br label %59, !dbg !1547

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !1548
  switch i32 %14, label %58 [
    i32 1152, label %15
    i32 576, label %18
    i32 288, label %23
    i32 144, label %28
    i32 72, label %33
    i32 1536, label %38
    i32 768, label %41
    i32 192, label %44
    i32 96, label %47
    i32 48, label %50
    i32 256, label %53
  ], !dbg !1550

; <label>:15:                                     ; preds = %13
  %16 = load i32, i32* %7, align 4, !dbg !1551
  %17 = mul nsw i32 %16, 3, !dbg !1551
  store i32 %17, i32* %7, align 4, !dbg !1551
  br label %58, !dbg !1553

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %7, align 4, !dbg !1554
  %20 = mul nsw i32 %19, 3, !dbg !1554
  store i32 %20, i32* %7, align 4, !dbg !1554
  %21 = load i32, i32* %7, align 4, !dbg !1555
  %22 = sdiv i32 %21, 2, !dbg !1555
  store i32 %22, i32* %7, align 4, !dbg !1555
  br label %58, !dbg !1556

; <label>:23:                                     ; preds = %13
  %24 = load i32, i32* %7, align 4, !dbg !1557
  %25 = mul nsw i32 %24, 3, !dbg !1557
  store i32 %25, i32* %7, align 4, !dbg !1557
  %26 = load i32, i32* %7, align 4, !dbg !1558
  %27 = sdiv i32 %26, 4, !dbg !1558
  store i32 %27, i32* %7, align 4, !dbg !1558
  br label %58, !dbg !1559

; <label>:28:                                     ; preds = %13
  %29 = load i32, i32* %7, align 4, !dbg !1560
  %30 = mul nsw i32 %29, 3, !dbg !1560
  store i32 %30, i32* %7, align 4, !dbg !1560
  %31 = load i32, i32* %7, align 4, !dbg !1561
  %32 = sdiv i32 %31, 8, !dbg !1561
  store i32 %32, i32* %7, align 4, !dbg !1561
  br label %58, !dbg !1562

; <label>:33:                                     ; preds = %13
  %34 = load i32, i32* %7, align 4, !dbg !1563
  %35 = mul nsw i32 %34, 3, !dbg !1563
  store i32 %35, i32* %7, align 4, !dbg !1563
  %36 = load i32, i32* %7, align 4, !dbg !1564
  %37 = sdiv i32 %36, 16, !dbg !1564
  store i32 %37, i32* %7, align 4, !dbg !1564
  br label %58, !dbg !1565

; <label>:38:                                     ; preds = %13
  %39 = load i32, i32* %7, align 4, !dbg !1566
  %40 = mul nsw i32 %39, 4, !dbg !1566
  store i32 %40, i32* %7, align 4, !dbg !1566
  br label %58, !dbg !1567

; <label>:41:                                     ; preds = %13
  %42 = load i32, i32* %7, align 4, !dbg !1568
  %43 = mul nsw i32 %42, 2, !dbg !1568
  store i32 %43, i32* %7, align 4, !dbg !1568
  br label %58, !dbg !1569

; <label>:44:                                     ; preds = %13
  %45 = load i32, i32* %7, align 4, !dbg !1570
  %46 = sdiv i32 %45, 2, !dbg !1570
  store i32 %46, i32* %7, align 4, !dbg !1570
  br label %58, !dbg !1571

; <label>:47:                                     ; preds = %13
  %48 = load i32, i32* %7, align 4, !dbg !1572
  %49 = sdiv i32 %48, 4, !dbg !1572
  store i32 %49, i32* %7, align 4, !dbg !1572
  br label %58, !dbg !1573

; <label>:50:                                     ; preds = %13
  %51 = load i32, i32* %7, align 4, !dbg !1574
  %52 = sdiv i32 %51, 8, !dbg !1574
  store i32 %52, i32* %7, align 4, !dbg !1574
  br label %58, !dbg !1575

; <label>:53:                                     ; preds = %13
  %54 = load i32, i32* %7, align 4, !dbg !1576
  %55 = mul nsw i32 %54, 2, !dbg !1576
  store i32 %55, i32* %7, align 4, !dbg !1576
  %56 = load i32, i32* %7, align 4, !dbg !1577
  %57 = sdiv i32 %56, 3, !dbg !1577
  store i32 %57, i32* %7, align 4, !dbg !1577
  br label %58, !dbg !1578

; <label>:58:                                     ; preds = %53, %50, %47, %44, %41, %38, %33, %28, %23, %18, %15, %13
  br label %59

; <label>:59:                                     ; preds = %58, %11
  %60 = load i32, i32* %7, align 4, !dbg !1579
  ret i32 %60, !dbg !1580
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiFileClose(i8*) #0 !dbg !2 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca %struct._MIDI_FILE*, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1581, metadata !502), !dbg !1582
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %4, metadata !1583, metadata !502), !dbg !1584
  %15 = load i8*, i8** %3, align 4, !dbg !1584
  %16 = bitcast i8* %15 to %struct._MIDI_FILE*, !dbg !1584
  store %struct._MIDI_FILE* %16, %struct._MIDI_FILE** %4, align 4, !dbg !1584
  %17 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1585
  %18 = icmp ne %struct._MIDI_FILE* %17, null, !dbg !1585
  br i1 %18, label %20, label %19, !dbg !1587

; <label>:19:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1588
  br label %248, !dbg !1588

; <label>:20:                                     ; preds = %1
  %21 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1589
  %22 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %21, i32 0, i32 1, !dbg !1591
  %23 = load i32, i32* %22, align 4, !dbg !1591
  %24 = icmp ne i32 %23, 0, !dbg !1589
  br i1 %24, label %25, label %232, !dbg !1592

; <label>:25:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1593, metadata !502), !dbg !1595
  store i16 0, i16* %5, align 2, !dbg !1595
  call void @llvm.dbg.declare(metadata i16* %6, metadata !1596, metadata !502), !dbg !1597
  store i16 256, i16* %6, align 2, !dbg !1597
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1598, metadata !502), !dbg !1599
  store i32 0, i32* %7, align 4, !dbg !1599
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1600, metadata !502), !dbg !1601
  %26 = bitcast i16* %6 to i8*, !dbg !1602
  %27 = load i8, i8* %26, align 2, !dbg !1602
  %28 = zext i8 %27 to i32, !dbg !1602
  %29 = icmp eq i32 %28, 0, !dbg !1604
  br i1 %29, label %30, label %31, !dbg !1605

; <label>:30:                                     ; preds = %25
  store i32 1, i32* %7, align 4, !dbg !1606
  br label %31, !dbg !1607

; <label>:31:                                     ; preds = %30, %25
  store i32 0, i32* %8, align 4, !dbg !1608
  br label %32, !dbg !1610

; <label>:32:                                     ; preds = %55, %31
  %33 = load i32, i32* %8, align 4, !dbg !1611
  %34 = icmp slt i32 %33, 256, !dbg !1613
  br i1 %34, label %35, label %58, !dbg !1614

; <label>:35:                                     ; preds = %32
  %36 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1615
  %37 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %36, i32 0, i32 5, !dbg !1618
  %38 = load i32, i32* %8, align 4, !dbg !1619
  %39 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %37, i32 0, i32 %38, !dbg !1615
  %40 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %39, i32 0, i32 0, !dbg !1620
  %41 = load i8*, i8** %40, align 4, !dbg !1620
  %42 = icmp ne i8* %41, null, !dbg !1615
  br i1 %42, label %43, label %54, !dbg !1621

; <label>:43:                                     ; preds = %35
  %44 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1622
  %45 = bitcast %struct._MIDI_FILE* %44 to i8*, !dbg !1622
  %46 = load i32, i32* %8, align 4, !dbg !1624
  %47 = call i32 @midiSongAddEndSequence(i8* %45, i32 %46), !dbg !1625
  %48 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1626
  %49 = bitcast %struct._MIDI_FILE* %48 to i8*, !dbg !1626
  %50 = load i32, i32* %8, align 4, !dbg !1627
  %51 = call i32 @midiFileFlushTrack(i8* %49, i32 %50, i32 1, i32 0), !dbg !1628
  %52 = load i16, i16* %5, align 2, !dbg !1629
  %53 = add i16 %52, 1, !dbg !1629
  store i16 %53, i16* %5, align 2, !dbg !1629
  br label %54, !dbg !1630

; <label>:54:                                     ; preds = %43, %35
  br label %55, !dbg !1631

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %8, align 4, !dbg !1632
  %57 = add nsw i32 %56, 1, !dbg !1632
  store i32 %57, i32* %8, align 4, !dbg !1632
  br label %32, !dbg !1633, !llvm.loop !1634

; <label>:58:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1636, metadata !502), !dbg !1638
  call void @llvm.dbg.declare(metadata i16* %10, metadata !1639, metadata !502), !dbg !1640
  call void @llvm.dbg.declare(metadata i16* %11, metadata !1641, metadata !502), !dbg !1642
  call void @llvm.dbg.declare(metadata i16* %12, metadata !1643, metadata !502), !dbg !1644
  %59 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1645
  %60 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %59, i32 0, i32 0, !dbg !1646
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %60, align 4, !dbg !1646
  %62 = call i32 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @midiFileClose.mthd, i32 0, i32 0), i32 1, i32 4, %struct._IO_FILE* %61), !dbg !1647
  store i32 6, i32* %9, align 4, !dbg !1648
  %63 = load i32, i32* %7, align 4, !dbg !1649
  %64 = icmp ne i32 %63, 0, !dbg !1649
  br i1 %64, label %65, label %79, !dbg !1651

; <label>:65:                                     ; preds = %58
  %66 = load i32, i32* %9, align 4, !dbg !1652
  %67 = lshr i32 %66, 24, !dbg !1652
  %68 = load i32, i32* %9, align 4, !dbg !1652
  %69 = lshr i32 %68, 8, !dbg !1652
  %70 = and i32 %69, 65280, !dbg !1652
  %71 = or i32 %67, %70, !dbg !1652
  %72 = load i32, i32* %9, align 4, !dbg !1652
  %73 = shl i32 %72, 8, !dbg !1652
  %74 = and i32 %73, 16711680, !dbg !1652
  %75 = or i32 %71, %74, !dbg !1652
  %76 = load i32, i32* %9, align 4, !dbg !1652
  %77 = shl i32 %76, 24, !dbg !1652
  %78 = or i32 %75, %77, !dbg !1652
  store i32 %78, i32* %9, align 4, !dbg !1653
  br label %79, !dbg !1654

; <label>:79:                                     ; preds = %65, %58
  %80 = bitcast i32* %9 to i8*, !dbg !1655
  %81 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1656
  %82 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %81, i32 0, i32 0, !dbg !1657
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %82, align 4, !dbg !1657
  %84 = call i32 @fwrite(i8* %80, i32 4, i32 1, %struct._IO_FILE* %83), !dbg !1658
  %85 = load i16, i16* %5, align 2, !dbg !1659
  %86 = zext i16 %85 to i32, !dbg !1659
  %87 = icmp eq i32 %86, 1, !dbg !1660
  br i1 %87, label %88, label %94, !dbg !1659

; <label>:88:                                     ; preds = %79
  %89 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1661
  %90 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %89, i32 0, i32 2, !dbg !1662
  %91 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %90, i32 0, i32 1, !dbg !1663
  %92 = load i16, i16* %91, align 4, !dbg !1663
  %93 = zext i16 %92 to i32, !dbg !1661
  br label %95, !dbg !1659

; <label>:94:                                     ; preds = %79
  br label %95, !dbg !1659

; <label>:95:                                     ; preds = %94, %88
  %96 = phi i32 [ %93, %88 ], [ 1, %94 ], !dbg !1659
  %97 = trunc i32 %96 to i16, !dbg !1664
  store i16 %97, i16* %10, align 2, !dbg !1665
  %98 = load i32, i32* %7, align 4, !dbg !1666
  %99 = icmp ne i32 %98, 0, !dbg !1666
  br i1 %99, label %100, label %109, !dbg !1668

; <label>:100:                                    ; preds = %95
  %101 = load i16, i16* %10, align 2, !dbg !1669
  %102 = zext i16 %101 to i32, !dbg !1669
  %103 = ashr i32 %102, 8, !dbg !1669
  %104 = load i16, i16* %10, align 2, !dbg !1669
  %105 = zext i16 %104 to i32, !dbg !1669
  %106 = shl i32 %105, 8, !dbg !1669
  %107 = or i32 %103, %106, !dbg !1669
  %108 = trunc i32 %107 to i16, !dbg !1669
  store i16 %108, i16* %11, align 2, !dbg !1670
  br label %111, !dbg !1671

; <label>:109:                                    ; preds = %95
  %110 = load i16, i16* %10, align 2, !dbg !1672
  store i16 %110, i16* %11, align 2, !dbg !1673
  br label %111

; <label>:111:                                    ; preds = %109, %100
  %112 = load i32, i32* %7, align 4, !dbg !1674
  %113 = icmp ne i32 %112, 0, !dbg !1674
  br i1 %113, label %114, label %123, !dbg !1676

; <label>:114:                                    ; preds = %111
  %115 = load i16, i16* %5, align 2, !dbg !1677
  %116 = zext i16 %115 to i32, !dbg !1677
  %117 = ashr i32 %116, 8, !dbg !1677
  %118 = load i16, i16* %5, align 2, !dbg !1677
  %119 = zext i16 %118 to i32, !dbg !1677
  %120 = shl i32 %119, 8, !dbg !1677
  %121 = or i32 %117, %120, !dbg !1677
  %122 = trunc i32 %121 to i16, !dbg !1677
  store i16 %122, i16* %5, align 2, !dbg !1678
  br label %123, !dbg !1679

; <label>:123:                                    ; preds = %114, %111
  %124 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1680
  %125 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %124, i32 0, i32 2, !dbg !1681
  %126 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %125, i32 0, i32 3, !dbg !1682
  %127 = load i16, i16* %126, align 4, !dbg !1682
  store i16 %127, i16* %10, align 2, !dbg !1683
  %128 = load i32, i32* %7, align 4, !dbg !1684
  %129 = icmp ne i32 %128, 0, !dbg !1684
  br i1 %129, label %130, label %139, !dbg !1686

; <label>:130:                                    ; preds = %123
  %131 = load i16, i16* %10, align 2, !dbg !1687
  %132 = zext i16 %131 to i32, !dbg !1687
  %133 = ashr i32 %132, 8, !dbg !1687
  %134 = load i16, i16* %10, align 2, !dbg !1687
  %135 = zext i16 %134 to i32, !dbg !1687
  %136 = shl i32 %135, 8, !dbg !1687
  %137 = or i32 %133, %136, !dbg !1687
  %138 = trunc i32 %137 to i16, !dbg !1687
  store i16 %138, i16* %12, align 2, !dbg !1688
  br label %141, !dbg !1689

; <label>:139:                                    ; preds = %123
  %140 = load i16, i16* %10, align 2, !dbg !1690
  store i16 %140, i16* %12, align 2, !dbg !1691
  br label %141

; <label>:141:                                    ; preds = %139, %130
  %142 = bitcast i16* %11 to i8*, !dbg !1692
  %143 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1693
  %144 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %143, i32 0, i32 0, !dbg !1694
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %144, align 4, !dbg !1694
  %146 = call i32 @fwrite(i8* %142, i32 2, i32 1, %struct._IO_FILE* %145), !dbg !1695
  %147 = bitcast i16* %5 to i8*, !dbg !1696
  %148 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1697
  %149 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %148, i32 0, i32 0, !dbg !1698
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %149, align 4, !dbg !1698
  %151 = call i32 @fwrite(i8* %147, i32 2, i32 1, %struct._IO_FILE* %150), !dbg !1699
  %152 = bitcast i16* %12 to i8*, !dbg !1700
  %153 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1701
  %154 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %153, i32 0, i32 0, !dbg !1702
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %154, align 4, !dbg !1702
  %156 = call i32 @fwrite(i8* %152, i32 2, i32 1, %struct._IO_FILE* %155), !dbg !1703
  store i32 0, i32* %8, align 4, !dbg !1704
  br label %157, !dbg !1706

; <label>:157:                                    ; preds = %228, %141
  %158 = load i32, i32* %8, align 4, !dbg !1707
  %159 = icmp slt i32 %158, 256, !dbg !1709
  br i1 %159, label %160, label %231, !dbg !1710

; <label>:160:                                    ; preds = %157
  %161 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1711
  %162 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %161, i32 0, i32 5, !dbg !1713
  %163 = load i32, i32* %8, align 4, !dbg !1714
  %164 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %162, i32 0, i32 %163, !dbg !1711
  %165 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %164, i32 0, i32 0, !dbg !1715
  %166 = load i8*, i8** %165, align 4, !dbg !1715
  %167 = icmp ne i8* %166, null, !dbg !1711
  br i1 %167, label %168, label %227, !dbg !1716

; <label>:168:                                    ; preds = %160
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1717, metadata !502), !dbg !1719
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1720, metadata !502), !dbg !1721
  %169 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1722
  %170 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %169, i32 0, i32 0, !dbg !1723
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %170, align 4, !dbg !1723
  %172 = call i32 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @midiFileClose.mtrk, i32 0, i32 0), i32 1, i32 4, %struct._IO_FILE* %171), !dbg !1724
  %173 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1725
  %174 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %173, i32 0, i32 5, !dbg !1726
  %175 = load i32, i32* %8, align 4, !dbg !1727
  %176 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %174, i32 0, i32 %175, !dbg !1725
  %177 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %176, i32 0, i32 0, !dbg !1728
  %178 = load i8*, i8** %177, align 4, !dbg !1728
  %179 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1729
  %180 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %179, i32 0, i32 5, !dbg !1730
  %181 = load i32, i32* %8, align 4, !dbg !1731
  %182 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %180, i32 0, i32 %181, !dbg !1729
  %183 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %182, i32 0, i32 1, !dbg !1732
  %184 = load i8*, i8** %183, align 4, !dbg !1732
  %185 = ptrtoint i8* %178 to i32, !dbg !1733
  %186 = ptrtoint i8* %184 to i32, !dbg !1733
  %187 = sub i32 %185, %186, !dbg !1733
  store i32 %187, i32* %14, align 4, !dbg !1734
  store i32 %187, i32* %13, align 4, !dbg !1735
  %188 = load i32, i32* %7, align 4, !dbg !1736
  %189 = icmp ne i32 %188, 0, !dbg !1736
  br i1 %189, label %190, label %204, !dbg !1738

; <label>:190:                                    ; preds = %168
  %191 = load i32, i32* %13, align 4, !dbg !1739
  %192 = lshr i32 %191, 24, !dbg !1739
  %193 = load i32, i32* %13, align 4, !dbg !1739
  %194 = lshr i32 %193, 8, !dbg !1739
  %195 = and i32 %194, 65280, !dbg !1739
  %196 = or i32 %192, %195, !dbg !1739
  %197 = load i32, i32* %13, align 4, !dbg !1739
  %198 = shl i32 %197, 8, !dbg !1739
  %199 = and i32 %198, 16711680, !dbg !1739
  %200 = or i32 %196, %199, !dbg !1739
  %201 = load i32, i32* %13, align 4, !dbg !1739
  %202 = shl i32 %201, 24, !dbg !1739
  %203 = or i32 %200, %202, !dbg !1739
  store i32 %203, i32* %13, align 4, !dbg !1740
  br label %204, !dbg !1741

; <label>:204:                                    ; preds = %190, %168
  %205 = bitcast i32* %13 to i8*, !dbg !1742
  %206 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1743
  %207 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %206, i32 0, i32 0, !dbg !1744
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %207, align 4, !dbg !1744
  %209 = call i32 @fwrite(i8* %205, i32 4, i32 1, %struct._IO_FILE* %208), !dbg !1745
  %210 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1746
  %211 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %210, i32 0, i32 5, !dbg !1747
  %212 = load i32, i32* %8, align 4, !dbg !1748
  %213 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %211, i32 0, i32 %212, !dbg !1746
  %214 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %213, i32 0, i32 1, !dbg !1749
  %215 = load i8*, i8** %214, align 4, !dbg !1749
  %216 = load i32, i32* %14, align 4, !dbg !1750
  %217 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1751
  %218 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %217, i32 0, i32 0, !dbg !1752
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %218, align 4, !dbg !1752
  %220 = call i32 @fwrite(i8* %215, i32 1, i32 %216, %struct._IO_FILE* %219), !dbg !1753
  %221 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1754
  %222 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %221, i32 0, i32 5, !dbg !1755
  %223 = load i32, i32* %8, align 4, !dbg !1756
  %224 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %222, i32 0, i32 %223, !dbg !1754
  %225 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %224, i32 0, i32 1, !dbg !1757
  %226 = load i8*, i8** %225, align 4, !dbg !1757
  call void @free(i8* %226) #7, !dbg !1758
  br label %227, !dbg !1759

; <label>:227:                                    ; preds = %204, %160
  br label %228, !dbg !1715

; <label>:228:                                    ; preds = %227
  %229 = load i32, i32* %8, align 4, !dbg !1760
  %230 = add nsw i32 %229, 1, !dbg !1760
  store i32 %230, i32* %8, align 4, !dbg !1760
  br label %157, !dbg !1761, !llvm.loop !1762

; <label>:231:                                    ; preds = %157
  br label %232, !dbg !1764

; <label>:232:                                    ; preds = %231, %20
  %233 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1765
  %234 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %233, i32 0, i32 0, !dbg !1767
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %234, align 4, !dbg !1767
  %236 = icmp ne %struct._IO_FILE* %235, null, !dbg !1765
  br i1 %236, label %237, label %245, !dbg !1768

; <label>:237:                                    ; preds = %232
  %238 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1769
  %239 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %238, i32 0, i32 0, !dbg !1770
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** %239, align 4, !dbg !1770
  %241 = call i32 @fclose(%struct._IO_FILE* %240), !dbg !1771
  %242 = icmp ne i32 %241, 0, !dbg !1771
  %243 = zext i1 %242 to i64, !dbg !1771
  %244 = select i1 %242, i32 0, i32 1, !dbg !1771
  store i32 %244, i32* %2, align 4, !dbg !1772
  br label %248, !dbg !1772

; <label>:245:                                    ; preds = %232
  %246 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %4, align 4, !dbg !1773
  %247 = bitcast %struct._MIDI_FILE* %246 to i8*, !dbg !1774
  call void @free(i8* %247) #7, !dbg !1775
  store i32 1, i32* %2, align 4, !dbg !1776
  br label %248, !dbg !1776

; <label>:248:                                    ; preds = %245, %237, %19
  %249 = load i32, i32* %2, align 4, !dbg !1777
  ret i32 %249, !dbg !1777
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiSongAddEndSequence(i8*, i32) #0 !dbg !412 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1778, metadata !502), !dbg !1779
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1780, metadata !502), !dbg !1781
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %6, metadata !1782, metadata !502), !dbg !1783
  %7 = load i8*, i8** %4, align 4, !dbg !1783
  %8 = bitcast i8* %7 to %struct._MIDI_FILE*, !dbg !1783
  store %struct._MIDI_FILE* %8, %struct._MIDI_FILE** %6, align 4, !dbg !1783
  %9 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !1784
  %10 = icmp ne %struct._MIDI_FILE* %9, null, !dbg !1784
  br i1 %10, label %12, label %11, !dbg !1786

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1787
  br label %23, !dbg !1787

; <label>:12:                                     ; preds = %2
  %13 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !1788
  %14 = load i32, i32* %5, align 4, !dbg !1788
  %15 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %13, i32 %14), !dbg !1788
  %16 = icmp ne i32 %15, 0, !dbg !1788
  br i1 %16, label %18, label %17, !dbg !1790

; <label>:17:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !1791
  br label %23, !dbg !1791

; <label>:18:                                     ; preds = %12
  %19 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !1792
  %20 = bitcast %struct._MIDI_FILE* %19 to i8*, !dbg !1792
  %21 = load i32, i32* %5, align 4, !dbg !1793
  %22 = call i32 @midiTrackAddRaw(i8* %20, i32 %21, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @midiSongAddEndSequence.tmp, i32 0, i32 0), i32 0, i32 0), !dbg !1794
  store i32 %22, i32* %3, align 4, !dbg !1795
  br label %23, !dbg !1795

; <label>:23:                                     ; preds = %18, %17, %11
  %24 = load i32, i32* %3, align 4, !dbg !1796
  ret i32 %24, !dbg !1796
}

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackAddRaw(i8*, i32, i32, i8*, i32, i32) #0 !dbg !1797 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.MIDI_FILE_TRACK*, align 4
  %15 = alloca i8*, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %8, align 4
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1801, metadata !502), !dbg !1802
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1803, metadata !502), !dbg !1804
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1805, metadata !502), !dbg !1806
  store i8* %3, i8** %11, align 4
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1807, metadata !502), !dbg !1808
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1809, metadata !502), !dbg !1810
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1811, metadata !502), !dbg !1812
  call void @llvm.dbg.declare(metadata %struct.MIDI_FILE_TRACK** %14, metadata !1813, metadata !502), !dbg !1814
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1815, metadata !502), !dbg !1816
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1817, metadata !502), !dbg !1818
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %17, metadata !1819, metadata !502), !dbg !1820
  %18 = load i8*, i8** %8, align 4, !dbg !1820
  %19 = bitcast i8* %18 to %struct._MIDI_FILE*, !dbg !1820
  store %struct._MIDI_FILE* %19, %struct._MIDI_FILE** %17, align 4, !dbg !1820
  %20 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1821
  %21 = icmp ne %struct._MIDI_FILE* %20, null, !dbg !1821
  br i1 %21, label %23, label %22, !dbg !1823

; <label>:22:                                     ; preds = %6
  store i32 0, i32* %7, align 4, !dbg !1824
  br label %71, !dbg !1824

; <label>:23:                                     ; preds = %6
  %24 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1825
  %25 = load i32, i32* %9, align 4, !dbg !1825
  %26 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %24, i32 %25), !dbg !1825
  %27 = icmp ne i32 %26, 0, !dbg !1825
  br i1 %27, label %29, label %28, !dbg !1827

; <label>:28:                                     ; preds = %23
  store i32 0, i32* %7, align 4, !dbg !1828
  br label %71, !dbg !1828

; <label>:29:                                     ; preds = %23
  %30 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1829
  %31 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %30, i32 0, i32 5, !dbg !1830
  %32 = load i32, i32* %9, align 4, !dbg !1831
  %33 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %31, i32 0, i32 %32, !dbg !1829
  store %struct.MIDI_FILE_TRACK* %33, %struct.MIDI_FILE_TRACK** %14, align 4, !dbg !1832
  %34 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %17, align 4, !dbg !1833
  %35 = load i32, i32* %9, align 4, !dbg !1834
  %36 = load i32, i32* %10, align 4, !dbg !1835
  %37 = add nsw i32 %36, 32, !dbg !1836
  %38 = call i8* @_midiGetPtr(%struct._MIDI_FILE* %34, i32 %35, i32 %37), !dbg !1837
  store i8* %38, i8** %15, align 4, !dbg !1838
  %39 = load i8*, i8** %15, align 4, !dbg !1839
  %40 = icmp ne i8* %39, null, !dbg !1839
  br i1 %40, label %42, label %41, !dbg !1841

; <label>:41:                                     ; preds = %29
  store i32 0, i32* %7, align 4, !dbg !1842
  br label %71, !dbg !1842

; <label>:42:                                     ; preds = %29
  %43 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %14, align 4, !dbg !1843
  %44 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %43, i32 0, i32 4, !dbg !1844
  %45 = load i32, i32* %44, align 4, !dbg !1844
  store i32 %45, i32* %16, align 4, !dbg !1845
  %46 = load i32, i32* %12, align 4, !dbg !1846
  %47 = icmp ne i32 %46, 0, !dbg !1846
  br i1 %47, label %48, label %52, !dbg !1848

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %13, align 4, !dbg !1849
  %50 = load i32, i32* %16, align 4, !dbg !1850
  %51 = add nsw i32 %50, %49, !dbg !1850
  store i32 %51, i32* %16, align 4, !dbg !1850
  br label %52, !dbg !1851

; <label>:52:                                     ; preds = %48, %42
  %53 = load i8*, i8** %15, align 4, !dbg !1852
  %54 = load i32, i32* %16, align 4, !dbg !1853
  %55 = call i8* @_midiWriteVarLen(i8* %53, i32 %54), !dbg !1854
  store i8* %55, i8** %15, align 4, !dbg !1855
  %56 = load i8*, i8** %15, align 4, !dbg !1856
  %57 = load i8*, i8** %11, align 4, !dbg !1857
  %58 = load i32, i32* %10, align 4, !dbg !1858
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %56, i8* %57, i32 %58, i32 1, i1 false), !dbg !1859
  %59 = load i32, i32* %16, align 4, !dbg !1860
  %60 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %14, align 4, !dbg !1861
  %61 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %60, i32 0, i32 3, !dbg !1862
  %62 = load i32, i32* %61, align 4, !dbg !1863
  %63 = add i32 %62, %59, !dbg !1863
  store i32 %63, i32* %61, align 4, !dbg !1863
  %64 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %14, align 4, !dbg !1864
  %65 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %64, i32 0, i32 4, !dbg !1865
  store i32 0, i32* %65, align 4, !dbg !1866
  %66 = load i8*, i8** %15, align 4, !dbg !1867
  %67 = load i32, i32* %10, align 4, !dbg !1868
  %68 = getelementptr inbounds i8, i8* %66, i32 %67, !dbg !1869
  %69 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %14, align 4, !dbg !1870
  %70 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %69, i32 0, i32 0, !dbg !1871
  store i8* %68, i8** %70, align 4, !dbg !1872
  store i32 1, i32* %7, align 4, !dbg !1873
  br label %71, !dbg !1873

; <label>:71:                                     ; preds = %52, %41, %28, %22
  %72 = load i32, i32* %7, align 4, !dbg !1874
  ret i32 %72, !dbg !1874
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: noinline nounwind optnone
define internal i32 @midiSongAddSMPTEOffset(i8*, i32, i32, i32, i32, i32, i32) #0 !dbg !375 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1875, metadata !502), !dbg !1876
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1877, metadata !502), !dbg !1878
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1879, metadata !502), !dbg !1880
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1881, metadata !502), !dbg !1882
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1883, metadata !502), !dbg !1884
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1885, metadata !502), !dbg !1886
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1887, metadata !502), !dbg !1888
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %16, metadata !1889, metadata !502), !dbg !1890
  %17 = load i8*, i8** %9, align 4, !dbg !1890
  %18 = bitcast i8* %17 to %struct._MIDI_FILE*, !dbg !1890
  store %struct._MIDI_FILE* %18, %struct._MIDI_FILE** %16, align 4, !dbg !1890
  %19 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %16, align 4, !dbg !1891
  %20 = icmp ne %struct._MIDI_FILE* %19, null, !dbg !1891
  br i1 %20, label %22, label %21, !dbg !1893

; <label>:21:                                     ; preds = %7
  store i32 0, i32* %8, align 4, !dbg !1894
  br label %64, !dbg !1894

; <label>:22:                                     ; preds = %7
  %23 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %16, align 4, !dbg !1895
  %24 = load i32, i32* %10, align 4, !dbg !1895
  %25 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %23, i32 %24), !dbg !1895
  %26 = icmp ne i32 %25, 0, !dbg !1895
  br i1 %26, label %28, label %27, !dbg !1897

; <label>:27:                                     ; preds = %22
  store i32 0, i32* %8, align 4, !dbg !1898
  br label %64, !dbg !1898

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %12, align 4, !dbg !1899
  %30 = icmp slt i32 %29, 0, !dbg !1901
  br i1 %30, label %34, label %31, !dbg !1902

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %12, align 4, !dbg !1903
  %33 = icmp sgt i32 %32, 59, !dbg !1904
  br i1 %33, label %34, label %35, !dbg !1905

; <label>:34:                                     ; preds = %31, %28
  store i32 0, i32* %12, align 4, !dbg !1906
  br label %35, !dbg !1907

; <label>:35:                                     ; preds = %34, %31
  %36 = load i32, i32* %13, align 4, !dbg !1908
  %37 = icmp slt i32 %36, 0, !dbg !1910
  br i1 %37, label %41, label %38, !dbg !1911

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %13, align 4, !dbg !1912
  %40 = icmp sgt i32 %39, 59, !dbg !1913
  br i1 %40, label %41, label %42, !dbg !1914

; <label>:41:                                     ; preds = %38, %35
  store i32 0, i32* %13, align 4, !dbg !1915
  br label %42, !dbg !1916

; <label>:42:                                     ; preds = %41, %38
  %43 = load i32, i32* %14, align 4, !dbg !1917
  %44 = icmp slt i32 %43, 0, !dbg !1919
  br i1 %44, label %48, label %45, !dbg !1920

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %14, align 4, !dbg !1921
  %47 = icmp sgt i32 %46, 24, !dbg !1922
  br i1 %47, label %48, label %49, !dbg !1923

; <label>:48:                                     ; preds = %45, %42
  store i32 0, i32* %14, align 4, !dbg !1924
  br label %49, !dbg !1925

; <label>:49:                                     ; preds = %48, %45
  %50 = load i32, i32* %11, align 4, !dbg !1926
  %51 = trunc i32 %50 to i8, !dbg !1927
  store i8 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @midiSongAddSMPTEOffset.tmp, i32 0, i32 3), align 1, !dbg !1928
  %52 = load i32, i32* %12, align 4, !dbg !1929
  %53 = trunc i32 %52 to i8, !dbg !1930
  store i8 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @midiSongAddSMPTEOffset.tmp, i32 0, i32 4), align 1, !dbg !1931
  %54 = load i32, i32* %13, align 4, !dbg !1932
  %55 = trunc i32 %54 to i8, !dbg !1933
  store i8 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @midiSongAddSMPTEOffset.tmp, i32 0, i32 5), align 1, !dbg !1934
  %56 = load i32, i32* %14, align 4, !dbg !1935
  %57 = trunc i32 %56 to i8, !dbg !1936
  store i8 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @midiSongAddSMPTEOffset.tmp, i32 0, i32 6), align 1, !dbg !1937
  %58 = load i32, i32* %15, align 4, !dbg !1938
  %59 = trunc i32 %58 to i8, !dbg !1939
  store i8 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @midiSongAddSMPTEOffset.tmp, i32 0, i32 7), align 1, !dbg !1940
  %60 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %16, align 4, !dbg !1941
  %61 = bitcast %struct._MIDI_FILE* %60 to i8*, !dbg !1941
  %62 = load i32, i32* %10, align 4, !dbg !1942
  %63 = call i32 @midiTrackAddRaw(i8* %61, i32 %62, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @midiSongAddSMPTEOffset.tmp, i32 0, i32 0), i32 0, i32 0), !dbg !1943
  store i32 %63, i32* %8, align 4, !dbg !1944
  br label %64, !dbg !1944

; <label>:64:                                     ; preds = %49, %27, %21
  %65 = load i32, i32* %8, align 4, !dbg !1945
  ret i32 %65, !dbg !1945
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiSongAddSimpleTimeSig(i8*, i32, i32, i32) #0 !dbg !1946 {
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1949, metadata !502), !dbg !1950
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1951, metadata !502), !dbg !1952
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1953, metadata !502), !dbg !1954
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1955, metadata !502), !dbg !1956
  %9 = load i8*, i8** %5, align 4, !dbg !1957
  %10 = load i32, i32* %6, align 4, !dbg !1958
  %11 = load i32, i32* %7, align 4, !dbg !1959
  %12 = load i32, i32* %8, align 4, !dbg !1960
  %13 = call i32 @midiSongAddTimeSig(i8* %9, i32 %10, i32 %11, i32 %12, i32 24, i32 8), !dbg !1961
  ret i32 %13, !dbg !1962
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiSongAddTimeSig(i8*, i32, i32, i32, i32, i32) #0 !dbg !384 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %8, align 4
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1963, metadata !502), !dbg !1964
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1965, metadata !502), !dbg !1966
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1967, metadata !502), !dbg !1968
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1969, metadata !502), !dbg !1970
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1971, metadata !502), !dbg !1972
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1973, metadata !502), !dbg !1974
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %14, metadata !1975, metadata !502), !dbg !1976
  %15 = load i8*, i8** %8, align 4, !dbg !1976
  %16 = bitcast i8* %15 to %struct._MIDI_FILE*, !dbg !1976
  store %struct._MIDI_FILE* %16, %struct._MIDI_FILE** %14, align 4, !dbg !1976
  %17 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %14, align 4, !dbg !1977
  %18 = icmp ne %struct._MIDI_FILE* %17, null, !dbg !1977
  br i1 %18, label %20, label %19, !dbg !1979

; <label>:19:                                     ; preds = %6
  store i32 0, i32* %7, align 4, !dbg !1980
  br label %40, !dbg !1980

; <label>:20:                                     ; preds = %6
  %21 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %14, align 4, !dbg !1981
  %22 = load i32, i32* %9, align 4, !dbg !1981
  %23 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %21, i32 %22), !dbg !1981
  %24 = icmp ne i32 %23, 0, !dbg !1981
  br i1 %24, label %26, label %25, !dbg !1983

; <label>:25:                                     ; preds = %20
  store i32 0, i32* %7, align 4, !dbg !1984
  br label %40, !dbg !1984

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* %10, align 4, !dbg !1985
  %28 = trunc i32 %27 to i8, !dbg !1986
  store i8 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @midiSongAddTimeSig.tmp, i32 0, i32 3), align 1, !dbg !1987
  %29 = load i32, i32* %11, align 4, !dbg !1988
  %30 = sdiv i32 768, %29, !dbg !1989
  %31 = trunc i32 %30 to i8, !dbg !1990
  store i8 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @midiSongAddTimeSig.tmp, i32 0, i32 4), align 1, !dbg !1991
  %32 = load i32, i32* %12, align 4, !dbg !1992
  %33 = trunc i32 %32 to i8, !dbg !1993
  store i8 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @midiSongAddTimeSig.tmp, i32 0, i32 5), align 1, !dbg !1994
  %34 = load i32, i32* %13, align 4, !dbg !1995
  %35 = trunc i32 %34 to i8, !dbg !1996
  store i8 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @midiSongAddTimeSig.tmp, i32 0, i32 6), align 1, !dbg !1997
  %36 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %14, align 4, !dbg !1998
  %37 = bitcast %struct._MIDI_FILE* %36 to i8*, !dbg !1998
  %38 = load i32, i32* %9, align 4, !dbg !1999
  %39 = call i32 @midiTrackAddRaw(i8* %37, i32 %38, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @midiSongAddTimeSig.tmp, i32 0, i32 0), i32 0, i32 0), !dbg !2000
  store i32 %39, i32* %7, align 4, !dbg !2001
  br label %40, !dbg !2001

; <label>:40:                                     ; preds = %26, %25, %19
  %41 = load i32, i32* %7, align 4, !dbg !2002
  ret i32 %41, !dbg !2002
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiSongAddKeySig(i8*, i32, i32) #0 !dbg !392 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2003, metadata !502), !dbg !2004
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2005, metadata !502), !dbg !2006
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2007, metadata !502), !dbg !2008
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %8, metadata !2009, metadata !502), !dbg !2010
  %9 = load i8*, i8** %5, align 4, !dbg !2010
  %10 = bitcast i8* %9 to %struct._MIDI_FILE*, !dbg !2010
  store %struct._MIDI_FILE* %10, %struct._MIDI_FILE** %8, align 4, !dbg !2010
  %11 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %8, align 4, !dbg !2011
  %12 = icmp ne %struct._MIDI_FILE* %11, null, !dbg !2011
  br i1 %12, label %14, label %13, !dbg !2013

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !2014
  br label %40, !dbg !2014

; <label>:14:                                     ; preds = %3
  %15 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %8, align 4, !dbg !2015
  %16 = load i32, i32* %6, align 4, !dbg !2015
  %17 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %15, i32 %16), !dbg !2015
  %18 = icmp ne i32 %17, 0, !dbg !2015
  br i1 %18, label %20, label %19, !dbg !2017

; <label>:19:                                     ; preds = %14
  store i32 0, i32* %4, align 4, !dbg !2018
  br label %40, !dbg !2018

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %7, align 4, !dbg !2019
  %22 = and i32 %21, 7, !dbg !2020
  %23 = load i32, i32* %7, align 4, !dbg !2021
  %24 = and i32 %23, 128, !dbg !2022
  %25 = icmp ne i32 %24, 0, !dbg !2023
  %26 = zext i1 %25 to i64, !dbg !2023
  %27 = select i1 %25, i32 -1, i32 1, !dbg !2023
  %28 = mul i32 %22, %27, !dbg !2024
  %29 = trunc i32 %28 to i8, !dbg !2025
  store i8 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @midiSongAddKeySig.tmp, i32 0, i32 3), align 1, !dbg !2026
  %30 = load i32, i32* %7, align 4, !dbg !2027
  %31 = and i32 %30, 64, !dbg !2028
  %32 = icmp ne i32 %31, 0, !dbg !2029
  %33 = zext i1 %32 to i64, !dbg !2029
  %34 = select i1 %32, i32 1, i32 0, !dbg !2029
  %35 = trunc i32 %34 to i8, !dbg !2030
  store i8 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @midiSongAddKeySig.tmp, i32 0, i32 4), align 1, !dbg !2031
  %36 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %8, align 4, !dbg !2032
  %37 = bitcast %struct._MIDI_FILE* %36 to i8*, !dbg !2032
  %38 = load i32, i32* %6, align 4, !dbg !2033
  %39 = call i32 @midiTrackAddRaw(i8* %37, i32 %38, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @midiSongAddKeySig.tmp, i32 0, i32 0), i32 0, i32 0), !dbg !2034
  store i32 %39, i32* %4, align 4, !dbg !2035
  br label %40, !dbg !2035

; <label>:40:                                     ; preds = %20, %19, %13
  %41 = load i32, i32* %4, align 4, !dbg !2036
  ret i32 %41, !dbg !2036
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiSongAddTempo(i8*, i32, i32) #0 !dbg !400 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2037, metadata !502), !dbg !2038
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2039, metadata !502), !dbg !2040
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2041, metadata !502), !dbg !2042
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2043, metadata !502), !dbg !2044
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %9, metadata !2045, metadata !502), !dbg !2046
  %10 = load i8*, i8** %5, align 4, !dbg !2046
  %11 = bitcast i8* %10 to %struct._MIDI_FILE*, !dbg !2046
  store %struct._MIDI_FILE* %11, %struct._MIDI_FILE** %9, align 4, !dbg !2046
  %12 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %9, align 4, !dbg !2047
  %13 = icmp ne %struct._MIDI_FILE* %12, null, !dbg !2047
  br i1 %13, label %15, label %14, !dbg !2049

; <label>:14:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !2050
  br label %40, !dbg !2050

; <label>:15:                                     ; preds = %3
  %16 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %9, align 4, !dbg !2051
  %17 = load i32, i32* %6, align 4, !dbg !2051
  %18 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %16, i32 %17), !dbg !2051
  %19 = icmp ne i32 %18, 0, !dbg !2051
  br i1 %19, label %21, label %20, !dbg !2053

; <label>:20:                                     ; preds = %15
  store i32 0, i32* %4, align 4, !dbg !2054
  br label %40, !dbg !2054

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %7, align 4, !dbg !2055
  %23 = sdiv i32 60000000, %22, !dbg !2056
  store i32 %23, i32* %8, align 4, !dbg !2057
  %24 = load i32, i32* %8, align 4, !dbg !2058
  %25 = ashr i32 %24, 16, !dbg !2059
  %26 = and i32 %25, 255, !dbg !2060
  %27 = trunc i32 %26 to i8, !dbg !2061
  store i8 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @midiSongAddTempo.tmp, i32 0, i32 3), align 1, !dbg !2062
  %28 = load i32, i32* %8, align 4, !dbg !2063
  %29 = ashr i32 %28, 8, !dbg !2064
  %30 = and i32 %29, 255, !dbg !2065
  %31 = trunc i32 %30 to i8, !dbg !2066
  store i8 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @midiSongAddTempo.tmp, i32 0, i32 4), align 1, !dbg !2067
  %32 = load i32, i32* %8, align 4, !dbg !2068
  %33 = ashr i32 %32, 0, !dbg !2069
  %34 = and i32 %33, 255, !dbg !2070
  %35 = trunc i32 %34 to i8, !dbg !2071
  store i8 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @midiSongAddTempo.tmp, i32 0, i32 5), align 1, !dbg !2072
  %36 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %9, align 4, !dbg !2073
  %37 = bitcast %struct._MIDI_FILE* %36 to i8*, !dbg !2073
  %38 = load i32, i32* %6, align 4, !dbg !2074
  %39 = call i32 @midiTrackAddRaw(i8* %37, i32 %38, i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @midiSongAddTempo.tmp, i32 0, i32 0), i32 0, i32 0), !dbg !2075
  store i32 %39, i32* %4, align 4, !dbg !2076
  br label %40, !dbg !2076

; <label>:40:                                     ; preds = %21, %20, %14
  %41 = load i32, i32* %4, align 4, !dbg !2077
  ret i32 %41, !dbg !2077
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiSongAddMIDIPort(i8*, i32, i32) #0 !dbg !408 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2078, metadata !502), !dbg !2079
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2080, metadata !502), !dbg !2081
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2082, metadata !502), !dbg !2083
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %8, metadata !2084, metadata !502), !dbg !2085
  %9 = load i8*, i8** %5, align 4, !dbg !2085
  %10 = bitcast i8* %9 to %struct._MIDI_FILE*, !dbg !2085
  store %struct._MIDI_FILE* %10, %struct._MIDI_FILE** %8, align 4, !dbg !2085
  %11 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %8, align 4, !dbg !2086
  %12 = icmp ne %struct._MIDI_FILE* %11, null, !dbg !2086
  br i1 %12, label %14, label %13, !dbg !2088

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !2089
  br label %27, !dbg !2089

; <label>:14:                                     ; preds = %3
  %15 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %8, align 4, !dbg !2090
  %16 = load i32, i32* %6, align 4, !dbg !2090
  %17 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %15, i32 %16), !dbg !2090
  %18 = icmp ne i32 %17, 0, !dbg !2090
  br i1 %18, label %20, label %19, !dbg !2092

; <label>:19:                                     ; preds = %14
  store i32 0, i32* %4, align 4, !dbg !2093
  br label %27, !dbg !2093

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %7, align 4, !dbg !2094
  %22 = trunc i32 %21 to i8, !dbg !2095
  store i8 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @midiSongAddMIDIPort.tmp, i32 0, i32 3), align 1, !dbg !2096
  %23 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %8, align 4, !dbg !2097
  %24 = bitcast %struct._MIDI_FILE* %23 to i8*, !dbg !2097
  %25 = load i32, i32* %6, align 4, !dbg !2098
  %26 = call i32 @midiTrackAddRaw(i8* %24, i32 %25, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @midiSongAddMIDIPort.tmp, i32 0, i32 0), i32 0, i32 0), !dbg !2099
  store i32 %26, i32* %4, align 4, !dbg !2100
  br label %27, !dbg !2100

; <label>:27:                                     ; preds = %20, %19, %13
  %28 = load i32, i32* %4, align 4, !dbg !2101
  ret i32 %28, !dbg !2101
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackAddText(i8*, i32, i32, i8*) #0 !dbg !2102 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2106, metadata !502), !dbg !2107
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2108, metadata !502), !dbg !2109
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2110, metadata !502), !dbg !2111
  store i8* %3, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2112, metadata !502), !dbg !2113
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2114, metadata !502), !dbg !2115
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2116, metadata !502), !dbg !2117
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %12, metadata !2118, metadata !502), !dbg !2119
  %13 = load i8*, i8** %6, align 4, !dbg !2119
  %14 = bitcast i8* %13 to %struct._MIDI_FILE*, !dbg !2119
  store %struct._MIDI_FILE* %14, %struct._MIDI_FILE** %12, align 4, !dbg !2119
  %15 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %12, align 4, !dbg !2120
  %16 = icmp ne %struct._MIDI_FILE* %15, null, !dbg !2120
  br i1 %16, label %18, label %17, !dbg !2122

; <label>:17:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !2123
  br label %57, !dbg !2123

; <label>:18:                                     ; preds = %4
  %19 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %12, align 4, !dbg !2124
  %20 = load i32, i32* %7, align 4, !dbg !2124
  %21 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %19, i32 %20), !dbg !2124
  %22 = icmp ne i32 %21, 0, !dbg !2124
  br i1 %22, label %24, label %23, !dbg !2126

; <label>:23:                                     ; preds = %18
  store i32 0, i32* %5, align 4, !dbg !2127
  br label %57, !dbg !2127

; <label>:24:                                     ; preds = %18
  %25 = load i8*, i8** %9, align 4, !dbg !2128
  %26 = call i32 @strlen(i8* %25) #8, !dbg !2129
  store i32 %26, i32* %11, align 4, !dbg !2130
  %27 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %12, align 4, !dbg !2131
  %28 = load i32, i32* %7, align 4, !dbg !2133
  %29 = load i32, i32* %11, align 4, !dbg !2134
  %30 = add nsw i32 %29, 32, !dbg !2135
  %31 = call i8* @_midiGetPtr(%struct._MIDI_FILE* %27, i32 %28, i32 %30), !dbg !2136
  store i8* %31, i8** %10, align 4, !dbg !2137
  %32 = icmp ne i8* %31, null, !dbg !2137
  br i1 %32, label %33, label %56, !dbg !2138

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %10, align 4, !dbg !2139
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !2139
  store i8* %35, i8** %10, align 4, !dbg !2139
  store i8 0, i8* %34, align 1, !dbg !2141
  %36 = load i8*, i8** %10, align 4, !dbg !2142
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !2142
  store i8* %37, i8** %10, align 4, !dbg !2142
  store i8 -1, i8* %36, align 1, !dbg !2143
  %38 = load i32, i32* %8, align 4, !dbg !2144
  %39 = trunc i32 %38 to i8, !dbg !2145
  %40 = load i8*, i8** %10, align 4, !dbg !2146
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !2146
  store i8* %41, i8** %10, align 4, !dbg !2146
  store i8 %39, i8* %40, align 1, !dbg !2147
  %42 = load i8*, i8** %10, align 4, !dbg !2148
  %43 = load i32, i32* %11, align 4, !dbg !2149
  %44 = call i8* @_midiWriteVarLen(i8* %42, i32 %43), !dbg !2150
  store i8* %44, i8** %10, align 4, !dbg !2151
  %45 = load i8*, i8** %10, align 4, !dbg !2152
  %46 = load i8*, i8** %9, align 4, !dbg !2153
  %47 = call i8* @strcpy(i8* %45, i8* %46) #7, !dbg !2154
  %48 = load i8*, i8** %10, align 4, !dbg !2155
  %49 = load i32, i32* %11, align 4, !dbg !2156
  %50 = getelementptr inbounds i8, i8* %48, i32 %49, !dbg !2157
  %51 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %12, align 4, !dbg !2158
  %52 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %51, i32 0, i32 5, !dbg !2159
  %53 = load i32, i32* %7, align 4, !dbg !2160
  %54 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %52, i32 0, i32 %53, !dbg !2158
  %55 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %54, i32 0, i32 0, !dbg !2161
  store i8* %50, i8** %55, align 4, !dbg !2162
  store i32 1, i32* %5, align 4, !dbg !2163
  br label %57, !dbg !2163

; <label>:56:                                     ; preds = %24
  store i32 0, i32* %5, align 4, !dbg !2164
  br label %57, !dbg !2164

; <label>:57:                                     ; preds = %56, %33, %23, %17
  %58 = load i32, i32* %5, align 4, !dbg !2166
  ret i32 %58, !dbg !2166
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackSetKeyPressure(i8*, i32, i32, i32) #0 !dbg !2167 {
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2168, metadata !502), !dbg !2169
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2170, metadata !502), !dbg !2171
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2172, metadata !502), !dbg !2173
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2174, metadata !502), !dbg !2175
  %9 = load i8*, i8** %5, align 4, !dbg !2176
  %10 = load i32, i32* %6, align 4, !dbg !2177
  %11 = load i32, i32* %7, align 4, !dbg !2178
  %12 = load i32, i32* %8, align 4, !dbg !2179
  %13 = call i32 @midiTrackAddMsg(i8* %9, i32 %10, i32 160, i32 %11, i32 %12), !dbg !2180
  ret i32 %13, !dbg !2181
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackAddMsg(i8*, i32, i32, i32, i32) #0 !dbg !2182 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 4
  %13 = alloca [3 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2185, metadata !502), !dbg !2186
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2187, metadata !502), !dbg !2188
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2189, metadata !502), !dbg !2190
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2191, metadata !502), !dbg !2192
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2193, metadata !502), !dbg !2194
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2195, metadata !502), !dbg !2196
  call void @llvm.dbg.declare(metadata [3 x i8]* %13, metadata !2197, metadata !502), !dbg !2198
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2199, metadata !502), !dbg !2200
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %15, metadata !2201, metadata !502), !dbg !2202
  %16 = load i8*, i8** %7, align 4, !dbg !2202
  %17 = bitcast i8* %16 to %struct._MIDI_FILE*, !dbg !2202
  store %struct._MIDI_FILE* %17, %struct._MIDI_FILE** %15, align 4, !dbg !2202
  %18 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %15, align 4, !dbg !2203
  %19 = icmp ne %struct._MIDI_FILE* %18, null, !dbg !2203
  br i1 %19, label %21, label %20, !dbg !2205

; <label>:20:                                     ; preds = %5
  store i32 0, i32* %6, align 4, !dbg !2206
  br label %71, !dbg !2206

; <label>:21:                                     ; preds = %5
  %22 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %15, align 4, !dbg !2207
  %23 = load i32, i32* %8, align 4, !dbg !2207
  %24 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %22, i32 %23), !dbg !2207
  %25 = icmp ne i32 %24, 0, !dbg !2207
  br i1 %25, label %27, label %26, !dbg !2209

; <label>:26:                                     ; preds = %21
  store i32 0, i32* %6, align 4, !dbg !2210
  br label %71, !dbg !2210

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %9, align 4, !dbg !2211
  %29 = icmp uge i32 %28, 128, !dbg !2211
  br i1 %29, label %30, label %33, !dbg !2211

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %9, align 4, !dbg !2211
  %32 = icmp ule i32 %31, 255, !dbg !2211
  br i1 %32, label %34, label %33, !dbg !2213

; <label>:33:                                     ; preds = %30, %27
  store i32 0, i32* %6, align 4, !dbg !2214
  br label %71, !dbg !2214

; <label>:34:                                     ; preds = %30
  %35 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %15, align 4, !dbg !2215
  %36 = load i32, i32* %8, align 4, !dbg !2216
  %37 = call i8* @_midiGetPtr(%struct._MIDI_FILE* %35, i32 %36, i32 32), !dbg !2217
  store i8* %37, i8** %12, align 4, !dbg !2218
  %38 = load i8*, i8** %12, align 4, !dbg !2219
  %39 = icmp ne i8* %38, null, !dbg !2219
  br i1 %39, label %41, label %40, !dbg !2221

; <label>:40:                                     ; preds = %34
  store i32 0, i32* %6, align 4, !dbg !2222
  br label %71, !dbg !2222

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %9, align 4, !dbg !2223
  %43 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %15, align 4, !dbg !2224
  %44 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %43, i32 0, i32 5, !dbg !2225
  %45 = load i32, i32* %8, align 4, !dbg !2226
  %46 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %44, i32 0, i32 %45, !dbg !2224
  %47 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %46, i32 0, i32 7, !dbg !2227
  %48 = load i8, i8* %47, align 4, !dbg !2227
  %49 = zext i8 %48 to i32, !dbg !2224
  %50 = or i32 %42, %49, !dbg !2228
  %51 = trunc i32 %50 to i8, !dbg !2229
  %52 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i32 0, i32 0, !dbg !2230
  store i8 %51, i8* %52, align 1, !dbg !2231
  %53 = load i32, i32* %10, align 4, !dbg !2232
  %54 = and i32 %53, 127, !dbg !2233
  %55 = trunc i32 %54 to i8, !dbg !2234
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i32 0, i32 1, !dbg !2235
  store i8 %55, i8* %56, align 1, !dbg !2236
  %57 = load i32, i32* %11, align 4, !dbg !2237
  %58 = and i32 %57, 127, !dbg !2238
  %59 = trunc i32 %58 to i8, !dbg !2239
  %60 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i32 0, i32 2, !dbg !2240
  store i8 %59, i8* %60, align 1, !dbg !2241
  %61 = load i32, i32* %9, align 4, !dbg !2242
  switch i32 %61, label %63 [
    i32 192, label %62
    i32 208, label %62
  ], !dbg !2243

; <label>:62:                                     ; preds = %41, %41
  store i32 2, i32* %14, align 4, !dbg !2244
  br label %64, !dbg !2246

; <label>:63:                                     ; preds = %41
  store i32 3, i32* %14, align 4, !dbg !2247
  br label %64, !dbg !2248

; <label>:64:                                     ; preds = %63, %62
  %65 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %15, align 4, !dbg !2249
  %66 = bitcast %struct._MIDI_FILE* %65 to i8*, !dbg !2249
  %67 = load i32, i32* %8, align 4, !dbg !2250
  %68 = load i32, i32* %14, align 4, !dbg !2251
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i32 0, i32 0, !dbg !2252
  %70 = call i32 @midiTrackAddRaw(i8* %66, i32 %67, i32 %68, i8* %69, i32 0, i32 0), !dbg !2253
  store i32 %70, i32* %6, align 4, !dbg !2254
  br label %71, !dbg !2254

; <label>:71:                                     ; preds = %64, %40, %33, %26, %20
  %72 = load i32, i32* %6, align 4, !dbg !2255
  ret i32 %72, !dbg !2255
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackAddControlChange(i8*, i32, i32, i32) #0 !dbg !2256 {
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2259, metadata !502), !dbg !2260
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2261, metadata !502), !dbg !2262
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2263, metadata !502), !dbg !2264
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2265, metadata !502), !dbg !2266
  %9 = load i8*, i8** %5, align 4, !dbg !2267
  %10 = load i32, i32* %6, align 4, !dbg !2268
  %11 = load i32, i32* %7, align 4, !dbg !2269
  %12 = load i32, i32* %8, align 4, !dbg !2270
  %13 = call i32 @midiTrackAddMsg(i8* %9, i32 %10, i32 176, i32 %11, i32 %12), !dbg !2271
  ret i32 %13, !dbg !2272
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackAddProgramChange(i8*, i32, i32) #0 !dbg !2273 {
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2274, metadata !502), !dbg !2275
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2276, metadata !502), !dbg !2277
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2278, metadata !502), !dbg !2279
  %7 = load i8*, i8** %4, align 4, !dbg !2280
  %8 = load i32, i32* %5, align 4, !dbg !2281
  %9 = load i32, i32* %6, align 4, !dbg !2282
  %10 = call i32 @midiTrackAddMsg(i8* %7, i32 %8, i32 192, i32 %9, i32 0), !dbg !2283
  ret i32 %10, !dbg !2284
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackChangeKeyPressure(i8*, i32, i32) #0 !dbg !2285 {
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2286, metadata !502), !dbg !2287
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2288, metadata !502), !dbg !2289
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2290, metadata !502), !dbg !2291
  %7 = load i8*, i8** %4, align 4, !dbg !2292
  %8 = load i32, i32* %5, align 4, !dbg !2293
  %9 = load i32, i32* %6, align 4, !dbg !2294
  %10 = and i32 %9, 127, !dbg !2295
  %11 = call i32 @midiTrackAddMsg(i8* %7, i32 %8, i32 208, i32 %10, i32 0), !dbg !2296
  ret i32 %11, !dbg !2297
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackSetPitchWheel(i8*, i32, i32) #0 !dbg !2298 {
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2299, metadata !502), !dbg !2300
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2301, metadata !502), !dbg !2302
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2303, metadata !502), !dbg !2304
  call void @llvm.dbg.declare(metadata i16* %7, metadata !2305, metadata !502), !dbg !2306
  %8 = load i32, i32* %6, align 4, !dbg !2307
  %9 = trunc i32 %8 to i16, !dbg !2308
  store i16 %9, i16* %7, align 2, !dbg !2306
  %10 = load i16, i16* %7, align 2, !dbg !2309
  %11 = zext i16 %10 to i32, !dbg !2309
  %12 = add nsw i32 %11, 8192, !dbg !2309
  %13 = trunc i32 %12 to i16, !dbg !2309
  store i16 %13, i16* %7, align 2, !dbg !2309
  %14 = load i8*, i8** %4, align 4, !dbg !2310
  %15 = load i32, i32* %5, align 4, !dbg !2311
  %16 = load i16, i16* %7, align 2, !dbg !2312
  %17 = zext i16 %16 to i32, !dbg !2312
  %18 = and i32 %17, 127, !dbg !2313
  %19 = load i16, i16* %7, align 2, !dbg !2314
  %20 = zext i16 %19 to i32, !dbg !2314
  %21 = ashr i32 %20, 7, !dbg !2315
  %22 = and i32 %21, 127, !dbg !2316
  %23 = call i32 @midiTrackAddMsg(i8* %14, i32 %15, i32 224, i32 %18, i32 %22), !dbg !2317
  ret i32 %23, !dbg !2318
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackAddNote(i8*, i32, i32, i32, i32, i32, i32) #0 !dbg !2319 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.MIDI_FILE_TRACK*, align 4
  %17 = alloca i8*, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %9, align 4
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2322, metadata !502), !dbg !2323
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2324, metadata !502), !dbg !2325
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2326, metadata !502), !dbg !2327
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2328, metadata !502), !dbg !2329
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2330, metadata !502), !dbg !2331
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2332, metadata !502), !dbg !2333
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2334, metadata !502), !dbg !2335
  call void @llvm.dbg.declare(metadata %struct.MIDI_FILE_TRACK** %16, metadata !2336, metadata !502), !dbg !2337
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2338, metadata !502), !dbg !2339
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2340, metadata !502), !dbg !2341
  store i32 0, i32* %18, align 4, !dbg !2341
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2342, metadata !502), !dbg !2343
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2344, metadata !502), !dbg !2345
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %21, metadata !2346, metadata !502), !dbg !2347
  %22 = load i8*, i8** %9, align 4, !dbg !2347
  %23 = bitcast i8* %22 to %struct._MIDI_FILE*, !dbg !2347
  store %struct._MIDI_FILE* %23, %struct._MIDI_FILE** %21, align 4, !dbg !2347
  %24 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %21, align 4, !dbg !2348
  %25 = icmp ne %struct._MIDI_FILE* %24, null, !dbg !2348
  br i1 %25, label %27, label %26, !dbg !2350

; <label>:26:                                     ; preds = %7
  store i32 0, i32* %8, align 4, !dbg !2351
  br label %159, !dbg !2351

; <label>:27:                                     ; preds = %7
  %28 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %21, align 4, !dbg !2352
  %29 = load i32, i32* %10, align 4, !dbg !2352
  %30 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %28, i32 %29), !dbg !2352
  %31 = icmp ne i32 %30, 0, !dbg !2352
  br i1 %31, label %33, label %32, !dbg !2354

; <label>:32:                                     ; preds = %27
  store i32 0, i32* %8, align 4, !dbg !2355
  br label %159, !dbg !2355

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %11, align 4, !dbg !2356
  %35 = icmp sge i32 %34, 0, !dbg !2356
  br i1 %35, label %36, label %39, !dbg !2356

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %11, align 4, !dbg !2356
  %38 = icmp slt i32 %37, 128, !dbg !2356
  br i1 %38, label %40, label %39, !dbg !2358

; <label>:39:                                     ; preds = %36, %33
  store i32 0, i32* %8, align 4, !dbg !2359
  br label %159, !dbg !2359

; <label>:40:                                     ; preds = %36
  %41 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %21, align 4, !dbg !2360
  %42 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %41, i32 0, i32 5, !dbg !2361
  %43 = load i32, i32* %10, align 4, !dbg !2362
  %44 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %42, i32 0, i32 %43, !dbg !2360
  store %struct.MIDI_FILE_TRACK* %44, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2363
  %45 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %21, align 4, !dbg !2364
  %46 = load i32, i32* %10, align 4, !dbg !2365
  %47 = call i8* @_midiGetPtr(%struct._MIDI_FILE* %45, i32 %46, i32 32), !dbg !2366
  store i8* %47, i8** %17, align 4, !dbg !2367
  %48 = load i8*, i8** %17, align 4, !dbg !2368
  %49 = icmp ne i8* %48, null, !dbg !2368
  br i1 %49, label %51, label %50, !dbg !2370

; <label>:50:                                     ; preds = %40
  store i32 0, i32* %8, align 4, !dbg !2371
  br label %159, !dbg !2371

; <label>:51:                                     ; preds = %40
  %52 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2372
  %53 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %52, i32 0, i32 7, !dbg !2373
  %54 = load i8, i8* %53, align 4, !dbg !2373
  %55 = zext i8 %54 to i32, !dbg !2372
  store i32 %55, i32* %20, align 4, !dbg !2374
  %56 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %21, align 4, !dbg !2375
  %57 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %56, i32 0, i32 2, !dbg !2376
  %58 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %57, i32 0, i32 3, !dbg !2377
  %59 = load i16, i16* %58, align 4, !dbg !2377
  %60 = zext i16 %59 to i32, !dbg !2375
  %61 = load i32, i32* %12, align 4, !dbg !2378
  %62 = load i32, i32* %15, align 4, !dbg !2379
  %63 = call i32 @_midiGetLength(i32 %60, i32 %61, i32 %62), !dbg !2380
  store i32 %63, i32* %12, align 4, !dbg !2381
  store i32 0, i32* %19, align 4, !dbg !2382
  br label %64, !dbg !2384

; <label>:64:                                     ; preds = %129, %51
  %65 = load i32, i32* %19, align 4, !dbg !2385
  %66 = icmp ult i32 %65, 64, !dbg !2387
  br i1 %66, label %67, label %132, !dbg !2388

; <label>:67:                                     ; preds = %64
  %68 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2389
  %69 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %68, i32 0, i32 9, !dbg !2391
  %70 = load i32, i32* %19, align 4, !dbg !2392
  %71 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %69, i32 0, i32 %70, !dbg !2389
  %72 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %71, i32 0, i32 2, !dbg !2393
  %73 = load i8, i8* %72, align 2, !dbg !2393
  %74 = zext i8 %73 to i32, !dbg !2389
  %75 = icmp eq i32 %74, 0, !dbg !2394
  br i1 %75, label %76, label %128, !dbg !2395

; <label>:76:                                     ; preds = %67
  %77 = load i32, i32* %11, align 4, !dbg !2396
  %78 = trunc i32 %77 to i8, !dbg !2398
  %79 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2399
  %80 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %79, i32 0, i32 9, !dbg !2400
  %81 = load i32, i32* %19, align 4, !dbg !2401
  %82 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %80, i32 0, i32 %81, !dbg !2399
  %83 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %82, i32 0, i32 0, !dbg !2402
  store i8 %78, i8* %83, align 4, !dbg !2403
  %84 = load i32, i32* %20, align 4, !dbg !2404
  %85 = trunc i32 %84 to i8, !dbg !2405
  %86 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2406
  %87 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %86, i32 0, i32 9, !dbg !2407
  %88 = load i32, i32* %19, align 4, !dbg !2408
  %89 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %87, i32 0, i32 %88, !dbg !2406
  %90 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %89, i32 0, i32 1, !dbg !2409
  store i8 %85, i8* %90, align 1, !dbg !2410
  %91 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2411
  %92 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %91, i32 0, i32 3, !dbg !2412
  %93 = load i32, i32* %92, align 4, !dbg !2412
  %94 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2413
  %95 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %94, i32 0, i32 4, !dbg !2414
  %96 = load i32, i32* %95, align 4, !dbg !2414
  %97 = add i32 %93, %96, !dbg !2415
  %98 = load i32, i32* %12, align 4, !dbg !2416
  %99 = add i32 %97, %98, !dbg !2417
  %100 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2418
  %101 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %100, i32 0, i32 9, !dbg !2419
  %102 = load i32, i32* %19, align 4, !dbg !2420
  %103 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %101, i32 0, i32 %102, !dbg !2418
  %104 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %103, i32 0, i32 4, !dbg !2421
  store i32 %99, i32* %104, align 4, !dbg !2422
  %105 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2423
  %106 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %105, i32 0, i32 9, !dbg !2424
  %107 = load i32, i32* %19, align 4, !dbg !2425
  %108 = getelementptr inbounds [64 x %struct.MIDI_LAST_NOTE], [64 x %struct.MIDI_LAST_NOTE]* %106, i32 0, i32 %107, !dbg !2423
  %109 = getelementptr inbounds %struct.MIDI_LAST_NOTE, %struct.MIDI_LAST_NOTE* %108, i32 0, i32 2, !dbg !2426
  store i8 1, i8* %109, align 2, !dbg !2427
  store i32 1, i32* %18, align 4, !dbg !2428
  %110 = load i8*, i8** %17, align 4, !dbg !2429
  %111 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2430
  %112 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %111, i32 0, i32 4, !dbg !2431
  %113 = load i32, i32* %112, align 4, !dbg !2431
  %114 = call i8* @_midiWriteVarLen(i8* %110, i32 %113), !dbg !2432
  store i8* %114, i8** %17, align 4, !dbg !2433
  %115 = load i32, i32* %20, align 4, !dbg !2434
  %116 = or i32 144, %115, !dbg !2435
  %117 = trunc i32 %116 to i8, !dbg !2436
  %118 = load i8*, i8** %17, align 4, !dbg !2437
  %119 = getelementptr inbounds i8, i8* %118, i32 1, !dbg !2437
  store i8* %119, i8** %17, align 4, !dbg !2437
  store i8 %117, i8* %118, align 1, !dbg !2438
  %120 = load i32, i32* %11, align 4, !dbg !2439
  %121 = trunc i32 %120 to i8, !dbg !2440
  %122 = load i8*, i8** %17, align 4, !dbg !2441
  %123 = getelementptr inbounds i8, i8* %122, i32 1, !dbg !2441
  store i8* %123, i8** %17, align 4, !dbg !2441
  store i8 %121, i8* %122, align 1, !dbg !2442
  %124 = load i32, i32* %13, align 4, !dbg !2443
  %125 = trunc i32 %124 to i8, !dbg !2444
  %126 = load i8*, i8** %17, align 4, !dbg !2445
  %127 = getelementptr inbounds i8, i8* %126, i32 1, !dbg !2445
  store i8* %127, i8** %17, align 4, !dbg !2445
  store i8 %125, i8* %126, align 1, !dbg !2446
  br label %132, !dbg !2447

; <label>:128:                                    ; preds = %67
  br label %129, !dbg !2448

; <label>:129:                                    ; preds = %128
  %130 = load i32, i32* %19, align 4, !dbg !2449
  %131 = add nsw i32 %130, 1, !dbg !2449
  store i32 %131, i32* %19, align 4, !dbg !2449
  br label %64, !dbg !2450, !llvm.loop !2451

; <label>:132:                                    ; preds = %76, %64
  %133 = load i32, i32* %18, align 4, !dbg !2453
  %134 = icmp ne i32 %133, 0, !dbg !2453
  br i1 %134, label %136, label %135, !dbg !2455

; <label>:135:                                    ; preds = %132
  store i32 0, i32* %8, align 4, !dbg !2456
  br label %159, !dbg !2456

; <label>:136:                                    ; preds = %132
  %137 = load i8*, i8** %17, align 4, !dbg !2457
  %138 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2458
  %139 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %138, i32 0, i32 0, !dbg !2459
  store i8* %137, i8** %139, align 4, !dbg !2460
  %140 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2461
  %141 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %140, i32 0, i32 4, !dbg !2462
  %142 = load i32, i32* %141, align 4, !dbg !2462
  %143 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2463
  %144 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %143, i32 0, i32 3, !dbg !2464
  %145 = load i32, i32* %144, align 4, !dbg !2465
  %146 = add i32 %145, %142, !dbg !2465
  store i32 %146, i32* %144, align 4, !dbg !2465
  %147 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %16, align 4, !dbg !2466
  %148 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %147, i32 0, i32 4, !dbg !2467
  store i32 0, i32* %148, align 4, !dbg !2468
  %149 = load i32, i32* %14, align 4, !dbg !2469
  %150 = icmp ne i32 %149, 0, !dbg !2469
  br i1 %150, label %151, label %158, !dbg !2471

; <label>:151:                                    ; preds = %136
  %152 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %21, align 4, !dbg !2472
  %153 = bitcast %struct._MIDI_FILE* %152 to i8*, !dbg !2472
  %154 = load i32, i32* %10, align 4, !dbg !2473
  %155 = load i32, i32* %12, align 4, !dbg !2474
  %156 = load i32, i32* %15, align 4, !dbg !2475
  %157 = call i32 @midiTrackIncTime(i8* %153, i32 %154, i32 %155, i32 %156), !dbg !2476
  store i32 %157, i32* %8, align 4, !dbg !2477
  br label %159, !dbg !2477

; <label>:158:                                    ; preds = %136
  store i32 1, i32* %8, align 4, !dbg !2478
  br label %159, !dbg !2478

; <label>:159:                                    ; preds = %158, %151, %135, %50, %39, %32, %26
  %160 = load i32, i32* %8, align 4, !dbg !2479
  ret i32 %160, !dbg !2479
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackAddRest(i8*, i32, i32, i32) #0 !dbg !2480 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2481, metadata !502), !dbg !2482
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2483, metadata !502), !dbg !2484
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2485, metadata !502), !dbg !2486
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2487, metadata !502), !dbg !2488
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %10, metadata !2489, metadata !502), !dbg !2490
  %11 = load i8*, i8** %6, align 4, !dbg !2490
  %12 = bitcast i8* %11 to %struct._MIDI_FILE*, !dbg !2490
  store %struct._MIDI_FILE* %12, %struct._MIDI_FILE** %10, align 4, !dbg !2490
  %13 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !2491
  %14 = icmp ne %struct._MIDI_FILE* %13, null, !dbg !2491
  br i1 %14, label %16, label %15, !dbg !2493

; <label>:15:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !2494
  br label %37, !dbg !2494

; <label>:16:                                     ; preds = %4
  %17 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !2495
  %18 = load i32, i32* %7, align 4, !dbg !2495
  %19 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %17, i32 %18), !dbg !2495
  %20 = icmp ne i32 %19, 0, !dbg !2495
  br i1 %20, label %22, label %21, !dbg !2497

; <label>:21:                                     ; preds = %16
  store i32 0, i32* %5, align 4, !dbg !2498
  br label %37, !dbg !2498

; <label>:22:                                     ; preds = %16
  %23 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !2499
  %24 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %23, i32 0, i32 2, !dbg !2500
  %25 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %24, i32 0, i32 3, !dbg !2501
  %26 = load i16, i16* %25, align 4, !dbg !2501
  %27 = zext i16 %26 to i32, !dbg !2499
  %28 = load i32, i32* %8, align 4, !dbg !2502
  %29 = load i32, i32* %9, align 4, !dbg !2503
  %30 = call i32 @_midiGetLength(i32 %27, i32 %28, i32 %29), !dbg !2504
  store i32 %30, i32* %8, align 4, !dbg !2505
  %31 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %10, align 4, !dbg !2506
  %32 = bitcast %struct._MIDI_FILE* %31 to i8*, !dbg !2506
  %33 = load i32, i32* %7, align 4, !dbg !2507
  %34 = load i32, i32* %8, align 4, !dbg !2508
  %35 = load i32, i32* %9, align 4, !dbg !2509
  %36 = call i32 @midiTrackIncTime(i8* %32, i32 %33, i32 %34, i32 %35), !dbg !2510
  store i32 %36, i32* %5, align 4, !dbg !2511
  br label %37, !dbg !2511

; <label>:37:                                     ; preds = %22, %21, %15
  %38 = load i32, i32* %5, align 4, !dbg !2512
  ret i32 %38, !dbg !2512
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiTrackGetEndPos(i8*, i32) #0 !dbg !2513 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2514, metadata !502), !dbg !2515
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2516, metadata !502), !dbg !2517
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %6, metadata !2518, metadata !502), !dbg !2519
  %7 = load i8*, i8** %4, align 4, !dbg !2519
  %8 = bitcast i8* %7 to %struct._MIDI_FILE*, !dbg !2519
  store %struct._MIDI_FILE* %8, %struct._MIDI_FILE** %6, align 4, !dbg !2519
  %9 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !2520
  %10 = icmp ne %struct._MIDI_FILE* %9, null, !dbg !2520
  br i1 %10, label %12, label %11, !dbg !2522

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !2523
  br label %25, !dbg !2523

; <label>:12:                                     ; preds = %2
  %13 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !2524
  %14 = load i32, i32* %5, align 4, !dbg !2524
  %15 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %13, i32 %14), !dbg !2524
  %16 = icmp ne i32 %15, 0, !dbg !2524
  br i1 %16, label %18, label %17, !dbg !2526

; <label>:17:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !2527
  br label %25, !dbg !2527

; <label>:18:                                     ; preds = %12
  %19 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %6, align 4, !dbg !2528
  %20 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %19, i32 0, i32 5, !dbg !2529
  %21 = load i32, i32* %5, align 4, !dbg !2530
  %22 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %20, i32 0, i32 %21, !dbg !2528
  %23 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %22, i32 0, i32 3, !dbg !2531
  %24 = load i32, i32* %23, align 4, !dbg !2531
  store i32 %24, i32* %3, align 4, !dbg !2532
  br label %25, !dbg !2532

; <label>:25:                                     ; preds = %18, %17, %11
  %26 = load i32, i32* %3, align 4, !dbg !2533
  ret i32 %26, !dbg !2533
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiReadGetNumTracks(i8*) #0 !dbg !2534 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct._MIDI_FILE*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2535, metadata !502), !dbg !2536
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %3, metadata !2537, metadata !502), !dbg !2538
  %4 = load i8*, i8** %2, align 4, !dbg !2538
  %5 = bitcast i8* %4 to %struct._MIDI_FILE*, !dbg !2538
  store %struct._MIDI_FILE* %5, %struct._MIDI_FILE** %3, align 4, !dbg !2538
  %6 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %3, align 4, !dbg !2539
  %7 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %6, i32 0, i32 2, !dbg !2540
  %8 = getelementptr inbounds %struct.MIDI_HEADER, %struct.MIDI_HEADER* %7, i32 0, i32 2, !dbg !2541
  %9 = load i16, i16* %8, align 2, !dbg !2541
  %10 = zext i16 %9 to i32, !dbg !2539
  ret i32 %10, !dbg !2542
}

; Function Attrs: noinline nounwind optnone
define internal i32 @midiReadGetNextMessage(i8*, i32, %struct.MIDI_MSG*) #0 !dbg !2543 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.MIDI_MSG*, align 4
  %8 = alloca %struct.MIDI_FILE_TRACK*, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._MIDI_FILE*, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2645, metadata !502), !dbg !2646
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2647, metadata !502), !dbg !2648
  store %struct.MIDI_MSG* %2, %struct.MIDI_MSG** %7, align 4
  call void @llvm.dbg.declare(metadata %struct.MIDI_MSG** %7, metadata !2649, metadata !502), !dbg !2650
  call void @llvm.dbg.declare(metadata %struct.MIDI_FILE_TRACK** %8, metadata !2651, metadata !502), !dbg !2652
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2653, metadata !502), !dbg !2654
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2655, metadata !502), !dbg !2656
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2657, metadata !502), !dbg !2658
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %12, metadata !2659, metadata !502), !dbg !2660
  %14 = load i8*, i8** %5, align 4, !dbg !2660
  %15 = bitcast i8* %14 to %struct._MIDI_FILE*, !dbg !2660
  store %struct._MIDI_FILE* %15, %struct._MIDI_FILE** %12, align 4, !dbg !2660
  %16 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %12, align 4, !dbg !2661
  %17 = load i32, i32* %6, align 4, !dbg !2661
  %18 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %16, i32 %17), !dbg !2661
  %19 = icmp ne i32 %18, 0, !dbg !2661
  br i1 %19, label %21, label %20, !dbg !2663

; <label>:20:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !2664
  br label %682, !dbg !2664

; <label>:21:                                     ; preds = %3
  %22 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %12, align 4, !dbg !2665
  %23 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %22, i32 0, i32 5, !dbg !2666
  %24 = load i32, i32* %6, align 4, !dbg !2667
  %25 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %23, i32 0, i32 %24, !dbg !2665
  store %struct.MIDI_FILE_TRACK* %25, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2668
  %26 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2669
  %27 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %26, i32 0, i32 0, !dbg !2671
  %28 = load i8*, i8** %27, align 4, !dbg !2671
  %29 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2672
  %30 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %29, i32 0, i32 2, !dbg !2673
  %31 = load i8*, i8** %30, align 4, !dbg !2673
  %32 = icmp uge i8* %28, %31, !dbg !2674
  br i1 %32, label %33, label %34, !dbg !2675

; <label>:33:                                     ; preds = %21
  store i32 0, i32* %4, align 4, !dbg !2676
  br label %682, !dbg !2676

; <label>:34:                                     ; preds = %21
  %35 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2677
  %36 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %35, i32 0, i32 0, !dbg !2678
  %37 = load i8*, i8** %36, align 4, !dbg !2678
  %38 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2679
  %39 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %38, i32 0, i32 1, !dbg !2680
  %40 = call i8* @_midiReadVarLen(i8* %37, i32* %39), !dbg !2681
  %41 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2682
  %42 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %41, i32 0, i32 0, !dbg !2683
  store i8* %40, i8** %42, align 4, !dbg !2684
  %43 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2685
  %44 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %43, i32 0, i32 1, !dbg !2686
  %45 = load i32, i32* %44, align 4, !dbg !2686
  %46 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2687
  %47 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %46, i32 0, i32 3, !dbg !2688
  %48 = load i32, i32* %47, align 4, !dbg !2689
  %49 = add i32 %48, %45, !dbg !2689
  store i32 %49, i32* %47, align 4, !dbg !2689
  %50 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2690
  %51 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %50, i32 0, i32 3, !dbg !2691
  %52 = load i32, i32* %51, align 4, !dbg !2691
  %53 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2692
  %54 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %53, i32 0, i32 2, !dbg !2693
  store i32 %52, i32* %54, align 4, !dbg !2694
  %55 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2695
  %56 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %55, i32 0, i32 0, !dbg !2697
  %57 = load i8*, i8** %56, align 4, !dbg !2697
  %58 = load i8, i8* %57, align 1, !dbg !2698
  %59 = zext i8 %58 to i32, !dbg !2698
  %60 = and i32 %59, 128, !dbg !2699
  %61 = icmp ne i32 %60, 0, !dbg !2699
  br i1 %61, label %62, label %88, !dbg !2700

; <label>:62:                                     ; preds = %34
  %63 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2701
  %64 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %63, i32 0, i32 0, !dbg !2703
  %65 = load i8*, i8** %64, align 4, !dbg !2703
  %66 = load i8, i8* %65, align 1, !dbg !2704
  %67 = zext i8 %66 to i32, !dbg !2705
  %68 = and i32 %67, 240, !dbg !2706
  %69 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2707
  %70 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %69, i32 0, i32 0, !dbg !2708
  store i32 %68, i32* %70, align 4, !dbg !2709
  %71 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2710
  %72 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %71, i32 0, i32 0, !dbg !2711
  %73 = load i8*, i8** %72, align 4, !dbg !2711
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !2712
  store i8* %74, i8** %10, align 4, !dbg !2713
  %75 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2714
  %76 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %75, i32 0, i32 0, !dbg !2716
  %77 = load i32, i32* %76, align 4, !dbg !2716
  %78 = icmp eq i32 %77, 240, !dbg !2717
  br i1 %78, label %79, label %87, !dbg !2718

; <label>:79:                                     ; preds = %62
  %80 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2719
  %81 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %80, i32 0, i32 0, !dbg !2720
  %82 = load i8*, i8** %81, align 4, !dbg !2720
  %83 = load i8, i8* %82, align 1, !dbg !2721
  %84 = zext i8 %83 to i32, !dbg !2722
  %85 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2723
  %86 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %85, i32 0, i32 0, !dbg !2724
  store i32 %84, i32* %86, align 4, !dbg !2725
  br label %87, !dbg !2723

; <label>:87:                                     ; preds = %79, %62
  br label %97, !dbg !2726

; <label>:88:                                     ; preds = %34
  %89 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2727
  %90 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %89, i32 0, i32 9, !dbg !2729
  %91 = load i32, i32* %90, align 4, !dbg !2729
  %92 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2730
  %93 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %92, i32 0, i32 0, !dbg !2731
  store i32 %91, i32* %93, align 4, !dbg !2732
  %94 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2733
  %95 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %94, i32 0, i32 0, !dbg !2734
  %96 = load i8*, i8** %95, align 4, !dbg !2734
  store i8* %96, i8** %10, align 4, !dbg !2735
  br label %97

; <label>:97:                                     ; preds = %88, %87
  %98 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2736
  %99 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %98, i32 0, i32 0, !dbg !2737
  %100 = load i32, i32* %99, align 4, !dbg !2737
  %101 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2738
  %102 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %101, i32 0, i32 9, !dbg !2739
  store i32 %100, i32* %102, align 4, !dbg !2740
  %103 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2741
  %104 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %103, i32 0, i32 0, !dbg !2742
  %105 = load i8*, i8** %104, align 4, !dbg !2742
  %106 = load i8, i8* %105, align 1, !dbg !2743
  %107 = zext i8 %106 to i32, !dbg !2744
  %108 = and i32 %107, 15, !dbg !2745
  %109 = trunc i32 %108 to i8, !dbg !2746
  %110 = zext i8 %109 to i32, !dbg !2746
  %111 = add nsw i32 %110, 1, !dbg !2747
  %112 = trunc i32 %111 to i8, !dbg !2746
  %113 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2748
  %114 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %113, i32 0, i32 10, !dbg !2749
  store i8 %112, i8* %114, align 4, !dbg !2750
  %115 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2751
  %116 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %115, i32 0, i32 0, !dbg !2752
  %117 = load i32, i32* %116, align 4, !dbg !2752
  switch i32 %117, label %636 [
    i32 144, label %118
    i32 128, label %144
    i32 160, label %162
    i32 176, label %188
    i32 192, label %214
    i32 208, label %232
    i32 224, label %250
    i32 255, label %280
    i32 240, label %576
    i32 247, label %576
  ], !dbg !2753

; <label>:118:                                    ; preds = %97
  %119 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2754
  %120 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %119, i32 0, i32 10, !dbg !2756
  %121 = load i8, i8* %120, align 4, !dbg !2756
  %122 = zext i8 %121 to i32, !dbg !2754
  %123 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2757
  %124 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %123, i32 0, i32 8, !dbg !2758
  %125 = bitcast %union.anon* %124 to %struct.anon*, !dbg !2759
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 1, !dbg !2760
  store i32 %122, i32* %126, align 4, !dbg !2761
  %127 = load i8*, i8** %10, align 4, !dbg !2762
  %128 = load i8, i8* %127, align 1, !dbg !2763
  %129 = zext i8 %128 to i32, !dbg !2763
  %130 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2764
  %131 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %130, i32 0, i32 8, !dbg !2765
  %132 = bitcast %union.anon* %131 to %struct.anon*, !dbg !2766
  %133 = getelementptr inbounds %struct.anon, %struct.anon* %132, i32 0, i32 0, !dbg !2767
  store i32 %129, i32* %133, align 4, !dbg !2768
  %134 = load i8*, i8** %10, align 4, !dbg !2769
  %135 = getelementptr inbounds i8, i8* %134, i32 1, !dbg !2770
  %136 = load i8, i8* %135, align 1, !dbg !2771
  %137 = zext i8 %136 to i32, !dbg !2771
  %138 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2772
  %139 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %138, i32 0, i32 8, !dbg !2773
  %140 = bitcast %union.anon* %139 to %struct.anon*, !dbg !2774
  %141 = getelementptr inbounds %struct.anon, %struct.anon* %140, i32 0, i32 2, !dbg !2775
  store i32 %137, i32* %141, align 4, !dbg !2776
  %142 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2777
  %143 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %142, i32 0, i32 3, !dbg !2778
  store i32 3, i32* %143, align 4, !dbg !2779
  br label %636, !dbg !2780

; <label>:144:                                    ; preds = %97
  %145 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2781
  %146 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %145, i32 0, i32 10, !dbg !2782
  %147 = load i8, i8* %146, align 4, !dbg !2782
  %148 = zext i8 %147 to i32, !dbg !2781
  %149 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2783
  %150 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %149, i32 0, i32 8, !dbg !2784
  %151 = bitcast %union.anon* %150 to %struct.MIDI_END_POINT*, !dbg !2785
  %152 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %151, i32 0, i32 1, !dbg !2786
  store i32 %148, i32* %152, align 4, !dbg !2787
  %153 = load i8*, i8** %10, align 4, !dbg !2788
  %154 = load i8, i8* %153, align 1, !dbg !2789
  %155 = zext i8 %154 to i32, !dbg !2789
  %156 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2790
  %157 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %156, i32 0, i32 8, !dbg !2791
  %158 = bitcast %union.anon* %157 to %struct.MIDI_END_POINT*, !dbg !2792
  %159 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %158, i32 0, i32 0, !dbg !2793
  store i32 %155, i32* %159, align 4, !dbg !2794
  %160 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2795
  %161 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %160, i32 0, i32 3, !dbg !2796
  store i32 3, i32* %161, align 4, !dbg !2797
  br label %636, !dbg !2798

; <label>:162:                                    ; preds = %97
  %163 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2799
  %164 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %163, i32 0, i32 10, !dbg !2800
  %165 = load i8, i8* %164, align 4, !dbg !2800
  %166 = zext i8 %165 to i32, !dbg !2799
  %167 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2801
  %168 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %167, i32 0, i32 8, !dbg !2802
  %169 = bitcast %union.anon* %168 to %struct.anon*, !dbg !2803
  %170 = getelementptr inbounds %struct.anon, %struct.anon* %169, i32 0, i32 1, !dbg !2804
  store i32 %166, i32* %170, align 4, !dbg !2805
  %171 = load i8*, i8** %10, align 4, !dbg !2806
  %172 = load i8, i8* %171, align 1, !dbg !2807
  %173 = zext i8 %172 to i32, !dbg !2807
  %174 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2808
  %175 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %174, i32 0, i32 8, !dbg !2809
  %176 = bitcast %union.anon* %175 to %struct.anon*, !dbg !2810
  %177 = getelementptr inbounds %struct.anon, %struct.anon* %176, i32 0, i32 0, !dbg !2811
  store i32 %173, i32* %177, align 4, !dbg !2812
  %178 = load i8*, i8** %10, align 4, !dbg !2813
  %179 = getelementptr inbounds i8, i8* %178, i32 1, !dbg !2814
  %180 = load i8, i8* %179, align 1, !dbg !2815
  %181 = zext i8 %180 to i32, !dbg !2815
  %182 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2816
  %183 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %182, i32 0, i32 8, !dbg !2817
  %184 = bitcast %union.anon* %183 to %struct.anon*, !dbg !2818
  %185 = getelementptr inbounds %struct.anon, %struct.anon* %184, i32 0, i32 2, !dbg !2819
  store i32 %181, i32* %185, align 4, !dbg !2820
  %186 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2821
  %187 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %186, i32 0, i32 3, !dbg !2822
  store i32 3, i32* %187, align 4, !dbg !2823
  br label %636, !dbg !2824

; <label>:188:                                    ; preds = %97
  %189 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2825
  %190 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %189, i32 0, i32 10, !dbg !2826
  %191 = load i8, i8* %190, align 4, !dbg !2826
  %192 = zext i8 %191 to i32, !dbg !2825
  %193 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2827
  %194 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %193, i32 0, i32 8, !dbg !2828
  %195 = bitcast %union.anon* %194 to %struct.anon*, !dbg !2829
  %196 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 0, !dbg !2830
  store i32 %192, i32* %196, align 4, !dbg !2831
  %197 = load i8*, i8** %10, align 4, !dbg !2832
  %198 = load i8, i8* %197, align 1, !dbg !2833
  %199 = zext i8 %198 to i32, !dbg !2834
  %200 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2835
  %201 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %200, i32 0, i32 8, !dbg !2836
  %202 = bitcast %union.anon* %201 to %struct.anon*, !dbg !2837
  %203 = getelementptr inbounds %struct.anon, %struct.anon* %202, i32 0, i32 1, !dbg !2838
  store i32 %199, i32* %203, align 4, !dbg !2839
  %204 = load i8*, i8** %10, align 4, !dbg !2840
  %205 = getelementptr inbounds i8, i8* %204, i32 1, !dbg !2841
  %206 = load i8, i8* %205, align 1, !dbg !2842
  %207 = zext i8 %206 to i32, !dbg !2842
  %208 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2843
  %209 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %208, i32 0, i32 8, !dbg !2844
  %210 = bitcast %union.anon* %209 to %struct.anon*, !dbg !2845
  %211 = getelementptr inbounds %struct.anon, %struct.anon* %210, i32 0, i32 2, !dbg !2846
  store i32 %207, i32* %211, align 4, !dbg !2847
  %212 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2848
  %213 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %212, i32 0, i32 3, !dbg !2849
  store i32 3, i32* %213, align 4, !dbg !2850
  br label %636, !dbg !2851

; <label>:214:                                    ; preds = %97
  %215 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2852
  %216 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %215, i32 0, i32 10, !dbg !2853
  %217 = load i8, i8* %216, align 4, !dbg !2853
  %218 = zext i8 %217 to i32, !dbg !2852
  %219 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2854
  %220 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %219, i32 0, i32 8, !dbg !2855
  %221 = bitcast %union.anon* %220 to %struct.MIDI_END_POINT*, !dbg !2856
  %222 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %221, i32 0, i32 0, !dbg !2857
  store i32 %218, i32* %222, align 4, !dbg !2858
  %223 = load i8*, i8** %10, align 4, !dbg !2859
  %224 = load i8, i8* %223, align 1, !dbg !2860
  %225 = zext i8 %224 to i32, !dbg !2860
  %226 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2861
  %227 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %226, i32 0, i32 8, !dbg !2862
  %228 = bitcast %union.anon* %227 to %struct.MIDI_END_POINT*, !dbg !2863
  %229 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %228, i32 0, i32 1, !dbg !2864
  store i32 %225, i32* %229, align 4, !dbg !2865
  %230 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2866
  %231 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %230, i32 0, i32 3, !dbg !2867
  store i32 2, i32* %231, align 4, !dbg !2868
  br label %636, !dbg !2869

; <label>:232:                                    ; preds = %97
  %233 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2870
  %234 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %233, i32 0, i32 10, !dbg !2871
  %235 = load i8, i8* %234, align 4, !dbg !2871
  %236 = zext i8 %235 to i32, !dbg !2870
  %237 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2872
  %238 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %237, i32 0, i32 8, !dbg !2873
  %239 = bitcast %union.anon* %238 to %struct.MIDI_END_POINT*, !dbg !2874
  %240 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %239, i32 0, i32 0, !dbg !2875
  store i32 %236, i32* %240, align 4, !dbg !2876
  %241 = load i8*, i8** %10, align 4, !dbg !2877
  %242 = load i8, i8* %241, align 1, !dbg !2878
  %243 = zext i8 %242 to i32, !dbg !2878
  %244 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2879
  %245 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %244, i32 0, i32 8, !dbg !2880
  %246 = bitcast %union.anon* %245 to %struct.MIDI_END_POINT*, !dbg !2881
  %247 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %246, i32 0, i32 1, !dbg !2882
  store i32 %243, i32* %247, align 4, !dbg !2883
  %248 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2884
  %249 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %248, i32 0, i32 3, !dbg !2885
  store i32 2, i32* %249, align 4, !dbg !2886
  br label %636, !dbg !2887

; <label>:250:                                    ; preds = %97
  %251 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2888
  %252 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %251, i32 0, i32 10, !dbg !2889
  %253 = load i8, i8* %252, align 4, !dbg !2889
  %254 = zext i8 %253 to i32, !dbg !2888
  %255 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2890
  %256 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %255, i32 0, i32 8, !dbg !2891
  %257 = bitcast %union.anon* %256 to %struct.MIDI_END_POINT*, !dbg !2892
  %258 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %257, i32 0, i32 0, !dbg !2893
  store i32 %254, i32* %258, align 4, !dbg !2894
  %259 = load i8*, i8** %10, align 4, !dbg !2895
  %260 = load i8, i8* %259, align 1, !dbg !2896
  %261 = zext i8 %260 to i32, !dbg !2896
  %262 = load i8*, i8** %10, align 4, !dbg !2897
  %263 = getelementptr inbounds i8, i8* %262, i32 1, !dbg !2898
  %264 = load i8, i8* %263, align 1, !dbg !2899
  %265 = zext i8 %264 to i32, !dbg !2899
  %266 = shl i32 %265, 7, !dbg !2900
  %267 = or i32 %261, %266, !dbg !2901
  %268 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2902
  %269 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %268, i32 0, i32 8, !dbg !2903
  %270 = bitcast %union.anon* %269 to %struct.MIDI_END_POINT*, !dbg !2904
  %271 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %270, i32 0, i32 1, !dbg !2905
  store i32 %267, i32* %271, align 4, !dbg !2906
  %272 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2907
  %273 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %272, i32 0, i32 8, !dbg !2908
  %274 = bitcast %union.anon* %273 to %struct.MIDI_END_POINT*, !dbg !2909
  %275 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %274, i32 0, i32 1, !dbg !2910
  %276 = load i32, i32* %275, align 4, !dbg !2911
  %277 = sub nsw i32 %276, 8192, !dbg !2911
  store i32 %277, i32* %275, align 4, !dbg !2911
  %278 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2912
  %279 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %278, i32 0, i32 3, !dbg !2913
  store i32 3, i32* %279, align 4, !dbg !2914
  br label %636, !dbg !2915

; <label>:280:                                    ; preds = %97
  %281 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2916
  %282 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %281, i32 0, i32 0, !dbg !2917
  %283 = load i8*, i8** %282, align 4, !dbg !2917
  store i8* %283, i8** %9, align 4, !dbg !2918
  %284 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2919
  %285 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %284, i32 0, i32 0, !dbg !2920
  %286 = load i8*, i8** %285, align 4, !dbg !2920
  %287 = getelementptr inbounds i8, i8* %286, i32 1, !dbg !2921
  %288 = load i8, i8* %287, align 1, !dbg !2922
  %289 = zext i8 %288 to i32, !dbg !2923
  %290 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2924
  %291 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %290, i32 0, i32 8, !dbg !2925
  %292 = bitcast %union.anon* %291 to %struct.anon.6*, !dbg !2926
  %293 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %292, i32 0, i32 0, !dbg !2927
  store i32 %289, i32* %293, align 4, !dbg !2928
  %294 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2929
  %295 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %294, i32 0, i32 0, !dbg !2930
  %296 = load i8*, i8** %295, align 4, !dbg !2930
  %297 = getelementptr inbounds i8, i8* %296, i32 2, !dbg !2931
  %298 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2932
  %299 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %298, i32 0, i32 3, !dbg !2933
  %300 = call i8* @_midiReadVarLen(i8* %297, i32* %299), !dbg !2934
  %301 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2935
  %302 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %301, i32 0, i32 0, !dbg !2936
  store i8* %300, i8** %302, align 4, !dbg !2937
  %303 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2938
  %304 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %303, i32 0, i32 0, !dbg !2939
  %305 = load i8*, i8** %304, align 4, !dbg !2939
  %306 = load i8*, i8** %9, align 4, !dbg !2940
  %307 = ptrtoint i8* %305 to i32, !dbg !2941
  %308 = ptrtoint i8* %306 to i32, !dbg !2941
  %309 = sub i32 %307, %308, !dbg !2941
  %310 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2942
  %311 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %310, i32 0, i32 3, !dbg !2943
  %312 = load i32, i32* %311, align 4, !dbg !2943
  %313 = add i32 %309, %312, !dbg !2944
  store i32 %313, i32* %11, align 4, !dbg !2945
  %314 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2946
  %315 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2948
  %316 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %315, i32 0, i32 0, !dbg !2949
  %317 = load i8*, i8** %316, align 4, !dbg !2949
  %318 = load i32, i32* %11, align 4, !dbg !2950
  %319 = call i32 @_midiReadTrackCopyData(%struct.MIDI_MSG* %314, i8* %317, i32 %318, i32 0), !dbg !2951
  %320 = icmp eq i32 %319, 0, !dbg !2952
  br i1 %320, label %321, label %322, !dbg !2953

; <label>:321:                                    ; preds = %280
  store i32 0, i32* %4, align 4, !dbg !2954
  br label %682, !dbg !2954

; <label>:322:                                    ; preds = %280
  %323 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2955
  %324 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %323, i32 0, i32 6, !dbg !2956
  %325 = load i8*, i8** %324, align 4, !dbg !2956
  %326 = load i8*, i8** %9, align 4, !dbg !2957
  %327 = load i32, i32* %11, align 4, !dbg !2958
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %325, i8* %326, i32 %327, i32 1, i1 false), !dbg !2959
  %328 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2960
  %329 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %328, i32 0, i32 8, !dbg !2961
  %330 = bitcast %union.anon* %329 to %struct.anon.6*, !dbg !2962
  %331 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %330, i32 0, i32 0, !dbg !2963
  %332 = load i32, i32* %331, align 4, !dbg !2963
  switch i32 %332, label %565 [
    i32 33, label %333
    i32 0, label %345
    i32 1, label %357
    i32 2, label %357
    i32 3, label %357
    i32 4, label %357
    i32 5, label %357
    i32 6, label %357
    i32 7, label %357
    i32 47, label %367
    i32 81, label %368
    i32 84, label %399
    i32 88, label %460
    i32 89, label %486
    i32 127, label %546
  ], !dbg !2964

; <label>:333:                                    ; preds = %322
  %334 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2965
  %335 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %334, i32 0, i32 0, !dbg !2967
  %336 = load i8*, i8** %335, align 4, !dbg !2967
  %337 = getelementptr inbounds i8, i8* %336, i32 0, !dbg !2968
  %338 = load i8, i8* %337, align 1, !dbg !2969
  %339 = zext i8 %338 to i32, !dbg !2969
  %340 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2970
  %341 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %340, i32 0, i32 8, !dbg !2971
  %342 = bitcast %union.anon* %341 to %struct.anon.6*, !dbg !2972
  %343 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %342, i32 0, i32 1, !dbg !2973
  %344 = bitcast %union.anon.7* %343 to i32*, !dbg !2974
  store i32 %339, i32* %344, align 4, !dbg !2975
  br label %565, !dbg !2976

; <label>:345:                                    ; preds = %322
  %346 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2977
  %347 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %346, i32 0, i32 0, !dbg !2978
  %348 = load i8*, i8** %347, align 4, !dbg !2978
  %349 = getelementptr inbounds i8, i8* %348, i32 0, !dbg !2979
  %350 = load i8, i8* %349, align 1, !dbg !2980
  %351 = zext i8 %350 to i32, !dbg !2980
  %352 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2981
  %353 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %352, i32 0, i32 8, !dbg !2982
  %354 = bitcast %union.anon* %353 to %struct.anon.6*, !dbg !2983
  %355 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %354, i32 0, i32 1, !dbg !2984
  %356 = bitcast %union.anon.7* %355 to i32*, !dbg !2985
  store i32 %351, i32* %356, align 4, !dbg !2986
  br label %565, !dbg !2987

; <label>:357:                                    ; preds = %322, %322, %322, %322, %322, %322, %322
  %358 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2988
  %359 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %358, i32 0, i32 0, !dbg !2989
  %360 = load i8*, i8** %359, align 4, !dbg !2989
  %361 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2990
  %362 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %361, i32 0, i32 8, !dbg !2991
  %363 = bitcast %union.anon* %362 to %struct.anon.6*, !dbg !2992
  %364 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %363, i32 0, i32 1, !dbg !2993
  %365 = bitcast %union.anon.7* %364 to %struct.anon.8*, !dbg !2994
  %366 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %365, i32 0, i32 0, !dbg !2995
  store i8* %360, i8** %366, align 4, !dbg !2996
  br label %565, !dbg !2997

; <label>:367:                                    ; preds = %322
  br label %565, !dbg !2998

; <label>:368:                                    ; preds = %322
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2999, metadata !502), !dbg !3001
  %369 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3002
  %370 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %369, i32 0, i32 0, !dbg !3003
  %371 = load i8*, i8** %370, align 4, !dbg !3003
  %372 = getelementptr inbounds i8, i8* %371, i32 0, !dbg !3004
  %373 = load i8, i8* %372, align 1, !dbg !3005
  %374 = zext i8 %373 to i32, !dbg !3006
  %375 = shl i32 %374, 16, !dbg !3007
  %376 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3008
  %377 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %376, i32 0, i32 0, !dbg !3009
  %378 = load i8*, i8** %377, align 4, !dbg !3009
  %379 = getelementptr inbounds i8, i8* %378, i32 1, !dbg !3010
  %380 = load i8, i8* %379, align 1, !dbg !3011
  %381 = zext i8 %380 to i32, !dbg !3012
  %382 = shl i32 %381, 8, !dbg !3013
  %383 = or i32 %375, %382, !dbg !3014
  %384 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3015
  %385 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %384, i32 0, i32 0, !dbg !3016
  %386 = load i8*, i8** %385, align 4, !dbg !3016
  %387 = getelementptr inbounds i8, i8* %386, i32 2, !dbg !3017
  %388 = load i8, i8* %387, align 1, !dbg !3018
  %389 = zext i8 %388 to i32, !dbg !3019
  %390 = or i32 %383, %389, !dbg !3020
  store i32 %390, i32* %13, align 4, !dbg !3001
  %391 = load i32, i32* %13, align 4, !dbg !3021
  %392 = udiv i32 60000000, %391, !dbg !3022
  %393 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3023
  %394 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %393, i32 0, i32 8, !dbg !3024
  %395 = bitcast %union.anon* %394 to %struct.anon.6*, !dbg !3025
  %396 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %395, i32 0, i32 1, !dbg !3026
  %397 = bitcast %union.anon.7* %396 to %struct.anon.9*, !dbg !3027
  %398 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %397, i32 0, i32 0, !dbg !3028
  store i32 %392, i32* %398, align 4, !dbg !3029
  br label %565, !dbg !3030

; <label>:399:                                    ; preds = %322
  %400 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3031
  %401 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %400, i32 0, i32 0, !dbg !3032
  %402 = load i8*, i8** %401, align 4, !dbg !3032
  %403 = getelementptr inbounds i8, i8* %402, i32 0, !dbg !3033
  %404 = load i8, i8* %403, align 1, !dbg !3034
  %405 = zext i8 %404 to i32, !dbg !3034
  %406 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3035
  %407 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %406, i32 0, i32 8, !dbg !3036
  %408 = bitcast %union.anon* %407 to %struct.anon.6*, !dbg !3037
  %409 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %408, i32 0, i32 1, !dbg !3038
  %410 = bitcast %union.anon.7* %409 to %struct.anon.10*, !dbg !3039
  %411 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %410, i32 0, i32 0, !dbg !3040
  store i32 %405, i32* %411, align 4, !dbg !3041
  %412 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3042
  %413 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %412, i32 0, i32 0, !dbg !3043
  %414 = load i8*, i8** %413, align 4, !dbg !3043
  %415 = getelementptr inbounds i8, i8* %414, i32 1, !dbg !3044
  %416 = load i8, i8* %415, align 1, !dbg !3045
  %417 = zext i8 %416 to i32, !dbg !3045
  %418 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3046
  %419 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %418, i32 0, i32 8, !dbg !3047
  %420 = bitcast %union.anon* %419 to %struct.anon.6*, !dbg !3048
  %421 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %420, i32 0, i32 1, !dbg !3049
  %422 = bitcast %union.anon.7* %421 to %struct.anon.10*, !dbg !3050
  %423 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %422, i32 0, i32 1, !dbg !3051
  store i32 %417, i32* %423, align 4, !dbg !3052
  %424 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3053
  %425 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %424, i32 0, i32 0, !dbg !3054
  %426 = load i8*, i8** %425, align 4, !dbg !3054
  %427 = getelementptr inbounds i8, i8* %426, i32 2, !dbg !3055
  %428 = load i8, i8* %427, align 1, !dbg !3056
  %429 = zext i8 %428 to i32, !dbg !3056
  %430 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3057
  %431 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %430, i32 0, i32 8, !dbg !3058
  %432 = bitcast %union.anon* %431 to %struct.anon.6*, !dbg !3059
  %433 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %432, i32 0, i32 1, !dbg !3060
  %434 = bitcast %union.anon.7* %433 to %struct.anon.10*, !dbg !3061
  %435 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %434, i32 0, i32 2, !dbg !3062
  store i32 %429, i32* %435, align 4, !dbg !3063
  %436 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3064
  %437 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %436, i32 0, i32 0, !dbg !3065
  %438 = load i8*, i8** %437, align 4, !dbg !3065
  %439 = getelementptr inbounds i8, i8* %438, i32 3, !dbg !3066
  %440 = load i8, i8* %439, align 1, !dbg !3067
  %441 = zext i8 %440 to i32, !dbg !3067
  %442 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3068
  %443 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %442, i32 0, i32 8, !dbg !3069
  %444 = bitcast %union.anon* %443 to %struct.anon.6*, !dbg !3070
  %445 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %444, i32 0, i32 1, !dbg !3071
  %446 = bitcast %union.anon.7* %445 to %struct.anon.10*, !dbg !3072
  %447 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %446, i32 0, i32 3, !dbg !3073
  store i32 %441, i32* %447, align 4, !dbg !3074
  %448 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3075
  %449 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %448, i32 0, i32 0, !dbg !3076
  %450 = load i8*, i8** %449, align 4, !dbg !3076
  %451 = getelementptr inbounds i8, i8* %450, i32 4, !dbg !3077
  %452 = load i8, i8* %451, align 1, !dbg !3078
  %453 = zext i8 %452 to i32, !dbg !3078
  %454 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3079
  %455 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %454, i32 0, i32 8, !dbg !3080
  %456 = bitcast %union.anon* %455 to %struct.anon.6*, !dbg !3081
  %457 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %456, i32 0, i32 1, !dbg !3082
  %458 = bitcast %union.anon.7* %457 to %struct.anon.10*, !dbg !3083
  %459 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %458, i32 0, i32 4, !dbg !3084
  store i32 %453, i32* %459, align 4, !dbg !3085
  br label %565, !dbg !3086

; <label>:460:                                    ; preds = %322
  %461 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3087
  %462 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %461, i32 0, i32 0, !dbg !3088
  %463 = load i8*, i8** %462, align 4, !dbg !3088
  %464 = getelementptr inbounds i8, i8* %463, i32 0, !dbg !3089
  %465 = load i8, i8* %464, align 1, !dbg !3090
  %466 = zext i8 %465 to i32, !dbg !3090
  %467 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3091
  %468 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %467, i32 0, i32 8, !dbg !3092
  %469 = bitcast %union.anon* %468 to %struct.anon.6*, !dbg !3093
  %470 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %469, i32 0, i32 1, !dbg !3094
  %471 = bitcast %union.anon.7* %470 to %struct.MIDI_END_POINT*, !dbg !3095
  %472 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %471, i32 0, i32 0, !dbg !3096
  store i32 %466, i32* %472, align 4, !dbg !3097
  %473 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3098
  %474 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %473, i32 0, i32 0, !dbg !3099
  %475 = load i8*, i8** %474, align 4, !dbg !3099
  %476 = getelementptr inbounds i8, i8* %475, i32 1, !dbg !3100
  %477 = load i8, i8* %476, align 1, !dbg !3101
  %478 = zext i8 %477 to i32, !dbg !3101
  %479 = mul nsw i32 %478, 768, !dbg !3102
  %480 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3103
  %481 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %480, i32 0, i32 8, !dbg !3104
  %482 = bitcast %union.anon* %481 to %struct.anon.6*, !dbg !3105
  %483 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %482, i32 0, i32 1, !dbg !3106
  %484 = bitcast %union.anon.7* %483 to %struct.MIDI_END_POINT*, !dbg !3107
  %485 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %484, i32 0, i32 1, !dbg !3108
  store i32 %479, i32* %485, align 4, !dbg !3109
  br label %565, !dbg !3110

; <label>:486:                                    ; preds = %322
  %487 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3111
  %488 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %487, i32 0, i32 0, !dbg !3113
  %489 = load i8*, i8** %488, align 4, !dbg !3113
  %490 = load i8, i8* %489, align 1, !dbg !3114
  %491 = zext i8 %490 to i32, !dbg !3114
  %492 = and i32 %491, 128, !dbg !3115
  %493 = icmp ne i32 %492, 0, !dbg !3115
  br i1 %493, label %494, label %516, !dbg !3116

; <label>:494:                                    ; preds = %486
  %495 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3117
  %496 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %495, i32 0, i32 0, !dbg !3119
  %497 = load i8*, i8** %496, align 4, !dbg !3119
  %498 = load i8, i8* %497, align 1, !dbg !3120
  %499 = zext i8 %498 to i32, !dbg !3120
  %500 = sub nsw i32 256, %499, !dbg !3121
  %501 = and i32 %500, 7, !dbg !3122
  %502 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3123
  %503 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %502, i32 0, i32 8, !dbg !3124
  %504 = bitcast %union.anon* %503 to %struct.anon.6*, !dbg !3125
  %505 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %504, i32 0, i32 1, !dbg !3126
  %506 = bitcast %union.anon.7* %505 to %struct.anon.9*, !dbg !3127
  %507 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %506, i32 0, i32 0, !dbg !3128
  store i32 %501, i32* %507, align 4, !dbg !3129
  %508 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3130
  %509 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %508, i32 0, i32 8, !dbg !3131
  %510 = bitcast %union.anon* %509 to %struct.anon.6*, !dbg !3132
  %511 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %510, i32 0, i32 1, !dbg !3133
  %512 = bitcast %union.anon.7* %511 to %struct.anon.9*, !dbg !3134
  %513 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %512, i32 0, i32 0, !dbg !3135
  %514 = load i32, i32* %513, align 4, !dbg !3136
  %515 = or i32 %514, 128, !dbg !3136
  store i32 %515, i32* %513, align 4, !dbg !3136
  br label %529, !dbg !3137

; <label>:516:                                    ; preds = %486
  %517 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3138
  %518 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %517, i32 0, i32 0, !dbg !3140
  %519 = load i8*, i8** %518, align 4, !dbg !3140
  %520 = load i8, i8* %519, align 1, !dbg !3141
  %521 = zext i8 %520 to i32, !dbg !3141
  %522 = and i32 %521, 7, !dbg !3142
  %523 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3143
  %524 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %523, i32 0, i32 8, !dbg !3144
  %525 = bitcast %union.anon* %524 to %struct.anon.6*, !dbg !3145
  %526 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %525, i32 0, i32 1, !dbg !3146
  %527 = bitcast %union.anon.7* %526 to %struct.anon.9*, !dbg !3147
  %528 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %527, i32 0, i32 0, !dbg !3148
  store i32 %522, i32* %528, align 4, !dbg !3149
  br label %529

; <label>:529:                                    ; preds = %516, %494
  %530 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3150
  %531 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %530, i32 0, i32 0, !dbg !3152
  %532 = load i8*, i8** %531, align 4, !dbg !3152
  %533 = getelementptr inbounds i8, i8* %532, i32 1, !dbg !3153
  %534 = load i8, i8* %533, align 1, !dbg !3154
  %535 = icmp ne i8 %534, 0, !dbg !3154
  br i1 %535, label %536, label %545, !dbg !3155

; <label>:536:                                    ; preds = %529
  %537 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3156
  %538 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %537, i32 0, i32 8, !dbg !3157
  %539 = bitcast %union.anon* %538 to %struct.anon.6*, !dbg !3158
  %540 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %539, i32 0, i32 1, !dbg !3159
  %541 = bitcast %union.anon.7* %540 to %struct.anon.9*, !dbg !3160
  %542 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %541, i32 0, i32 0, !dbg !3161
  %543 = load i32, i32* %542, align 4, !dbg !3162
  %544 = or i32 %543, 64, !dbg !3162
  store i32 %544, i32* %542, align 4, !dbg !3162
  br label %545, !dbg !3156

; <label>:545:                                    ; preds = %536, %529
  br label %565, !dbg !3163

; <label>:546:                                    ; preds = %322
  %547 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3164
  %548 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %547, i32 0, i32 3, !dbg !3165
  %549 = load i32, i32* %548, align 4, !dbg !3165
  %550 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3166
  %551 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %550, i32 0, i32 8, !dbg !3167
  %552 = bitcast %union.anon* %551 to %struct.anon.6*, !dbg !3168
  %553 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %552, i32 0, i32 1, !dbg !3169
  %554 = bitcast %union.anon.7* %553 to %struct.anon.13*, !dbg !3170
  %555 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %554, i32 0, i32 1, !dbg !3171
  store i32 %549, i32* %555, align 4, !dbg !3172
  %556 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3173
  %557 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %556, i32 0, i32 0, !dbg !3174
  %558 = load i8*, i8** %557, align 4, !dbg !3174
  %559 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3175
  %560 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %559, i32 0, i32 8, !dbg !3176
  %561 = bitcast %union.anon* %560 to %struct.anon.6*, !dbg !3177
  %562 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %561, i32 0, i32 1, !dbg !3178
  %563 = bitcast %union.anon.7* %562 to %struct.anon.13*, !dbg !3179
  %564 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %563, i32 0, i32 0, !dbg !3180
  store i8* %558, i8** %564, align 4, !dbg !3181
  br label %565, !dbg !3182

; <label>:565:                                    ; preds = %546, %545, %460, %399, %368, %367, %357, %345, %333, %322
  %566 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3183
  %567 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %566, i32 0, i32 3, !dbg !3184
  %568 = load i32, i32* %567, align 4, !dbg !3184
  %569 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3185
  %570 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %569, i32 0, i32 0, !dbg !3186
  %571 = load i8*, i8** %570, align 4, !dbg !3187
  %572 = getelementptr inbounds i8, i8* %571, i32 %568, !dbg !3187
  store i8* %572, i8** %570, align 4, !dbg !3187
  %573 = load i32, i32* %11, align 4, !dbg !3188
  %574 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3189
  %575 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %574, i32 0, i32 3, !dbg !3190
  store i32 %573, i32* %575, align 4, !dbg !3191
  br label %636, !dbg !3192

; <label>:576:                                    ; preds = %97, %97
  %577 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3193
  %578 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %577, i32 0, i32 0, !dbg !3194
  %579 = load i8*, i8** %578, align 4, !dbg !3194
  store i8* %579, i8** %9, align 4, !dbg !3195
  %580 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3196
  %581 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %580, i32 0, i32 0, !dbg !3197
  %582 = load i8*, i8** %581, align 4, !dbg !3197
  %583 = getelementptr inbounds i8, i8* %582, i32 1, !dbg !3198
  %584 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3199
  %585 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %584, i32 0, i32 3, !dbg !3200
  %586 = call i8* @_midiReadVarLen(i8* %583, i32* %585), !dbg !3201
  %587 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3202
  %588 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %587, i32 0, i32 0, !dbg !3203
  store i8* %586, i8** %588, align 4, !dbg !3204
  %589 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3205
  %590 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %589, i32 0, i32 0, !dbg !3206
  %591 = load i8*, i8** %590, align 4, !dbg !3206
  %592 = load i8*, i8** %9, align 4, !dbg !3207
  %593 = ptrtoint i8* %591 to i32, !dbg !3208
  %594 = ptrtoint i8* %592 to i32, !dbg !3208
  %595 = sub i32 %593, %594, !dbg !3208
  %596 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3209
  %597 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %596, i32 0, i32 3, !dbg !3210
  %598 = load i32, i32* %597, align 4, !dbg !3210
  %599 = add i32 %595, %598, !dbg !3211
  store i32 %599, i32* %11, align 4, !dbg !3212
  %600 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3213
  %601 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3215
  %602 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %601, i32 0, i32 0, !dbg !3216
  %603 = load i8*, i8** %602, align 4, !dbg !3216
  %604 = load i32, i32* %11, align 4, !dbg !3217
  %605 = call i32 @_midiReadTrackCopyData(%struct.MIDI_MSG* %600, i8* %603, i32 %604, i32 0), !dbg !3218
  %606 = icmp eq i32 %605, 0, !dbg !3219
  br i1 %606, label %607, label %608, !dbg !3220

; <label>:607:                                    ; preds = %576
  store i32 0, i32* %4, align 4, !dbg !3221
  br label %682, !dbg !3221

; <label>:608:                                    ; preds = %576
  %609 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3222
  %610 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %609, i32 0, i32 6, !dbg !3223
  %611 = load i8*, i8** %610, align 4, !dbg !3223
  %612 = load i8*, i8** %9, align 4, !dbg !3224
  %613 = load i32, i32* %11, align 4, !dbg !3225
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %611, i8* %612, i32 %613, i32 1, i1 false), !dbg !3226
  %614 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3227
  %615 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %614, i32 0, i32 3, !dbg !3228
  %616 = load i32, i32* %615, align 4, !dbg !3228
  %617 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3229
  %618 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %617, i32 0, i32 0, !dbg !3230
  %619 = load i8*, i8** %618, align 4, !dbg !3231
  %620 = getelementptr inbounds i8, i8* %619, i32 %616, !dbg !3231
  store i8* %620, i8** %618, align 4, !dbg !3231
  %621 = load i32, i32* %11, align 4, !dbg !3232
  %622 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3233
  %623 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %622, i32 0, i32 3, !dbg !3234
  store i32 %621, i32* %623, align 4, !dbg !3235
  %624 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3236
  %625 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %624, i32 0, i32 6, !dbg !3237
  %626 = load i8*, i8** %625, align 4, !dbg !3237
  %627 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3238
  %628 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %627, i32 0, i32 8, !dbg !3239
  %629 = bitcast %union.anon* %628 to %struct.anon.13*, !dbg !3240
  %630 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %629, i32 0, i32 0, !dbg !3241
  store i8* %626, i8** %630, align 4, !dbg !3242
  %631 = load i32, i32* %11, align 4, !dbg !3243
  %632 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3244
  %633 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %632, i32 0, i32 8, !dbg !3245
  %634 = bitcast %union.anon* %633 to %struct.anon.13*, !dbg !3246
  %635 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %634, i32 0, i32 1, !dbg !3247
  store i32 %631, i32* %635, align 4, !dbg !3248
  br label %636, !dbg !3249

; <label>:636:                                    ; preds = %608, %565, %250, %232, %214, %188, %162, %144, %118, %97
  %637 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3250
  %638 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %637, i32 0, i32 4, !dbg !3251
  store i32 0, i32* %638, align 4, !dbg !3252
  %639 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3253
  %640 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %639, i32 0, i32 0, !dbg !3255
  %641 = load i32, i32* %640, align 4, !dbg !3255
  %642 = and i32 %641, 240, !dbg !3256
  %643 = icmp ne i32 %642, 240, !dbg !3257
  br i1 %643, label %644, label %681, !dbg !3258

; <label>:644:                                    ; preds = %636
  %645 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3259
  %646 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %645, i32 0, i32 0, !dbg !3262
  %647 = load i8*, i8** %646, align 4, !dbg !3262
  %648 = load i8, i8* %647, align 1, !dbg !3263
  %649 = zext i8 %648 to i32, !dbg !3263
  %650 = and i32 %649, 128, !dbg !3264
  %651 = icmp ne i32 %650, 0, !dbg !3264
  br i1 %651, label %652, label %653, !dbg !3265

; <label>:652:                                    ; preds = %644
  br label %665, !dbg !3266

; <label>:653:                                    ; preds = %644
  %654 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3268
  %655 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %654, i32 0, i32 4, !dbg !3270
  store i32 1, i32* %655, align 4, !dbg !3271
  %656 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3272
  %657 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %656, i32 0, i32 9, !dbg !3273
  %658 = load i32, i32* %657, align 4, !dbg !3273
  %659 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3274
  %660 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %659, i32 0, i32 5, !dbg !3275
  store i32 %658, i32* %660, align 4, !dbg !3276
  %661 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3277
  %662 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %661, i32 0, i32 3, !dbg !3278
  %663 = load i32, i32* %662, align 4, !dbg !3279
  %664 = add i32 %663, -1, !dbg !3279
  store i32 %664, i32* %662, align 4, !dbg !3279
  br label %665

; <label>:665:                                    ; preds = %653, %652
  %666 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3280
  %667 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3281
  %668 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %667, i32 0, i32 0, !dbg !3282
  %669 = load i8*, i8** %668, align 4, !dbg !3282
  %670 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3283
  %671 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %670, i32 0, i32 3, !dbg !3284
  %672 = load i32, i32* %671, align 4, !dbg !3284
  %673 = call i32 @_midiReadTrackCopyData(%struct.MIDI_MSG* %666, i8* %669, i32 %672, i32 1), !dbg !3285
  %674 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3286
  %675 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %674, i32 0, i32 3, !dbg !3287
  %676 = load i32, i32* %675, align 4, !dbg !3287
  %677 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3288
  %678 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %677, i32 0, i32 0, !dbg !3289
  %679 = load i8*, i8** %678, align 4, !dbg !3290
  %680 = getelementptr inbounds i8, i8* %679, i32 %676, !dbg !3290
  store i8* %680, i8** %678, align 4, !dbg !3290
  br label %681, !dbg !3291

; <label>:681:                                    ; preds = %665, %636
  store i32 1, i32* %4, align 4, !dbg !3292
  br label %682, !dbg !3292

; <label>:682:                                    ; preds = %681, %607, %321, %33, %20
  %683 = load i32, i32* %4, align 4, !dbg !3293
  ret i32 %683, !dbg !3293
}

; Function Attrs: noinline nounwind optnone
define internal i8* @_midiReadVarLen(i8*, i32*) #0 !dbg !3294 {
  %3 = alloca i8*, align 4
  %4 = alloca i32*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3297, metadata !502), !dbg !3298
  store i32* %1, i32** %4, align 4
  call void @llvm.dbg.declare(metadata i32** %4, metadata !3299, metadata !502), !dbg !3300
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3301, metadata !502), !dbg !3302
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3303, metadata !502), !dbg !3304
  %7 = load i8*, i8** %3, align 4, !dbg !3305
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !3305
  store i8* %8, i8** %3, align 4, !dbg !3305
  %9 = load i8, i8* %7, align 1, !dbg !3307
  %10 = zext i8 %9 to i32, !dbg !3307
  store i32 %10, i32* %5, align 4, !dbg !3308
  %11 = and i32 %10, 128, !dbg !3309
  %12 = icmp ne i32 %11, 0, !dbg !3309
  br i1 %12, label %13, label %31, !dbg !3310

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %5, align 4, !dbg !3311
  %15 = and i32 %14, 127, !dbg !3311
  store i32 %15, i32* %5, align 4, !dbg !3311
  br label %16, !dbg !3313, !llvm.loop !3314

; <label>:16:                                     ; preds = %25, %13
  %17 = load i32, i32* %5, align 4, !dbg !3316
  %18 = shl i32 %17, 7, !dbg !3318
  %19 = load i8*, i8** %3, align 4, !dbg !3319
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !3319
  store i8* %20, i8** %3, align 4, !dbg !3319
  %21 = load i8, i8* %19, align 1, !dbg !3320
  store i8 %21, i8* %6, align 1, !dbg !3321
  %22 = zext i8 %21 to i32, !dbg !3322
  %23 = and i32 %22, 127, !dbg !3323
  %24 = add i32 %18, %23, !dbg !3324
  store i32 %24, i32* %5, align 4, !dbg !3325
  br label %25, !dbg !3326

; <label>:25:                                     ; preds = %16
  %26 = load i8, i8* %6, align 1, !dbg !3327
  %27 = zext i8 %26 to i32, !dbg !3327
  %28 = and i32 %27, 128, !dbg !3328
  %29 = icmp ne i32 %28, 0, !dbg !3326
  br i1 %29, label %16, label %30, !dbg !3326, !llvm.loop !3314

; <label>:30:                                     ; preds = %25
  br label %31, !dbg !3329

; <label>:31:                                     ; preds = %30, %2
  %32 = load i32, i32* %5, align 4, !dbg !3330
  %33 = load i32*, i32** %4, align 4, !dbg !3331
  store i32 %32, i32* %33, align 4, !dbg !3332
  %34 = load i8*, i8** %3, align 4, !dbg !3333
  ret i8* %34, !dbg !3334
}

; Function Attrs: noinline nounwind optnone
define internal i32 @_midiReadTrackCopyData(%struct.MIDI_MSG*, i8*, i32, i32) #0 !dbg !3335 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MIDI_MSG*, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.MIDI_MSG* %0, %struct.MIDI_MSG** %6, align 4
  call void @llvm.dbg.declare(metadata %struct.MIDI_MSG** %6, metadata !3338, metadata !502), !dbg !3339
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3340, metadata !502), !dbg !3341
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3342, metadata !502), !dbg !3343
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3344, metadata !502), !dbg !3345
  %10 = load i32, i32* %8, align 4, !dbg !3346
  %11 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %6, align 4, !dbg !3348
  %12 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %11, i32 0, i32 7, !dbg !3349
  %13 = load i32, i32* %12, align 4, !dbg !3349
  %14 = icmp ugt i32 %10, %13, !dbg !3350
  br i1 %14, label %15, label %26, !dbg !3351

; <label>:15:                                     ; preds = %4
  %16 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %6, align 4, !dbg !3352
  %17 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %16, i32 0, i32 6, !dbg !3354
  %18 = load i8*, i8** %17, align 4, !dbg !3354
  %19 = load i32, i32* %8, align 4, !dbg !3355
  %20 = call i8* @realloc(i8* %18, i32 %19) #7, !dbg !3356
  %21 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %6, align 4, !dbg !3357
  %22 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %21, i32 0, i32 6, !dbg !3358
  store i8* %20, i8** %22, align 4, !dbg !3359
  %23 = load i32, i32* %8, align 4, !dbg !3360
  %24 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %6, align 4, !dbg !3361
  %25 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %24, i32 0, i32 7, !dbg !3362
  store i32 %23, i32* %25, align 4, !dbg !3363
  br label %26, !dbg !3364

; <label>:26:                                     ; preds = %15, %4
  %27 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %6, align 4, !dbg !3365
  %28 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %27, i32 0, i32 6, !dbg !3367
  %29 = load i8*, i8** %28, align 4, !dbg !3367
  %30 = icmp ne i8* %29, null, !dbg !3365
  br i1 %30, label %32, label %31, !dbg !3368

; <label>:31:                                     ; preds = %26
  store i32 0, i32* %5, align 4, !dbg !3369
  br label %45, !dbg !3369

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %9, align 4, !dbg !3370
  %34 = icmp ne i32 %33, 0, !dbg !3370
  br i1 %34, label %35, label %44, !dbg !3372

; <label>:35:                                     ; preds = %32
  %36 = load i8*, i8** %7, align 4, !dbg !3373
  %37 = icmp ne i8* %36, null, !dbg !3373
  br i1 %37, label %38, label %44, !dbg !3374

; <label>:38:                                     ; preds = %35
  %39 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %6, align 4, !dbg !3375
  %40 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %39, i32 0, i32 6, !dbg !3376
  %41 = load i8*, i8** %40, align 4, !dbg !3376
  %42 = load i8*, i8** %7, align 4, !dbg !3377
  %43 = load i32, i32* %8, align 4, !dbg !3378
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %42, i32 %43, i32 1, i1 false), !dbg !3379
  br label %44, !dbg !3379

; <label>:44:                                     ; preds = %38, %35, %32
  store i32 1, i32* %5, align 4, !dbg !3380
  br label %45, !dbg !3380

; <label>:45:                                     ; preds = %44, %31
  %46 = load i32, i32* %5, align 4, !dbg !3381
  ret i32 %46, !dbg !3381
}

; Function Attrs: noinline nounwind optnone
define internal void @midiReadInitMessage(%struct.MIDI_MSG*) #0 !dbg !3382 {
  %2 = alloca %struct.MIDI_MSG*, align 4
  store %struct.MIDI_MSG* %0, %struct.MIDI_MSG** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.MIDI_MSG** %2, metadata !3385, metadata !502), !dbg !3386
  %3 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %2, align 4, !dbg !3387
  %4 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %3, i32 0, i32 6, !dbg !3388
  store i8* null, i8** %4, align 4, !dbg !3389
  %5 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %2, align 4, !dbg !3390
  %6 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %5, i32 0, i32 7, !dbg !3391
  store i32 0, i32* %6, align 4, !dbg !3392
  %7 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %2, align 4, !dbg !3393
  %8 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %7, i32 0, i32 4, !dbg !3394
  store i32 0, i32* %8, align 4, !dbg !3395
  ret void, !dbg !3396
}

; Function Attrs: noinline nounwind optnone
define internal void @midiReadFreeMessage(%struct.MIDI_MSG*) #0 !dbg !3397 {
  %2 = alloca %struct.MIDI_MSG*, align 4
  store %struct.MIDI_MSG* %0, %struct.MIDI_MSG** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.MIDI_MSG** %2, metadata !3398, metadata !502), !dbg !3399
  %3 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %2, align 4, !dbg !3400
  %4 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %3, i32 0, i32 6, !dbg !3402
  %5 = load i8*, i8** %4, align 4, !dbg !3402
  %6 = icmp ne i8* %5, null, !dbg !3400
  br i1 %6, label %7, label %11, !dbg !3403

; <label>:7:                                      ; preds = %1
  %8 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %2, align 4, !dbg !3404
  %9 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %8, i32 0, i32 6, !dbg !3405
  %10 = load i8*, i8** %9, align 4, !dbg !3405
  call void @free(i8* %10) #7, !dbg !3406
  br label %11, !dbg !3406

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %2, align 4, !dbg !3407
  %13 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %12, i32 0, i32 6, !dbg !3408
  store i8* null, i8** %13, align 4, !dbg !3409
  ret void, !dbg !3410
}

; Function Attrs: noinline nounwind optnone
define internal i32 @muGetInstrumentName(i8*, i32) #0 !dbg !3411 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3414, metadata !502), !dbg !3415
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3416, metadata !502), !dbg !3417
  %6 = load i32, i32* %5, align 4, !dbg !3418
  %7 = icmp slt i32 %6, 0, !dbg !3420
  br i1 %7, label %11, label %8, !dbg !3421

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %5, align 4, !dbg !3422
  %10 = icmp sgt i32 %9, 127, !dbg !3423
  br i1 %10, label %11, label %12, !dbg !3424

; <label>:11:                                     ; preds = %8, %2
  store i32 0, i32* %3, align 4, !dbg !3425
  br label %18, !dbg !3425

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** %4, align 4, !dbg !3426
  %14 = load i32, i32* %5, align 4, !dbg !3427
  %15 = getelementptr inbounds [128 x i8*], [128 x i8*]* @szPatchList, i32 0, i32 %14, !dbg !3428
  %16 = load i8*, i8** %15, align 4, !dbg !3428
  %17 = call i8* @strcpy(i8* %13, i8* %16) #7, !dbg !3429
  store i32 1, i32* %3, align 4, !dbg !3430
  br label %18, !dbg !3430

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !3431
  ret i32 %19, !dbg !3431
}

; Function Attrs: noinline nounwind optnone
define internal i32 @muGetDrumName(i8*, i32) #0 !dbg !3432 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3433, metadata !502), !dbg !3434
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3435, metadata !502), !dbg !3436
  %6 = load i32, i32* %5, align 4, !dbg !3437
  %7 = icmp slt i32 %6, 0, !dbg !3439
  br i1 %7, label %11, label %8, !dbg !3440

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %5, align 4, !dbg !3441
  %10 = icmp sgt i32 %9, 127, !dbg !3442
  br i1 %10, label %11, label %12, !dbg !3443

; <label>:11:                                     ; preds = %8, %2
  store i32 0, i32* %3, align 4, !dbg !3444
  br label %18, !dbg !3444

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** %4, align 4, !dbg !3445
  %14 = load i32, i32* %5, align 4, !dbg !3446
  %15 = getelementptr inbounds [128 x i8*], [128 x i8*]* @szGMDrums, i32 0, i32 %14, !dbg !3447
  %16 = load i8*, i8** %15, align 4, !dbg !3447
  %17 = call i8* @strcpy(i8* %13, i8* %16) #7, !dbg !3448
  store i32 1, i32* %3, align 4, !dbg !3449
  br label %18, !dbg !3449

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !3450
  ret i32 %19, !dbg !3450
}

; Function Attrs: noinline nounwind optnone
define internal i32 @muGetMIDIMsgName(i8*, i32) #0 !dbg !3451 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3454, metadata !502), !dbg !3455
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3456, metadata !502), !dbg !3457
  %6 = load i32, i32* %5, align 4, !dbg !3458
  switch i32 %6, label %37 [
    i32 128, label %7
    i32 144, label %10
    i32 160, label %13
    i32 176, label %16
    i32 192, label %19
    i32 208, label %22
    i32 224, label %25
    i32 255, label %28
    i32 240, label %31
    i32 247, label %34
  ], !dbg !3459

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 4, !dbg !3460
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !3462
  br label %38, !dbg !3463

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 4, !dbg !3464
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.4, i32 0, i32 0)) #7, !dbg !3465
  br label %38, !dbg !3466

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 4, !dbg !3467
  %15 = call i8* @strcpy(i8* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.5, i32 0, i32 0)) #7, !dbg !3468
  br label %38, !dbg !3469

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %4, align 4, !dbg !3470
  %18 = call i8* @strcpy(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.6, i32 0, i32 0)) #7, !dbg !3471
  br label %38, !dbg !3472

; <label>:19:                                     ; preds = %2
  %20 = load i8*, i8** %4, align 4, !dbg !3473
  %21 = call i8* @strcpy(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !3474
  br label %38, !dbg !3475

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %4, align 4, !dbg !3476
  %24 = call i8* @strcpy(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !3477
  br label %38, !dbg !3478

; <label>:25:                                     ; preds = %2
  %26 = load i8*, i8** %4, align 4, !dbg !3479
  %27 = call i8* @strcpy(i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !3480
  br label %38, !dbg !3481

; <label>:28:                                     ; preds = %2
  %29 = load i8*, i8** %4, align 4, !dbg !3482
  %30 = call i8* @strcpy(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !3483
  br label %38, !dbg !3484

; <label>:31:                                     ; preds = %2
  %32 = load i8*, i8** %4, align 4, !dbg !3485
  %33 = call i8* @strcpy(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !3486
  br label %38, !dbg !3487

; <label>:34:                                     ; preds = %2
  %35 = load i8*, i8** %4, align 4, !dbg !3488
  %36 = call i8* @strcpy(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !3489
  br label %38, !dbg !3490

; <label>:37:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !3491
  br label %39, !dbg !3491

; <label>:38:                                     ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  store i32 1, i32* %3, align 4, !dbg !3492
  br label %39, !dbg !3492

; <label>:39:                                     ; preds = %38, %37
  %40 = load i32, i32* %3, align 4, !dbg !3493
  ret i32 %40, !dbg !3493
}

; Function Attrs: noinline nounwind optnone
define internal i32 @muGetControlName(i8*, i32) #0 !dbg !3494 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3497, metadata !502), !dbg !3498
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3499, metadata !502), !dbg !3500
  %6 = load i32, i32* %5, align 4, !dbg !3501
  %7 = icmp ult i32 %6, 0, !dbg !3503
  br i1 %7, label %11, label %8, !dbg !3504

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %5, align 4, !dbg !3505
  %10 = icmp ugt i32 %9, 127, !dbg !3506
  br i1 %10, label %11, label %12, !dbg !3507

; <label>:11:                                     ; preds = %8, %2
  store i32 0, i32* %3, align 4, !dbg !3508
  br label %18, !dbg !3508

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** %4, align 4, !dbg !3509
  %14 = load i32, i32* %5, align 4, !dbg !3510
  %15 = getelementptr inbounds [128 x i8*], [128 x i8*]* @szCCList, i32 0, i32 %14, !dbg !3511
  %16 = load i8*, i8** %15, align 4, !dbg !3511
  %17 = call i8* @strcpy(i8* %13, i8* %16) #7, !dbg !3512
  store i32 1, i32* %3, align 4, !dbg !3513
  br label %18, !dbg !3513

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !3514
  ret i32 %19, !dbg !3514
}

; Function Attrs: noinline nounwind optnone
define internal i32 @muGetKeySigName(i8*, i32) #0 !dbg !442 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3515, metadata !502), !dbg !3516
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3517, metadata !502), !dbg !3518
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3519, metadata !502), !dbg !3520
  %8 = load i32, i32* %4, align 4, !dbg !3521
  %9 = and i32 %8, 7, !dbg !3522
  store i32 %9, i32* %5, align 4, !dbg !3520
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3523, metadata !502), !dbg !3524
  %10 = load i32, i32* %4, align 4, !dbg !3525
  %11 = and i32 %10, 128, !dbg !3526
  store i32 %11, i32* %6, align 4, !dbg !3524
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3527, metadata !502), !dbg !3528
  %12 = load i32, i32* %4, align 4, !dbg !3529
  %13 = and i32 %12, 64, !dbg !3530
  store i32 %13, i32* %7, align 4, !dbg !3528
  %14 = load i8*, i8** %3, align 4, !dbg !3531
  %15 = load i32, i32* %6, align 4, !dbg !3532
  %16 = icmp ne i32 %15, 0, !dbg !3532
  %17 = zext i1 %16 to i64, !dbg !3532
  %18 = select i1 %16, i32 1, i32 0, !dbg !3532
  %19 = getelementptr inbounds [2 x [8 x i8*]], [2 x [8 x i8*]]* @muGetKeySigName.iKeysList, i32 0, i32 %18, !dbg !3533
  %20 = load i32, i32* %5, align 4, !dbg !3534
  %21 = getelementptr inbounds [8 x i8*], [8 x i8*]* %19, i32 0, i32 %20, !dbg !3533
  %22 = load i8*, i8** %21, align 4, !dbg !3533
  %23 = call i8* @strcpy(i8* %14, i8* %22) #7, !dbg !3535
  %24 = load i8*, i8** %3, align 4, !dbg !3536
  %25 = load i32, i32* %7, align 4, !dbg !3537
  %26 = icmp ne i32 %25, 0, !dbg !3537
  %27 = zext i1 %26 to i64, !dbg !3537
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), !dbg !3537
  %29 = call i8* @strcat(i8* %24, i8* %28) #7, !dbg !3538
  ret i32 1, !dbg !3539
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @muGetTextName(i8*, i32) #0 !dbg !3540 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3543, metadata !502), !dbg !3544
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3545, metadata !502), !dbg !3546
  %6 = load i32, i32* %5, align 4, !dbg !3547
  %7 = icmp ult i32 %6, 1, !dbg !3549
  br i1 %7, label %11, label %8, !dbg !3550

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %5, align 4, !dbg !3551
  %10 = icmp ugt i32 %9, 7, !dbg !3552
  br i1 %10, label %11, label %12, !dbg !3553

; <label>:11:                                     ; preds = %8, %2
  store i32 0, i32* %3, align 4, !dbg !3554
  br label %16, !dbg !3554

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** %4, align 4, !dbg !3555
  %14 = load i32, i32* %5, align 4, !dbg !3556
  %15 = call i32 @muGetMetaName(i8* %13, i32 %14), !dbg !3557
  store i32 %15, i32* %3, align 4, !dbg !3558
  br label %16, !dbg !3558

; <label>:16:                                     ; preds = %12, %11
  %17 = load i32, i32* %3, align 4, !dbg !3559
  ret i32 %17, !dbg !3559
}

; Function Attrs: noinline nounwind optnone
define internal i32 @muGetMetaName(i8*, i32) #0 !dbg !3560 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3563, metadata !502), !dbg !3564
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3565, metadata !502), !dbg !3566
  %6 = load i32, i32* %5, align 4, !dbg !3567
  switch i32 %6, label %52 [
    i32 0, label %7
    i32 1, label %10
    i32 2, label %13
    i32 3, label %16
    i32 4, label %19
    i32 5, label %22
    i32 6, label %25
    i32 7, label %28
    i32 33, label %31
    i32 47, label %34
    i32 81, label %37
    i32 84, label %40
    i32 88, label %43
    i32 89, label %46
    i32 127, label %49
  ], !dbg !3568

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 4, !dbg !3569
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0)) #7, !dbg !3571
  br label %53, !dbg !3572

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 4, !dbg !3573
  %12 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0)) #7, !dbg !3574
  br label %53, !dbg !3575

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 4, !dbg !3576
  %15 = call i8* @strcpy(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0)) #7, !dbg !3577
  br label %53, !dbg !3578

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %4, align 4, !dbg !3579
  %18 = call i8* @strcpy(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0)) #7, !dbg !3580
  br label %53, !dbg !3581

; <label>:19:                                     ; preds = %2
  %20 = load i8*, i8** %4, align 4, !dbg !3582
  %21 = call i8* @strcpy(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0)) #7, !dbg !3583
  br label %53, !dbg !3584

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %4, align 4, !dbg !3585
  %24 = call i8* @strcpy(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #7, !dbg !3586
  br label %53, !dbg !3587

; <label>:25:                                     ; preds = %2
  %26 = load i8*, i8** %4, align 4, !dbg !3588
  %27 = call i8* @strcpy(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)) #7, !dbg !3589
  br label %53, !dbg !3590

; <label>:28:                                     ; preds = %2
  %29 = load i8*, i8** %4, align 4, !dbg !3591
  %30 = call i8* @strcpy(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #7, !dbg !3592
  br label %53, !dbg !3593

; <label>:31:                                     ; preds = %2
  %32 = load i8*, i8** %4, align 4, !dbg !3594
  %33 = call i8* @strcpy(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0)) #7, !dbg !3595
  br label %53, !dbg !3596

; <label>:34:                                     ; preds = %2
  %35 = load i8*, i8** %4, align 4, !dbg !3597
  %36 = call i8* @strcpy(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)) #7, !dbg !3598
  br label %53, !dbg !3599

; <label>:37:                                     ; preds = %2
  %38 = load i8*, i8** %4, align 4, !dbg !3600
  %39 = call i8* @strcpy(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0)) #7, !dbg !3601
  br label %53, !dbg !3602

; <label>:40:                                     ; preds = %2
  %41 = load i8*, i8** %4, align 4, !dbg !3603
  %42 = call i8* @strcpy(i8* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0)) #7, !dbg !3604
  br label %53, !dbg !3605

; <label>:43:                                     ; preds = %2
  %44 = load i8*, i8** %4, align 4, !dbg !3606
  %45 = call i8* @strcpy(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0)) #7, !dbg !3607
  br label %53, !dbg !3608

; <label>:46:                                     ; preds = %2
  %47 = load i8*, i8** %4, align 4, !dbg !3609
  %48 = call i8* @strcpy(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0)) #7, !dbg !3610
  br label %53, !dbg !3611

; <label>:49:                                     ; preds = %2
  %50 = load i8*, i8** %4, align 4, !dbg !3612
  %51 = call i8* @strcpy(i8* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0)) #7, !dbg !3613
  br label %53, !dbg !3614

; <label>:52:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !3615
  br label %54, !dbg !3615

; <label>:53:                                     ; preds = %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  store i32 1, i32* %3, align 4, !dbg !3616
  br label %54, !dbg !3616

; <label>:54:                                     ; preds = %53, %52
  %55 = load i32, i32* %3, align 4, !dbg !3617
  ret i32 %55, !dbg !3617
}

; Function Attrs: noinline nounwind optnone
define internal i32 @muGetNoteFromName(i8*) #0 !dbg !3618 {
  %2 = alloca i8*, align 4
  %3 = alloca [7 x i32], align 4
  %4 = alloca i8*, align 4
  %5 = alloca [16 x i8], align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3621, metadata !502), !dbg !3622
  call void @llvm.dbg.declare(metadata [7 x i32]* %3, metadata !3623, metadata !502), !dbg !3625
  %7 = bitcast [7 x i32]* %3 to i8*, !dbg !3625
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* bitcast ([7 x i32]* @muGetNoteFromName.note_map to i8*), i32 28, i32 4, i1 false), !dbg !3625
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3626, metadata !502), !dbg !3627
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !3628, metadata !502), !dbg !3632
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3633, metadata !502), !dbg !3634
  store i32 0, i32* %6, align 4, !dbg !3634
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !3635
  %9 = load i8*, i8** %2, align 4, !dbg !3636
  %10 = call i8* @strncpy(i8* %8, i8* %9, i32 15) #7, !dbg !3637
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 15, !dbg !3638
  store i8 0, i8* %11, align 1, !dbg !3639
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !3640
  store i8* %12, i8** %4, align 4, !dbg !3641
  br label %13, !dbg !3642

; <label>:13:                                     ; preds = %31, %1
  %14 = call i16** @__ctype_b_loc() #9, !dbg !3643
  %15 = load i16*, i16** %14, align 4, !dbg !3643
  %16 = load i8*, i8** %4, align 4, !dbg !3643
  %17 = load i8, i8* %16, align 1, !dbg !3643
  %18 = sext i8 %17 to i32, !dbg !3643
  %19 = getelementptr inbounds i16, i16* %15, i32 %18, !dbg !3643
  %20 = load i16, i16* %19, align 2, !dbg !3643
  %21 = zext i16 %20 to i32, !dbg !3643
  %22 = and i32 %21, 1024, !dbg !3643
  %23 = icmp ne i32 %22, 0, !dbg !3643
  br i1 %23, label %29, label %24, !dbg !3644

; <label>:24:                                     ; preds = %13
  %25 = load i8*, i8** %4, align 4, !dbg !3645
  %26 = load i8, i8* %25, align 1, !dbg !3646
  %27 = sext i8 %26 to i32, !dbg !3646
  %28 = icmp ne i32 %27, 0, !dbg !3644
  br label %29

; <label>:29:                                     ; preds = %24, %13
  %30 = phi i1 [ false, %13 ], [ %28, %24 ]
  br i1 %30, label %31, label %34, !dbg !3642

; <label>:31:                                     ; preds = %29
  %32 = load i8*, i8** %4, align 4, !dbg !3647
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !3647
  store i8* %33, i8** %4, align 4, !dbg !3647
  br label %13, !dbg !3642, !llvm.loop !3648

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %4, align 4, !dbg !3649
  %36 = load i8, i8* %35, align 1, !dbg !3651
  %37 = icmp ne i8 %36, 0, !dbg !3651
  br i1 %37, label %38, label %83, !dbg !3652

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %4, align 4, !dbg !3653
  %40 = load i8, i8* %39, align 1, !dbg !3655
  %41 = sext i8 %40 to i32, !dbg !3655
  %42 = call i32 @toupper(i32 %41) #8, !dbg !3656
  %43 = sub nsw i32 %42, 65, !dbg !3657
  store i32 %43, i32* %6, align 4, !dbg !3658
  %44 = load i32, i32* %6, align 4, !dbg !3659
  %45 = icmp sge i32 %44, 0, !dbg !3661
  br i1 %45, label %46, label %82, !dbg !3662

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* %6, align 4, !dbg !3663
  %48 = icmp sle i32 %47, 7, !dbg !3664
  br i1 %48, label %49, label %82, !dbg !3665

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %6, align 4, !dbg !3666
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i32 0, i32 %50, !dbg !3668
  %52 = load i32, i32* %51, align 4, !dbg !3668
  store i32 %52, i32* %6, align 4, !dbg !3669
  %53 = load i8*, i8** %4, align 4, !dbg !3670
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !3670
  store i8* %54, i8** %4, align 4, !dbg !3670
  %55 = load i8*, i8** %4, align 4, !dbg !3671
  %56 = load i8, i8* %55, align 1, !dbg !3673
  %57 = sext i8 %56 to i32, !dbg !3673
  %58 = icmp eq i32 %57, 98, !dbg !3674
  br i1 %58, label %59, label %64, !dbg !3675

; <label>:59:                                     ; preds = %49
  %60 = load i32, i32* %6, align 4, !dbg !3676
  %61 = add nsw i32 %60, -1, !dbg !3676
  store i32 %61, i32* %6, align 4, !dbg !3676
  %62 = load i8*, i8** %4, align 4, !dbg !3677
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !3677
  store i8* %63, i8** %4, align 4, !dbg !3677
  br label %75, !dbg !3678

; <label>:64:                                     ; preds = %49
  %65 = load i8*, i8** %4, align 4, !dbg !3679
  %66 = load i8, i8* %65, align 1, !dbg !3681
  %67 = sext i8 %66 to i32, !dbg !3681
  %68 = icmp eq i32 %67, 35, !dbg !3682
  br i1 %68, label %69, label %74, !dbg !3683

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %6, align 4, !dbg !3684
  %71 = add nsw i32 %70, 1, !dbg !3684
  store i32 %71, i32* %6, align 4, !dbg !3684
  %72 = load i8*, i8** %4, align 4, !dbg !3685
  %73 = getelementptr inbounds i8, i8* %72, i32 1, !dbg !3685
  store i8* %73, i8** %4, align 4, !dbg !3685
  br label %74, !dbg !3686

; <label>:74:                                     ; preds = %69, %64
  br label %75

; <label>:75:                                     ; preds = %74, %59
  %76 = load i8*, i8** %4, align 4, !dbg !3687
  %77 = call i32 @atoi(i8* %76) #8, !dbg !3688
  %78 = mul nsw i32 %77, 12, !dbg !3689
  %79 = add nsw i32 %78, 0, !dbg !3690
  %80 = load i32, i32* %6, align 4, !dbg !3691
  %81 = add nsw i32 %80, %79, !dbg !3691
  store i32 %81, i32* %6, align 4, !dbg !3691
  br label %82, !dbg !3692

; <label>:82:                                     ; preds = %75, %46, %38
  br label %83, !dbg !3693

; <label>:83:                                     ; preds = %82, %34
  %84 = load i32, i32* %6, align 4, !dbg !3694
  ret i32 %84, !dbg !3695
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

; Function Attrs: noinline nounwind optnone
define internal i8* @muGetNameFromNote(i8*, i32) #0 !dbg !3696 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3699, metadata !502), !dbg !3700
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3701, metadata !502), !dbg !3702
  %6 = load i8*, i8** %4, align 4, !dbg !3703
  %7 = icmp ne i8* %6, null, !dbg !3703
  br i1 %7, label %9, label %8, !dbg !3705

; <label>:8:                                      ; preds = %2
  store i8* null, i8** %3, align 4, !dbg !3706
  br label %30, !dbg !3706

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !3707
  %11 = icmp slt i32 %10, 0, !dbg !3709
  br i1 %11, label %15, label %12, !dbg !3710

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %5, align 4, !dbg !3711
  %14 = icmp sgt i32 %13, 127, !dbg !3712
  br i1 %14, label %15, label %18, !dbg !3713

; <label>:15:                                     ; preds = %12, %9
  %16 = load i8*, i8** %4, align 4, !dbg !3714
  %17 = call i8* @strcpy(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0)) #7, !dbg !3715
  br label %28, !dbg !3715

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %4, align 4, !dbg !3716
  %20 = load i32, i32* %5, align 4, !dbg !3717
  %21 = srem i32 %20, 12, !dbg !3718
  %22 = getelementptr inbounds [12 x i8*], [12 x i8*]* @szNoteName, i32 0, i32 %21, !dbg !3719
  %23 = load i8*, i8** %22, align 4, !dbg !3719
  %24 = load i32, i32* %5, align 4, !dbg !3720
  %25 = sub nsw i32 %24, 0, !dbg !3721
  %26 = sdiv i32 %25, 12, !dbg !3722
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* %23, i32 %26) #7, !dbg !3723
  br label %28

; <label>:28:                                     ; preds = %18, %15
  %29 = load i8*, i8** %4, align 4, !dbg !3724
  store i8* %29, i8** %3, align 4, !dbg !3725
  br label %30, !dbg !3725

; <label>:30:                                     ; preds = %28, %8
  %31 = load i8*, i8** %3, align 4, !dbg !3726
  ret i8* %31, !dbg !3726
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define internal float @muGetFreqFromNote(i32) #0 !dbg !3727 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3730, metadata !502), !dbg !3731
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3732, metadata !502), !dbg !3733
  %6 = load i32, i32* %3, align 4, !dbg !3734
  %7 = sdiv i32 %6, 12, !dbg !3735
  %8 = sub nsw i32 %7, 5, !dbg !3736
  store i32 %8, i32* %4, align 4, !dbg !3733
  call void @llvm.dbg.declare(metadata float* %5, metadata !3737, metadata !502), !dbg !3738
  %9 = load i32, i32* %3, align 4, !dbg !3739
  %10 = icmp slt i32 %9, 0, !dbg !3741
  br i1 %10, label %14, label %11, !dbg !3742

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %3, align 4, !dbg !3743
  %13 = icmp sgt i32 %12, 127, !dbg !3744
  br i1 %13, label %14, label %15, !dbg !3745

; <label>:14:                                     ; preds = %11, %1
  store float 0.000000e+00, float* %2, align 4, !dbg !3746
  br label %39, !dbg !3746

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !3747
  %17 = srem i32 %16, 12, !dbg !3748
  %18 = getelementptr inbounds [12 x float], [12 x float]* @fFreqlist, i32 0, i32 %17, !dbg !3749
  %19 = load float, float* %18, align 4, !dbg !3749
  store float %19, float* %5, align 4, !dbg !3750
  br label %20, !dbg !3751

; <label>:20:                                     ; preds = %23, %15
  %21 = load i32, i32* %4, align 4, !dbg !3752
  %22 = icmp sgt i32 %21, 0, !dbg !3753
  br i1 %22, label %23, label %28, !dbg !3751

; <label>:23:                                     ; preds = %20
  %24 = load float, float* %5, align 4, !dbg !3754
  %25 = fmul float %24, 2.000000e+00, !dbg !3754
  store float %25, float* %5, align 4, !dbg !3754
  %26 = load i32, i32* %4, align 4, !dbg !3755
  %27 = add nsw i32 %26, -1, !dbg !3755
  store i32 %27, i32* %4, align 4, !dbg !3755
  br label %20, !dbg !3751, !llvm.loop !3756

; <label>:28:                                     ; preds = %20
  br label %29, !dbg !3757

; <label>:29:                                     ; preds = %32, %28
  %30 = load i32, i32* %4, align 4, !dbg !3758
  %31 = icmp slt i32 %30, 0, !dbg !3759
  br i1 %31, label %32, label %37, !dbg !3757

; <label>:32:                                     ; preds = %29
  %33 = load float, float* %5, align 4, !dbg !3760
  %34 = fdiv float %33, 2.000000e+00, !dbg !3760
  store float %34, float* %5, align 4, !dbg !3760
  %35 = load i32, i32* %4, align 4, !dbg !3761
  %36 = add nsw i32 %35, 1, !dbg !3761
  store i32 %36, i32* %4, align 4, !dbg !3761
  br label %29, !dbg !3757, !llvm.loop !3762

; <label>:37:                                     ; preds = %29
  %38 = load float, float* %5, align 4, !dbg !3763
  store float %38, float* %2, align 4, !dbg !3764
  br label %39, !dbg !3764

; <label>:39:                                     ; preds = %37, %14
  %40 = load float, float* %2, align 4, !dbg !3765
  ret float %40, !dbg !3765
}

; Function Attrs: noinline nounwind optnone
define internal i32 @muGetNoteFromFreq(float) #0 !dbg !3766 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %2, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !3769, metadata !502), !dbg !3770
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3771, metadata !502), !dbg !3772
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3773, metadata !502), !dbg !3774
  store i32 0, i32* %4, align 4, !dbg !3774
  call void @llvm.dbg.declare(metadata float* %5, metadata !3775, metadata !502), !dbg !3776
  store float 2.000000e+04, float* %5, align 4, !dbg !3776
  call void @llvm.dbg.declare(metadata float* %6, metadata !3777, metadata !502), !dbg !3778
  store i32 0, i32* %3, align 4, !dbg !3779
  br label %7, !dbg !3781

; <label>:7:                                      ; preds = %29, %1
  %8 = load i32, i32* %3, align 4, !dbg !3782
  %9 = icmp slt i32 %8, 127, !dbg !3784
  br i1 %9, label %10, label %32, !dbg !3785

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4, !dbg !3786
  %12 = call float @muGetFreqFromNote(i32 %11), !dbg !3788
  store float %12, float* %6, align 4, !dbg !3789
  %13 = load float, float* %2, align 4, !dbg !3790
  %14 = load float, float* %6, align 4, !dbg !3791
  %15 = fsub float %14, %13, !dbg !3791
  store float %15, float* %6, align 4, !dbg !3791
  %16 = load float, float* %6, align 4, !dbg !3792
  %17 = fcmp olt float %16, 0.000000e+00, !dbg !3794
  br i1 %17, label %18, label %21, !dbg !3795

; <label>:18:                                     ; preds = %10
  %19 = load float, float* %6, align 4, !dbg !3796
  %20 = fsub float -0.000000e+00, %19, !dbg !3797
  store float %20, float* %6, align 4, !dbg !3798
  br label %21, !dbg !3799

; <label>:21:                                     ; preds = %18, %10
  %22 = load float, float* %6, align 4, !dbg !3800
  %23 = load float, float* %5, align 4, !dbg !3802
  %24 = fcmp olt float %22, %23, !dbg !3803
  br i1 %24, label %25, label %28, !dbg !3804

; <label>:25:                                     ; preds = %21
  %26 = load float, float* %6, align 4, !dbg !3805
  store float %26, float* %5, align 4, !dbg !3807
  %27 = load i32, i32* %3, align 4, !dbg !3808
  store i32 %27, i32* %4, align 4, !dbg !3809
  br label %28, !dbg !3810

; <label>:28:                                     ; preds = %25, %21
  br label %29, !dbg !3811

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %3, align 4, !dbg !3812
  %31 = add nsw i32 %30, 1, !dbg !3812
  store i32 %31, i32* %3, align 4, !dbg !3812
  br label %7, !dbg !3813, !llvm.loop !3814

; <label>:32:                                     ; preds = %7
  %33 = load i32, i32* %4, align 4, !dbg !3816
  ret i32 %33, !dbg !3817
}

; Function Attrs: noinline nounwind optnone
define internal i32 @muGuessChord(i32*, i32, i32, i32) #0 !dbg !3818 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [24 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 4
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3823, metadata !502), !dbg !3824
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3825, metadata !502), !dbg !3826
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3827, metadata !502), !dbg !3828
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3829, metadata !502), !dbg !3830
  call void @llvm.dbg.declare(metadata [24 x i32]* %10, metadata !3831, metadata !502), !dbg !3835
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3836, metadata !502), !dbg !3837
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3838, metadata !502), !dbg !3839
  store i32 999, i32* %12, align 4, !dbg !3839
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3840, metadata !502), !dbg !3841
  store i32 999, i32* %13, align 4, !dbg !3841
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3842, metadata !502), !dbg !3843
  store i32 0, i32* %14, align 4, !dbg !3843
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3844, metadata !502), !dbg !3845
  store i32 0, i32* %15, align 4, !dbg !3845
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3846, metadata !502), !dbg !3847
  store i32 0, i32* %16, align 4, !dbg !3847
  store i32 0, i32* %11, align 4, !dbg !3848
  br label %17, !dbg !3850

; <label>:17:                                     ; preds = %23, %4
  %18 = load i32, i32* %11, align 4, !dbg !3851
  %19 = icmp slt i32 %18, 24, !dbg !3853
  br i1 %19, label %20, label %26, !dbg !3854

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %11, align 4, !dbg !3855
  %22 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %21, !dbg !3857
  store i32 0, i32* %22, align 4, !dbg !3858
  br label %23, !dbg !3859

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %11, align 4, !dbg !3860
  %25 = add nsw i32 %24, 1, !dbg !3860
  store i32 %25, i32* %11, align 4, !dbg !3860
  br label %17, !dbg !3861, !llvm.loop !3862

; <label>:26:                                     ; preds = %17
  %27 = load i32, i32* %8, align 4, !dbg !3864
  store i32 %27, i32* %11, align 4, !dbg !3866
  br label %28, !dbg !3867

; <label>:28:                                     ; preds = %68, %26
  %29 = load i32, i32* %11, align 4, !dbg !3868
  %30 = load i32, i32* %9, align 4, !dbg !3870
  %31 = icmp sle i32 %29, %30, !dbg !3871
  br i1 %31, label %32, label %71, !dbg !3872

; <label>:32:                                     ; preds = %28
  %33 = load i32*, i32** %6, align 4, !dbg !3873
  %34 = load i32, i32* %7, align 4, !dbg !3876
  %35 = mul nsw i32 %34, 128, !dbg !3877
  %36 = load i32, i32* %11, align 4, !dbg !3878
  %37 = add nsw i32 %35, %36, !dbg !3879
  %38 = getelementptr inbounds i32, i32* %33, i32 %37, !dbg !3873
  %39 = load i32, i32* %38, align 4, !dbg !3873
  %40 = icmp ne i32 %39, 0, !dbg !3873
  br i1 %40, label %41, label %67, !dbg !3880

; <label>:41:                                     ; preds = %32
  %42 = load i32, i32* %11, align 4, !dbg !3881
  %43 = load i32, i32* %12, align 4, !dbg !3884
  %44 = icmp slt i32 %42, %43, !dbg !3885
  br i1 %44, label %45, label %47, !dbg !3886

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %11, align 4, !dbg !3887
  store i32 %46, i32* %12, align 4, !dbg !3889
  br label %47, !dbg !3890

; <label>:47:                                     ; preds = %45, %41
  %48 = load i32, i32* %11, align 4, !dbg !3891
  %49 = srem i32 %48, 12, !dbg !3892
  %50 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %49, !dbg !3893
  %51 = load i32, i32* %50, align 4, !dbg !3894
  %52 = add nsw i32 %51, 1, !dbg !3894
  store i32 %52, i32* %50, align 4, !dbg !3894
  %53 = load i32, i32* %11, align 4, !dbg !3895
  %54 = srem i32 %53, 12, !dbg !3896
  %55 = add nsw i32 %54, 12, !dbg !3897
  %56 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %55, !dbg !3898
  %57 = load i32, i32* %56, align 4, !dbg !3899
  %58 = add nsw i32 %57, 1, !dbg !3899
  store i32 %58, i32* %56, align 4, !dbg !3899
  %59 = load i32, i32* %11, align 4, !dbg !3900
  %60 = srem i32 %59, 12, !dbg !3902
  %61 = load i32, i32* %13, align 4, !dbg !3903
  %62 = icmp slt i32 %60, %61, !dbg !3904
  br i1 %62, label %63, label %66, !dbg !3905

; <label>:63:                                     ; preds = %47
  %64 = load i32, i32* %11, align 4, !dbg !3906
  %65 = srem i32 %64, 12, !dbg !3908
  store i32 %65, i32* %13, align 4, !dbg !3909
  br label %66, !dbg !3910

; <label>:66:                                     ; preds = %63, %47
  br label %67, !dbg !3911

; <label>:67:                                     ; preds = %66, %32
  br label %68, !dbg !3912

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %11, align 4, !dbg !3913
  %70 = add nsw i32 %69, 1, !dbg !3913
  store i32 %70, i32* %11, align 4, !dbg !3913
  br label %28, !dbg !3914, !llvm.loop !3915

; <label>:71:                                     ; preds = %28
  %72 = load i32, i32* %12, align 4, !dbg !3917
  %73 = icmp eq i32 %72, 999, !dbg !3919
  br i1 %73, label %74, label %75, !dbg !3920

; <label>:74:                                     ; preds = %71
  store i32 -1, i32* %5, align 4, !dbg !3921
  br label %257, !dbg !3921

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %12, align 4, !dbg !3923
  %77 = srem i32 %76, 12, !dbg !3923
  store i32 %77, i32* %12, align 4, !dbg !3923
  %78 = load i32, i32* %13, align 4, !dbg !3924
  %79 = add nsw i32 %78, 3, !dbg !3926
  %80 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %79, !dbg !3927
  %81 = load i32, i32* %80, align 4, !dbg !3927
  %82 = icmp ne i32 %81, 0, !dbg !3927
  br i1 %82, label %83, label %92, !dbg !3928

; <label>:83:                                     ; preds = %75
  %84 = load i32, i32* %13, align 4, !dbg !3929
  %85 = add nsw i32 %84, 8, !dbg !3930
  %86 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %85, !dbg !3931
  %87 = load i32, i32* %86, align 4, !dbg !3931
  %88 = icmp ne i32 %87, 0, !dbg !3931
  br i1 %88, label %89, label %92, !dbg !3932

; <label>:89:                                     ; preds = %83
  %90 = load i32, i32* %13, align 4, !dbg !3933
  %91 = add nsw i32 %90, 8, !dbg !3935
  store i32 %91, i32* %14, align 4, !dbg !3936
  store i32 256, i32* %15, align 4, !dbg !3937
  br label %215, !dbg !3938

; <label>:92:                                     ; preds = %83, %75
  %93 = load i32, i32* %13, align 4, !dbg !3939
  %94 = add nsw i32 %93, 5, !dbg !3941
  %95 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %94, !dbg !3942
  %96 = load i32, i32* %95, align 4, !dbg !3942
  %97 = icmp ne i32 %96, 0, !dbg !3942
  br i1 %97, label %98, label %107, !dbg !3943

; <label>:98:                                     ; preds = %92
  %99 = load i32, i32* %13, align 4, !dbg !3944
  %100 = add nsw i32 %99, 9, !dbg !3945
  %101 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %100, !dbg !3946
  %102 = load i32, i32* %101, align 4, !dbg !3946
  %103 = icmp ne i32 %102, 0, !dbg !3946
  br i1 %103, label %104, label %107, !dbg !3947

; <label>:104:                                    ; preds = %98
  %105 = load i32, i32* %13, align 4, !dbg !3948
  %106 = add nsw i32 %105, 5, !dbg !3950
  store i32 %106, i32* %14, align 4, !dbg !3951
  store i32 256, i32* %15, align 4, !dbg !3952
  br label %214, !dbg !3953

; <label>:107:                                    ; preds = %98, %92
  %108 = load i32, i32* %13, align 4, !dbg !3954
  %109 = add nsw i32 %108, 4, !dbg !3956
  %110 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %109, !dbg !3957
  %111 = load i32, i32* %110, align 4, !dbg !3957
  %112 = icmp ne i32 %111, 0, !dbg !3957
  br i1 %112, label %113, label %121, !dbg !3958

; <label>:113:                                    ; preds = %107
  %114 = load i32, i32* %13, align 4, !dbg !3959
  %115 = add nsw i32 %114, 7, !dbg !3960
  %116 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %115, !dbg !3961
  %117 = load i32, i32* %116, align 4, !dbg !3961
  %118 = icmp ne i32 %117, 0, !dbg !3961
  br i1 %118, label %119, label %121, !dbg !3962

; <label>:119:                                    ; preds = %113
  %120 = load i32, i32* %13, align 4, !dbg !3963
  store i32 %120, i32* %14, align 4, !dbg !3965
  store i32 256, i32* %15, align 4, !dbg !3966
  br label %213, !dbg !3967

; <label>:121:                                    ; preds = %113, %107
  %122 = load i32, i32* %13, align 4, !dbg !3968
  %123 = add nsw i32 %122, 4, !dbg !3970
  %124 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %123, !dbg !3971
  %125 = load i32, i32* %124, align 4, !dbg !3971
  %126 = icmp ne i32 %125, 0, !dbg !3971
  br i1 %126, label %127, label %136, !dbg !3972

; <label>:127:                                    ; preds = %121
  %128 = load i32, i32* %13, align 4, !dbg !3973
  %129 = add nsw i32 %128, 9, !dbg !3974
  %130 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %129, !dbg !3975
  %131 = load i32, i32* %130, align 4, !dbg !3975
  %132 = icmp ne i32 %131, 0, !dbg !3975
  br i1 %132, label %133, label %136, !dbg !3976

; <label>:133:                                    ; preds = %127
  %134 = load i32, i32* %13, align 4, !dbg !3977
  %135 = add nsw i32 %134, 9, !dbg !3979
  store i32 %135, i32* %14, align 4, !dbg !3980
  store i32 512, i32* %15, align 4, !dbg !3981
  br label %212, !dbg !3982

; <label>:136:                                    ; preds = %127, %121
  %137 = load i32, i32* %13, align 4, !dbg !3983
  %138 = add nsw i32 %137, 5, !dbg !3985
  %139 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %138, !dbg !3986
  %140 = load i32, i32* %139, align 4, !dbg !3986
  %141 = icmp ne i32 %140, 0, !dbg !3986
  br i1 %141, label %142, label %151, !dbg !3987

; <label>:142:                                    ; preds = %136
  %143 = load i32, i32* %13, align 4, !dbg !3988
  %144 = add nsw i32 %143, 8, !dbg !3989
  %145 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %144, !dbg !3990
  %146 = load i32, i32* %145, align 4, !dbg !3990
  %147 = icmp ne i32 %146, 0, !dbg !3990
  br i1 %147, label %148, label %151, !dbg !3991

; <label>:148:                                    ; preds = %142
  %149 = load i32, i32* %13, align 4, !dbg !3992
  %150 = add nsw i32 %149, 5, !dbg !3994
  store i32 %150, i32* %14, align 4, !dbg !3995
  store i32 512, i32* %15, align 4, !dbg !3996
  br label %211, !dbg !3997

; <label>:151:                                    ; preds = %142, %136
  %152 = load i32, i32* %13, align 4, !dbg !3998
  %153 = add nsw i32 %152, 3, !dbg !4000
  %154 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %153, !dbg !4001
  %155 = load i32, i32* %154, align 4, !dbg !4001
  %156 = icmp ne i32 %155, 0, !dbg !4001
  br i1 %156, label %157, label %165, !dbg !4002

; <label>:157:                                    ; preds = %151
  %158 = load i32, i32* %13, align 4, !dbg !4003
  %159 = add nsw i32 %158, 7, !dbg !4004
  %160 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %159, !dbg !4005
  %161 = load i32, i32* %160, align 4, !dbg !4005
  %162 = icmp ne i32 %161, 0, !dbg !4005
  br i1 %162, label %163, label %165, !dbg !4006

; <label>:163:                                    ; preds = %157
  %164 = load i32, i32* %13, align 4, !dbg !4007
  store i32 %164, i32* %14, align 4, !dbg !4009
  store i32 512, i32* %15, align 4, !dbg !4010
  br label %210, !dbg !4011

; <label>:165:                                    ; preds = %157, %151
  %166 = load i32, i32* %13, align 4, !dbg !4012
  %167 = add nsw i32 %166, 3, !dbg !4014
  %168 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %167, !dbg !4015
  %169 = load i32, i32* %168, align 4, !dbg !4015
  %170 = icmp ne i32 %169, 0, !dbg !4015
  br i1 %170, label %171, label %179, !dbg !4016

; <label>:171:                                    ; preds = %165
  %172 = load i32, i32* %13, align 4, !dbg !4017
  %173 = add nsw i32 %172, 6, !dbg !4018
  %174 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %173, !dbg !4019
  %175 = load i32, i32* %174, align 4, !dbg !4019
  %176 = icmp ne i32 %175, 0, !dbg !4019
  br i1 %176, label %177, label %179, !dbg !4020

; <label>:177:                                    ; preds = %171
  %178 = load i32, i32* %12, align 4, !dbg !4021
  store i32 %178, i32* %14, align 4, !dbg !4023
  store i32 1024, i32* %15, align 4, !dbg !4024
  br label %209, !dbg !4025

; <label>:179:                                    ; preds = %171, %165
  %180 = load i32, i32* %13, align 4, !dbg !4026
  %181 = add nsw i32 %180, 6, !dbg !4028
  %182 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %181, !dbg !4029
  %183 = load i32, i32* %182, align 4, !dbg !4029
  %184 = icmp ne i32 %183, 0, !dbg !4029
  br i1 %184, label %185, label %193, !dbg !4030

; <label>:185:                                    ; preds = %179
  %186 = load i32, i32* %13, align 4, !dbg !4031
  %187 = add nsw i32 %186, 9, !dbg !4032
  %188 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %187, !dbg !4033
  %189 = load i32, i32* %188, align 4, !dbg !4033
  %190 = icmp ne i32 %189, 0, !dbg !4033
  br i1 %190, label %191, label %193, !dbg !4034

; <label>:191:                                    ; preds = %185
  %192 = load i32, i32* %12, align 4, !dbg !4035
  store i32 %192, i32* %14, align 4, !dbg !4037
  store i32 1024, i32* %15, align 4, !dbg !4038
  br label %208, !dbg !4039

; <label>:193:                                    ; preds = %185, %179
  %194 = load i32, i32* %13, align 4, !dbg !4040
  %195 = add nsw i32 %194, 4, !dbg !4042
  %196 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %195, !dbg !4043
  %197 = load i32, i32* %196, align 4, !dbg !4043
  %198 = icmp ne i32 %197, 0, !dbg !4043
  br i1 %198, label %199, label %207, !dbg !4044

; <label>:199:                                    ; preds = %193
  %200 = load i32, i32* %13, align 4, !dbg !4045
  %201 = add nsw i32 %200, 8, !dbg !4046
  %202 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %201, !dbg !4047
  %203 = load i32, i32* %202, align 4, !dbg !4047
  %204 = icmp ne i32 %203, 0, !dbg !4047
  br i1 %204, label %205, label %207, !dbg !4048

; <label>:205:                                    ; preds = %199
  %206 = load i32, i32* %12, align 4, !dbg !4049
  store i32 %206, i32* %14, align 4, !dbg !4051
  store i32 768, i32* %15, align 4, !dbg !4052
  br label %207, !dbg !4053

; <label>:207:                                    ; preds = %205, %199, %193
  br label %208

; <label>:208:                                    ; preds = %207, %191
  br label %209

; <label>:209:                                    ; preds = %208, %177
  br label %210

; <label>:210:                                    ; preds = %209, %163
  br label %211

; <label>:211:                                    ; preds = %210, %148
  br label %212

; <label>:212:                                    ; preds = %211, %133
  br label %213

; <label>:213:                                    ; preds = %212, %119
  br label %214

; <label>:214:                                    ; preds = %213, %104
  br label %215

; <label>:215:                                    ; preds = %214, %89
  %216 = load i32, i32* %14, align 4, !dbg !4054
  %217 = add nsw i32 %216, 10, !dbg !4056
  %218 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %217, !dbg !4057
  %219 = load i32, i32* %218, align 4, !dbg !4057
  %220 = icmp ne i32 %219, 0, !dbg !4057
  br i1 %220, label %221, label %224, !dbg !4058

; <label>:221:                                    ; preds = %215
  %222 = load i32, i32* %16, align 4, !dbg !4059
  %223 = or i32 %222, 16777216, !dbg !4059
  store i32 %223, i32* %16, align 4, !dbg !4059
  br label %224, !dbg !4061

; <label>:224:                                    ; preds = %221, %215
  %225 = load i32, i32* %14, align 4, !dbg !4062
  %226 = add nsw i32 %225, 11, !dbg !4064
  %227 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %226, !dbg !4065
  %228 = load i32, i32* %227, align 4, !dbg !4065
  %229 = icmp ne i32 %228, 0, !dbg !4065
  br i1 %229, label %230, label %233, !dbg !4066

; <label>:230:                                    ; preds = %224
  %231 = load i32, i32* %16, align 4, !dbg !4067
  %232 = or i32 %231, 67108864, !dbg !4067
  store i32 %232, i32* %16, align 4, !dbg !4067
  br label %233, !dbg !4069

; <label>:233:                                    ; preds = %230, %224
  %234 = load i32, i32* %14, align 4, !dbg !4070
  %235 = add nsw i32 %234, 2, !dbg !4072
  %236 = getelementptr inbounds [24 x i32], [24 x i32]* %10, i32 0, i32 %235, !dbg !4073
  %237 = load i32, i32* %236, align 4, !dbg !4073
  %238 = icmp ne i32 %237, 0, !dbg !4073
  br i1 %238, label %239, label %242, !dbg !4074

; <label>:239:                                    ; preds = %233
  %240 = load i32, i32* %16, align 4, !dbg !4075
  %241 = or i32 %240, 33554432, !dbg !4075
  store i32 %241, i32* %16, align 4, !dbg !4075
  br label %242, !dbg !4077

; <label>:242:                                    ; preds = %239, %233
  %243 = load i32, i32* %14, align 4, !dbg !4078
  %244 = srem i32 %243, 12, !dbg !4078
  store i32 %244, i32* %14, align 4, !dbg !4078
  %245 = load i32, i32* %15, align 4, !dbg !4079
  %246 = icmp eq i32 %245, 0, !dbg !4081
  br i1 %246, label %247, label %248, !dbg !4082

; <label>:247:                                    ; preds = %242
  store i32 -1, i32* %5, align 4, !dbg !4083
  br label %257, !dbg !4083

; <label>:248:                                    ; preds = %242
  %249 = load i32, i32* %14, align 4, !dbg !4085
  %250 = load i32, i32* %15, align 4, !dbg !4086
  %251 = or i32 %249, %250, !dbg !4087
  %252 = load i32, i32* %16, align 4, !dbg !4088
  %253 = or i32 %251, %252, !dbg !4089
  %254 = load i32, i32* %12, align 4, !dbg !4090
  %255 = shl i32 %254, 16, !dbg !4091
  %256 = or i32 %253, %255, !dbg !4092
  store i32 %256, i32* %5, align 4, !dbg !4093
  br label %257, !dbg !4093

; <label>:257:                                    ; preds = %248, %247, %74
  %258 = load i32, i32* %5, align 4, !dbg !4094
  ret i32 %258, !dbg !4094
}

; Function Attrs: noinline nounwind optnone
define internal i8* @muGetChordName(i8*, i32) #0 !dbg !4095 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4096, metadata !502), !dbg !4097
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4098, metadata !502), !dbg !4099
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4100, metadata !502), !dbg !4101
  %7 = load i32, i32* %4, align 4, !dbg !4102
  %8 = and i32 %7, 255, !dbg !4103
  store i32 %8, i32* %5, align 4, !dbg !4101
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4104, metadata !502), !dbg !4105
  %9 = load i32, i32* %4, align 4, !dbg !4106
  %10 = and i32 %9, 16711680, !dbg !4107
  %11 = ashr i32 %10, 16, !dbg !4108
  store i32 %11, i32* %6, align 4, !dbg !4105
  %12 = load i32, i32* %5, align 4, !dbg !4109
  %13 = icmp slt i32 %12, 0, !dbg !4111
  br i1 %13, label %17, label %14, !dbg !4112

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %5, align 4, !dbg !4113
  %16 = icmp sgt i32 %15, 11, !dbg !4114
  br i1 %16, label %17, label %18, !dbg !4115

; <label>:17:                                     ; preds = %14, %2
  store i32 0, i32* %5, align 4, !dbg !4116
  br label %18, !dbg !4118

; <label>:18:                                     ; preds = %17, %14
  %19 = load i32, i32* %6, align 4, !dbg !4119
  %20 = icmp slt i32 %19, 0, !dbg !4121
  br i1 %20, label %24, label %21, !dbg !4122

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %6, align 4, !dbg !4123
  %23 = icmp sgt i32 %22, 11, !dbg !4124
  br i1 %23, label %24, label %25, !dbg !4125

; <label>:24:                                     ; preds = %21, %18
  store i32 0, i32* %6, align 4, !dbg !4126
  br label %25, !dbg !4128

; <label>:25:                                     ; preds = %24, %21
  %26 = load i8*, i8** %3, align 4, !dbg !4129
  %27 = load i32, i32* %5, align 4, !dbg !4130
  %28 = getelementptr inbounds [12 x i8*], [12 x i8*]* @szNoteName, i32 0, i32 %27, !dbg !4131
  %29 = load i8*, i8** %28, align 4, !dbg !4131
  %30 = call i8* @strcpy(i8* %26, i8* %29) #7, !dbg !4132
  %31 = load i32, i32* %4, align 4, !dbg !4133
  %32 = and i32 %31, 65280, !dbg !4134
  switch i32 %32, label %43 [
    i32 256, label %33
    i32 512, label %34
    i32 768, label %37
    i32 1024, label %40
  ], !dbg !4135

; <label>:33:                                     ; preds = %25
  br label %43, !dbg !4136

; <label>:34:                                     ; preds = %25
  %35 = load i8*, i8** %3, align 4, !dbg !4138
  %36 = call i8* @strcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)) #7, !dbg !4139
  br label %43, !dbg !4140

; <label>:37:                                     ; preds = %25
  %38 = load i8*, i8** %3, align 4, !dbg !4141
  %39 = call i8* @strcat(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #7, !dbg !4142
  br label %43, !dbg !4143

; <label>:40:                                     ; preds = %25
  %41 = load i8*, i8** %3, align 4, !dbg !4144
  %42 = call i8* @strcat(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0)) #7, !dbg !4145
  br label %43, !dbg !4146

; <label>:43:                                     ; preds = %40, %37, %34, %33, %25
  %44 = load i32, i32* %4, align 4, !dbg !4147
  %45 = and i32 %44, 16777216, !dbg !4149
  %46 = icmp ne i32 %45, 0, !dbg !4149
  br i1 %46, label %47, label %50, !dbg !4150

; <label>:47:                                     ; preds = %43
  %48 = load i8*, i8** %3, align 4, !dbg !4151
  %49 = call i8* @strcat(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #7, !dbg !4153
  br label %50, !dbg !4154

; <label>:50:                                     ; preds = %47, %43
  %51 = load i32, i32* %4, align 4, !dbg !4155
  %52 = and i32 %51, 33554432, !dbg !4157
  %53 = icmp ne i32 %52, 0, !dbg !4157
  br i1 %53, label %54, label %57, !dbg !4158

; <label>:54:                                     ; preds = %50
  %55 = load i8*, i8** %3, align 4, !dbg !4159
  %56 = call i8* @strcat(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)) #7, !dbg !4161
  br label %57, !dbg !4162

; <label>:57:                                     ; preds = %54, %50
  %58 = load i32, i32* %4, align 4, !dbg !4163
  %59 = and i32 %58, 67108864, !dbg !4165
  %60 = icmp ne i32 %59, 0, !dbg !4165
  br i1 %60, label %61, label %64, !dbg !4166

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %3, align 4, !dbg !4167
  %63 = call i8* @strcat(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0)) #7, !dbg !4169
  br label %64, !dbg !4170

; <label>:64:                                     ; preds = %61, %57
  %65 = load i32, i32* %6, align 4, !dbg !4171
  %66 = load i32, i32* %5, align 4, !dbg !4173
  %67 = icmp ne i32 %65, %66, !dbg !4174
  br i1 %67, label %68, label %76, !dbg !4175

; <label>:68:                                     ; preds = %64
  %69 = load i8*, i8** %3, align 4, !dbg !4176
  %70 = call i8* @strcat(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #7, !dbg !4178
  %71 = load i8*, i8** %3, align 4, !dbg !4179
  %72 = load i32, i32* %6, align 4, !dbg !4180
  %73 = getelementptr inbounds [12 x i8*], [12 x i8*]* @szNoteName, i32 0, i32 %72, !dbg !4181
  %74 = load i8*, i8** %73, align 4, !dbg !4181
  %75 = call i8* @strcat(i8* %71, i8* %74) #7, !dbg !4182
  br label %76, !dbg !4183

; <label>:76:                                     ; preds = %68, %64
  %77 = load i8*, i8** %3, align 4, !dbg !4184
  ret i8* %77, !dbg !4185
}

; Function Attrs: noinline nounwind optnone
define internal void @InitPrefs(%struct.CONVERT_PREFS*) #0 !dbg !4186 {
  %2 = alloca %struct.CONVERT_PREFS*, align 4
  store %struct.CONVERT_PREFS* %0, %struct.CONVERT_PREFS** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.CONVERT_PREFS** %2, metadata !4189, metadata !502), !dbg !4190
  %3 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %2, align 4, !dbg !4191
  %4 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %3, i32 0, i32 0, !dbg !4192
  store i32 100, i32* %4, align 4, !dbg !4193
  %5 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %2, align 4, !dbg !4194
  %6 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %5, i32 0, i32 1, !dbg !4195
  store i32 0, i32* %6, align 4, !dbg !4196
  %7 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %2, align 4, !dbg !4197
  %8 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %7, i32 0, i32 2, !dbg !4198
  store i32 0, i32* %8, align 4, !dbg !4199
  %9 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %2, align 4, !dbg !4200
  %10 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %9, i32 0, i32 3, !dbg !4201
  store i32 1, i32* %10, align 4, !dbg !4202
  ret void, !dbg !4203
}

; Function Attrs: noinline nounwind optnone
define internal i32 @rtttlGetClosestTempo(i32) #0 !dbg !466 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4204, metadata !502), !dbg !4205
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4206, metadata !502), !dbg !4207
  store i32 9999, i32* %3, align 4, !dbg !4207
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4208, metadata !502), !dbg !4209
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4210, metadata !502), !dbg !4211
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4212, metadata !502), !dbg !4213
  store i32 0, i32* %6, align 4, !dbg !4213
  store i32 0, i32* %5, align 4, !dbg !4214
  br label %7, !dbg !4216

; <label>:7:                                      ; preds = %29, %1
  %8 = load i32, i32* %5, align 4, !dbg !4217
  %9 = icmp ult i32 %8, 32, !dbg !4219
  br i1 %9, label %10, label %32, !dbg !4220

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %5, align 4, !dbg !4221
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* @rtttlGetClosestTempo.Valid, i32 0, i32 %11, !dbg !4223
  %13 = load i32, i32* %12, align 4, !dbg !4223
  %14 = load i32, i32* %2, align 4, !dbg !4224
  %15 = sub nsw i32 %13, %14, !dbg !4225
  store i32 %15, i32* %4, align 4, !dbg !4226
  %16 = load i32, i32* %4, align 4, !dbg !4227
  %17 = icmp slt i32 %16, 0, !dbg !4229
  br i1 %17, label %18, label %21, !dbg !4230

; <label>:18:                                     ; preds = %10
  %19 = load i32, i32* %4, align 4, !dbg !4231
  %20 = sub nsw i32 0, %19, !dbg !4232
  store i32 %20, i32* %4, align 4, !dbg !4233
  br label %21, !dbg !4234

; <label>:21:                                     ; preds = %18, %10
  %22 = load i32, i32* %4, align 4, !dbg !4235
  %23 = load i32, i32* %3, align 4, !dbg !4237
  %24 = icmp slt i32 %22, %23, !dbg !4238
  br i1 %24, label %25, label %28, !dbg !4239

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %4, align 4, !dbg !4240
  store i32 %26, i32* %3, align 4, !dbg !4242
  %27 = load i32, i32* %5, align 4, !dbg !4243
  store i32 %27, i32* %6, align 4, !dbg !4244
  br label %28, !dbg !4245

; <label>:28:                                     ; preds = %25, %21
  br label %29, !dbg !4246

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %5, align 4, !dbg !4247
  %31 = add nsw i32 %30, 1, !dbg !4247
  store i32 %31, i32* %5, align 4, !dbg !4247
  br label %7, !dbg !4248, !llvm.loop !4249

; <label>:32:                                     ; preds = %7
  %33 = load i32, i32* %6, align 4, !dbg !4251
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* @rtttlGetClosestTempo.Valid, i32 0, i32 %33, !dbg !4252
  %35 = load i32, i32* %34, align 4, !dbg !4252
  ret i32 %35, !dbg !4253
}

; Function Attrs: noinline nounwind optnone
define internal void @sndPlayBeep(float, i32, %struct.CONVERT_PREFS*) #0 !dbg !4254 {
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.CONVERT_PREFS*, align 4
  %7 = alloca i32, align 4
  store float %0, float* %4, align 4
  call void @llvm.dbg.declare(metadata float* %4, metadata !4257, metadata !502), !dbg !4258
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4259, metadata !502), !dbg !4260
  store %struct.CONVERT_PREFS* %2, %struct.CONVERT_PREFS** %6, align 4
  call void @llvm.dbg.declare(metadata %struct.CONVERT_PREFS** %6, metadata !4261, metadata !502), !dbg !4262
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4263, metadata !502), !dbg !4264
  store i32 5, i32* %7, align 4, !dbg !4264
  %8 = load float, float* %4, align 4, !dbg !4265
  %9 = fcmp une float %8, 0.000000e+00, !dbg !4265
  br i1 %9, label %10, label %13, !dbg !4267

; <label>:10:                                     ; preds = %3
  %11 = load float, float* %4, align 4, !dbg !4268
  %12 = fdiv float 1.190000e+06, %11, !dbg !4269
  store float %12, float* %4, align 4, !dbg !4270
  br label %13, !dbg !4271

; <label>:13:                                     ; preds = %10, %3
  %14 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %6, align 4, !dbg !4272
  %15 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %14, i32 0, i32 3, !dbg !4273
  %16 = load i32, i32* %15, align 4, !dbg !4273
  %17 = load float, float* %4, align 4, !dbg !4274
  %18 = fptosi float %17 to i32, !dbg !4275
  %19 = call i32 (i32, i32, ...) @ioctl(i32 %16, i32 19247, i32 %18) #7, !dbg !4276
  %20 = load i32, i32* %5, align 4, !dbg !4277
  %21 = icmp sgt i32 %20, 5, !dbg !4279
  br i1 %21, label %22, label %32, !dbg !4280

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %5, align 4, !dbg !4281
  %24 = sub nsw i32 %23, 5, !dbg !4281
  store i32 %24, i32* %5, align 4, !dbg !4281
  %25 = load i32, i32* %5, align 4, !dbg !4283
  %26 = mul nsw i32 %25, 1000, !dbg !4284
  %27 = call i32 bitcast (i32 (...)* @usleep to i32 (i32)*)(i32 %26), !dbg !4285
  %28 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %6, align 4, !dbg !4286
  %29 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %28, i32 0, i32 3, !dbg !4287
  %30 = load i32, i32* %29, align 4, !dbg !4287
  %31 = call i32 (i32, i32, ...) @ioctl(i32 %30, i32 19247, i32 0) #7, !dbg !4288
  store i32 5, i32* %5, align 4, !dbg !4289
  br label %32, !dbg !4290

; <label>:32:                                     ; preds = %22, %13
  %33 = load i32, i32* %5, align 4, !dbg !4291
  %34 = mul nsw i32 %33, 1000, !dbg !4292
  %35 = call i32 bitcast (i32 (...)* @usleep to i32 (i32)*)(i32 %34), !dbg !4293
  ret void, !dbg !4294
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i32, ...) #2

declare i32 @usleep(...) #3

; Function Attrs: noinline nounwind optnone
define internal void @outStdout(i32, i32, i32, %struct.CONVERT_PREFS*) #0 !dbg !476 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.CONVERT_PREFS*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4295, metadata !502), !dbg !4296
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4297, metadata !502), !dbg !4298
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4299, metadata !502), !dbg !4300
  store %struct.CONVERT_PREFS* %3, %struct.CONVERT_PREFS** %8, align 4
  call void @llvm.dbg.declare(metadata %struct.CONVERT_PREFS** %8, metadata !4301, metadata !502), !dbg !4302
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4303, metadata !502), !dbg !4304
  %11 = load i32, i32* %7, align 4, !dbg !4305
  %12 = icmp eq i32 %11, 0, !dbg !4307
  br i1 %12, label %13, label %14, !dbg !4308

; <label>:13:                                     ; preds = %4
  br label %50, !dbg !4309

; <label>:14:                                     ; preds = %4
  %15 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4310
  %16 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %15, i32 0, i32 1, !dbg !4312
  %17 = load i32, i32* %16, align 4, !dbg !4312
  %18 = icmp ne i32 %17, 0, !dbg !4310
  br i1 %18, label %29, label %19, !dbg !4313

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4314, metadata !502), !dbg !4316
  %20 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4317
  %21 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %20, i32 0, i32 0, !dbg !4318
  %22 = load i32, i32* %21, align 4, !dbg !4318
  %23 = sdiv i32 %22, 4, !dbg !4319
  %24 = call i32 @rtttlGetClosestTempo(i32 %23), !dbg !4320
  store i32 %24, i32* %10, align 4, !dbg !4316
  %25 = load i32, i32* %10, align 4, !dbg !4321
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12.7, i32 0, i32 0), i32 %25), !dbg !4322
  %27 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4323
  %28 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %27, i32 0, i32 1, !dbg !4324
  store i32 1, i32* %28, align 4, !dbg !4325
  br label %29, !dbg !4326

; <label>:29:                                     ; preds = %19, %14
  %30 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4327
  %31 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %30, i32 0, i32 2, !dbg !4329
  %32 = load i32, i32* %31, align 4, !dbg !4329
  %33 = icmp ne i32 %32, 0, !dbg !4327
  br i1 %33, label %34, label %36, !dbg !4330

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.8, i32 0, i32 0)), !dbg !4331
  br label %36, !dbg !4331

; <label>:36:                                     ; preds = %34, %29
  %37 = load i32, i32* %7, align 4, !dbg !4332
  %38 = sdiv i32 12288, %37, !dbg !4333
  store i32 %38, i32* %9, align 4, !dbg !4334
  %39 = load i32, i32* %9, align 4, !dbg !4335
  %40 = load i32, i32* %5, align 4, !dbg !4336
  %41 = srem i32 %40, 12, !dbg !4337
  %42 = getelementptr inbounds [12 x i8*], [12 x i8*]* @outStdout.pNoteNames, i32 0, i32 %41, !dbg !4338
  %43 = load i8*, i8** %42, align 4, !dbg !4338
  %44 = load i32, i32* %5, align 4, !dbg !4339
  %45 = sdiv i32 %44, 12, !dbg !4340
  %46 = sub nsw i32 %45, 3, !dbg !4341
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14.9, i32 0, i32 0), i32 %39, i8* %43, i32 %46), !dbg !4342
  %48 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4343
  %49 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %48, i32 0, i32 2, !dbg !4344
  store i32 1, i32* %49, align 4, !dbg !4345
  br label %50, !dbg !4346

; <label>:50:                                     ; preds = %36, %13
  ret void, !dbg !4346
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone
define internal void @outSMLCCode(i32, i32, i32, %struct.CONVERT_PREFS*) #0 !dbg !4347 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.CONVERT_PREFS*, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4348, metadata !502), !dbg !4349
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4350, metadata !502), !dbg !4351
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4352, metadata !502), !dbg !4353
  store %struct.CONVERT_PREFS* %3, %struct.CONVERT_PREFS** %8, align 4
  call void @llvm.dbg.declare(metadata %struct.CONVERT_PREFS** %8, metadata !4354, metadata !502), !dbg !4355
  ret void, !dbg !4356
}

; Function Attrs: noinline nounwind optnone
define internal void @outSpeaker(i32, i32, i32, %struct.CONVERT_PREFS*) #0 !dbg !4357 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.CONVERT_PREFS*, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4358, metadata !502), !dbg !4359
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4360, metadata !502), !dbg !4361
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4362, metadata !502), !dbg !4363
  store %struct.CONVERT_PREFS* %3, %struct.CONVERT_PREFS** %8, align 4
  call void @llvm.dbg.declare(metadata %struct.CONVERT_PREFS** %8, metadata !4364, metadata !502), !dbg !4365
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4366, metadata !502), !dbg !4367
  %10 = load i32, i32* %7, align 4, !dbg !4368
  %11 = mul nsw i32 60000, %10, !dbg !4369
  %12 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4370
  %13 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %12, i32 0, i32 0, !dbg !4371
  %14 = load i32, i32* %13, align 4, !dbg !4371
  %15 = mul nsw i32 4, %14, !dbg !4372
  %16 = mul nsw i32 %15, 384, !dbg !4373
  %17 = sdiv i32 %11, %16, !dbg !4374
  store i32 %17, i32* %9, align 4, !dbg !4375
  %18 = load i32, i32* %5, align 4, !dbg !4376
  %19 = icmp eq i32 %18, 0, !dbg !4378
  br i1 %19, label %20, label %23, !dbg !4379

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %9, align 4, !dbg !4380
  %22 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4381
  call void @sndPlayBeep(float 0.000000e+00, i32 %21, %struct.CONVERT_PREFS* %22), !dbg !4382
  br label %28, !dbg !4382

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !4383
  %25 = call float @muGetFreqFromNote(i32 %24), !dbg !4384
  %26 = load i32, i32* %9, align 4, !dbg !4385
  %27 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4386
  call void @sndPlayBeep(float %25, i32 %26, %struct.CONVERT_PREFS* %27), !dbg !4387
  br label %28

; <label>:28:                                     ; preds = %23, %20
  ret void, !dbg !4388
}

; Function Attrs: noinline nounwind optnone
define internal void @ConvertMIDI(i8*, void (i32, i32, i32, %struct.CONVERT_PREFS*)*, i32, %struct.CONVERT_PREFS*) #0 !dbg !4389 {
  %5 = alloca i8*, align 4
  %6 = alloca void (i32, i32, i32, %struct.CONVERT_PREFS*)*, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.CONVERT_PREFS*, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.MIDI_MSG, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4395, metadata !502), !dbg !4396
  store void (i32, i32, i32, %struct.CONVERT_PREFS*)* %1, void (i32, i32, i32, %struct.CONVERT_PREFS*)** %6, align 4
  call void @llvm.dbg.declare(metadata void (i32, i32, i32, %struct.CONVERT_PREFS*)** %6, metadata !4397, metadata !502), !dbg !4398
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4399, metadata !502), !dbg !4400
  store %struct.CONVERT_PREFS* %3, %struct.CONVERT_PREFS** %8, align 4
  call void @llvm.dbg.declare(metadata %struct.CONVERT_PREFS** %8, metadata !4401, metadata !502), !dbg !4402
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4403, metadata !502), !dbg !4404
  %17 = load i8*, i8** %5, align 4, !dbg !4405
  %18 = call i8* @midiFileOpen(i8* %17), !dbg !4406
  store i8* %18, i8** %9, align 4, !dbg !4404
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4407, metadata !502), !dbg !4408
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4409, metadata !502), !dbg !4410
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4411, metadata !502), !dbg !4412
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4413, metadata !502), !dbg !4414
  %19 = load i8*, i8** %9, align 4, !dbg !4415
  %20 = icmp ne i8* %19, null, !dbg !4415
  br i1 %20, label %21, label %122, !dbg !4417

; <label>:21:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.MIDI_MSG* %14, metadata !4418, metadata !502), !dbg !4518
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4519, metadata !502), !dbg !4520
  call void @llvm.dbg.declare(metadata i32* %16, metadata !4521, metadata !502), !dbg !4522
  store i32 0, i32* %13, align 4, !dbg !4523
  store i32 -1, i32* %10, align 4, !dbg !4524
  store i32 0, i32* %12, align 4, !dbg !4525
  store i32 127, i32* %11, align 4, !dbg !4526
  call void @midiReadInitMessage(%struct.MIDI_MSG* %14), !dbg !4527
  %22 = load i8*, i8** %9, align 4, !dbg !4528
  %23 = call i32 @midiReadGetNumTracks(i8* %22), !dbg !4529
  store i32 %23, i32* %16, align 4, !dbg !4530
  store i32 0, i32* %15, align 4, !dbg !4531
  br label %24, !dbg !4533

; <label>:24:                                     ; preds = %116, %21
  %25 = load i32, i32* %15, align 4, !dbg !4534
  %26 = load i32, i32* %16, align 4, !dbg !4536
  %27 = icmp slt i32 %25, %26, !dbg !4537
  br i1 %27, label %28, label %119, !dbg !4538

; <label>:28:                                     ; preds = %24
  br label %29, !dbg !4539

; <label>:29:                                     ; preds = %114, %28
  %30 = load i8*, i8** %9, align 4, !dbg !4541
  %31 = load i32, i32* %15, align 4, !dbg !4542
  %32 = call i32 @midiReadGetNextMessage(i8* %30, i32 %31, %struct.MIDI_MSG* %14), !dbg !4543
  %33 = icmp ne i32 %32, 0, !dbg !4539
  br i1 %33, label %34, label %115, !dbg !4539

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 2, !dbg !4544
  %36 = load i32, i32* %35, align 4, !dbg !4544
  %37 = load i32, i32* %12, align 4, !dbg !4546
  %38 = sub i32 %36, %37, !dbg !4547
  store i32 %38, i32* %13, align 4, !dbg !4548
  %39 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 0, !dbg !4549
  %40 = load i32, i32* %39, align 4, !dbg !4549
  switch i32 %40, label %113 [
    i32 128, label %41
    i32 144, label %65
    i32 255, label %97
  ], !dbg !4550

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %7, align 4, !dbg !4551
  %43 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 8, !dbg !4554
  %44 = bitcast %union.anon* %43 to %struct.MIDI_END_POINT*, !dbg !4555
  %45 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %44, i32 0, i32 1, !dbg !4556
  %46 = load i32, i32* %45, align 4, !dbg !4556
  %47 = icmp eq i32 %42, %46, !dbg !4557
  br i1 %47, label %48, label %64, !dbg !4558

; <label>:48:                                     ; preds = %41
  %49 = load i32, i32* %10, align 4, !dbg !4559
  %50 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 8, !dbg !4562
  %51 = bitcast %union.anon* %50 to %struct.MIDI_END_POINT*, !dbg !4563
  %52 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %51, i32 0, i32 0, !dbg !4564
  %53 = load i32, i32* %52, align 4, !dbg !4564
  %54 = icmp eq i32 %49, %53, !dbg !4565
  br i1 %54, label %55, label %63, !dbg !4566

; <label>:55:                                     ; preds = %48
  %56 = load void (i32, i32, i32, %struct.CONVERT_PREFS*)*, void (i32, i32, i32, %struct.CONVERT_PREFS*)** %6, align 4, !dbg !4567
  %57 = load i32, i32* %10, align 4, !dbg !4569
  %58 = load i32, i32* %11, align 4, !dbg !4570
  %59 = load i32, i32* %13, align 4, !dbg !4571
  %60 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4572
  call void %56(i32 %57, i32 %58, i32 %59, %struct.CONVERT_PREFS* %60), !dbg !4573
  store i32 -1, i32* %10, align 4, !dbg !4574
  %61 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 2, !dbg !4575
  %62 = load i32, i32* %61, align 4, !dbg !4575
  store i32 %62, i32* %12, align 4, !dbg !4576
  br label %63, !dbg !4577

; <label>:63:                                     ; preds = %55, %48
  br label %64, !dbg !4578

; <label>:64:                                     ; preds = %63, %41
  br label %114, !dbg !4579

; <label>:65:                                     ; preds = %34
  %66 = load i32, i32* %7, align 4, !dbg !4580
  %67 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 8, !dbg !4582
  %68 = bitcast %union.anon* %67 to %struct.anon*, !dbg !4583
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 1, !dbg !4584
  %70 = load i32, i32* %69, align 4, !dbg !4584
  %71 = icmp eq i32 %66, %70, !dbg !4585
  br i1 %71, label %72, label %96, !dbg !4586

; <label>:72:                                     ; preds = %65
  %73 = load i32, i32* %10, align 4, !dbg !4587
  %74 = icmp eq i32 %73, -1, !dbg !4590
  br i1 %74, label %75, label %79, !dbg !4591

; <label>:75:                                     ; preds = %72
  %76 = load void (i32, i32, i32, %struct.CONVERT_PREFS*)*, void (i32, i32, i32, %struct.CONVERT_PREFS*)** %6, align 4, !dbg !4592
  %77 = load i32, i32* %13, align 4, !dbg !4594
  %78 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4595
  call void %76(i32 0, i32 0, i32 %77, %struct.CONVERT_PREFS* %78), !dbg !4596
  br label %85, !dbg !4597

; <label>:79:                                     ; preds = %72
  %80 = load void (i32, i32, i32, %struct.CONVERT_PREFS*)*, void (i32, i32, i32, %struct.CONVERT_PREFS*)** %6, align 4, !dbg !4598
  %81 = load i32, i32* %10, align 4, !dbg !4600
  %82 = load i32, i32* %11, align 4, !dbg !4601
  %83 = load i32, i32* %13, align 4, !dbg !4602
  %84 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4603
  call void %80(i32 %81, i32 %82, i32 %83, %struct.CONVERT_PREFS* %84), !dbg !4604
  br label %85

; <label>:85:                                     ; preds = %79, %75
  %86 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 8, !dbg !4605
  %87 = bitcast %union.anon* %86 to %struct.anon*, !dbg !4606
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 0, !dbg !4607
  %89 = load i32, i32* %88, align 4, !dbg !4607
  store i32 %89, i32* %10, align 4, !dbg !4608
  %90 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 8, !dbg !4609
  %91 = bitcast %union.anon* %90 to %struct.anon*, !dbg !4610
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 2, !dbg !4611
  %93 = load i32, i32* %92, align 4, !dbg !4611
  store i32 %93, i32* %11, align 4, !dbg !4612
  %94 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 2, !dbg !4613
  %95 = load i32, i32* %94, align 4, !dbg !4613
  store i32 %95, i32* %12, align 4, !dbg !4614
  br label %96, !dbg !4615

; <label>:96:                                     ; preds = %85, %65
  br label %114, !dbg !4616

; <label>:97:                                     ; preds = %34
  %98 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 8, !dbg !4617
  %99 = bitcast %union.anon* %98 to %struct.anon.6*, !dbg !4618
  %100 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %99, i32 0, i32 0, !dbg !4619
  %101 = load i32, i32* %100, align 4, !dbg !4619
  switch i32 %101, label %111 [
    i32 81, label %102
  ], !dbg !4620

; <label>:102:                                    ; preds = %97
  %103 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %14, i32 0, i32 8, !dbg !4621
  %104 = bitcast %union.anon* %103 to %struct.anon.6*, !dbg !4623
  %105 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %104, i32 0, i32 1, !dbg !4624
  %106 = bitcast %union.anon.7* %105 to %struct.anon.9*, !dbg !4625
  %107 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %106, i32 0, i32 0, !dbg !4626
  %108 = load i32, i32* %107, align 4, !dbg !4626
  %109 = load %struct.CONVERT_PREFS*, %struct.CONVERT_PREFS** %8, align 4, !dbg !4627
  %110 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %109, i32 0, i32 0, !dbg !4628
  store i32 %108, i32* %110, align 4, !dbg !4629
  br label %112, !dbg !4630

; <label>:111:                                    ; preds = %97
  br label %112, !dbg !4631

; <label>:112:                                    ; preds = %111, %102
  br label %114, !dbg !4632

; <label>:113:                                    ; preds = %34
  br label %114, !dbg !4633

; <label>:114:                                    ; preds = %113, %112, %96, %64
  br label %29, !dbg !4539, !llvm.loop !4634

; <label>:115:                                    ; preds = %29
  br label %116, !dbg !4636

; <label>:116:                                    ; preds = %115
  %117 = load i32, i32* %15, align 4, !dbg !4637
  %118 = add nsw i32 %117, 1, !dbg !4637
  store i32 %118, i32* %15, align 4, !dbg !4637
  br label %24, !dbg !4638, !llvm.loop !4639

; <label>:119:                                    ; preds = %24
  call void @midiReadFreeMessage(%struct.MIDI_MSG* %14), !dbg !4641
  %120 = load i8*, i8** %9, align 4, !dbg !4642
  %121 = call i32 @midiFileClose(i8* %120), !dbg !4643
  br label %122, !dbg !4644

; <label>:122:                                    ; preds = %119, %4
  ret void, !dbg !4645
}

; Function Attrs: noinline nounwind optnone
define internal void @Usage(i8*) #0 !dbg !4646 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4649, metadata !502), !dbg !4650
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !4651
  %4 = load i8*, i8** %2, align 4, !dbg !4652
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15.377, i32 0, i32 0), i8* %4), !dbg !4653
  ret void, !dbg !4654
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone
define internal void @PrintHelp() #0 !dbg !4655 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !4658
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.16.378, i32 0, i32 0)), !dbg !4659
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !4660
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17.379, i32 0, i32 0)), !dbg !4661
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !4662
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18.380, i32 0, i32 0)), !dbg !4663
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !4664
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19.381, i32 0, i32 0)), !dbg !4665
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !4666
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20.382, i32 0, i32 0)), !dbg !4667
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !4668
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21.383, i32 0, i32 0)), !dbg !4669
  ret void, !dbg !4670
}

; Function Attrs: noinline nounwind optnone
define i32 @main(i32, i8**) #0 !dbg !4671 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.CONVERT_PREFS, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4675, metadata !502), !dbg !4676
  store i8** %1, i8*** %5, align 4
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !4677, metadata !502), !dbg !4678
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4679, metadata !502), !dbg !4680
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4681, metadata !502), !dbg !4682
  store i32 1, i32* %7, align 4, !dbg !4682
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4683, metadata !502), !dbg !4684
  store i32 0, i32* %8, align 4, !dbg !4684
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4685, metadata !502), !dbg !4686
  store i32 0, i32* %9, align 4, !dbg !4686
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4687, metadata !502), !dbg !4688
  store i32 0, i32* %10, align 4, !dbg !4688
  call void @llvm.dbg.declare(metadata %struct.CONVERT_PREFS* %11, metadata !4689, metadata !502), !dbg !4690
  br label %12, !dbg !4691

; <label>:12:                                     ; preds = %42, %2
  %13 = load i32, i32* %4, align 4, !dbg !4692
  %14 = load i8**, i8*** %5, align 4, !dbg !4693
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22.384, i32 0, i32 0)) #7, !dbg !4694
  store i32 %15, i32* %6, align 4, !dbg !4695
  %16 = icmp ne i32 %15, -1, !dbg !4696
  br i1 %16, label %17, label %43, !dbg !4691

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %6, align 4, !dbg !4697
  switch i32 %18, label %42 [
    i32 67, label %19
    i32 99, label %19
    i32 82, label %22
    i32 114, label %22
    i32 83, label %23
    i32 115, label %23
    i32 72, label %24
    i32 104, label %24
    i32 63, label %28
    i32 58, label %29
  ], !dbg !4699

; <label>:19:                                     ; preds = %17, %17
  %20 = load i8*, i8** @optarg, align 4, !dbg !4700
  %21 = call i32 @atoi(i8* %20) #8, !dbg !4702
  store i32 %21, i32* %7, align 4, !dbg !4703
  br label %42, !dbg !4704

; <label>:22:                                     ; preds = %17, %17
  store i32 1, i32* %9, align 4, !dbg !4705
  br label %42, !dbg !4706

; <label>:23:                                     ; preds = %17, %17
  store i32 1, i32* %10, align 4, !dbg !4707
  br label %42, !dbg !4708

; <label>:24:                                     ; preds = %17, %17
  %25 = load i8**, i8*** %5, align 4, !dbg !4709
  %26 = getelementptr inbounds i8*, i8** %25, i32 1, !dbg !4709
  %27 = load i8*, i8** %26, align 4, !dbg !4709
  call void @Usage(i8* %27), !dbg !4710
  call void @PrintHelp(), !dbg !4711
  br label %42, !dbg !4712

; <label>:28:                                     ; preds = %17
  store i32 1, i32* %8, align 4, !dbg !4713
  br label %42, !dbg !4714

; <label>:29:                                     ; preds = %17
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !4715
  %31 = load i8**, i8*** %5, align 4, !dbg !4716
  %32 = getelementptr inbounds i8*, i8** %31, i32 0, !dbg !4716
  %33 = load i8*, i8** %32, align 4, !dbg !4716
  %34 = load i32, i32* @optopt, align 4, !dbg !4717
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23.385, i32 0, i32 0), i8* %33, i32 %34), !dbg !4718
  %36 = load i32, i32* @optopt, align 4, !dbg !4719
  %37 = icmp eq i32 %36, 99, !dbg !4721
  br i1 %37, label %38, label %41, !dbg !4722

; <label>:38:                                     ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !dbg !4723
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24.386, i32 0, i32 0)), !dbg !4724
  br label %41, !dbg !4724

; <label>:41:                                     ; preds = %38, %29
  br label %42, !dbg !4725

; <label>:42:                                     ; preds = %41, %28, %24, %23, %22, %19, %17
  br label %12, !dbg !4691, !llvm.loop !4726

; <label>:43:                                     ; preds = %12
  %44 = load i32, i32* %9, align 4, !dbg !4728
  %45 = load i32, i32* %10, align 4, !dbg !4730
  %46 = icmp eq i32 %44, %45, !dbg !4731
  br i1 %46, label %47, label %51, !dbg !4732

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %10, align 4, !dbg !4733
  %49 = icmp eq i32 %48, 0, !dbg !4734
  br i1 %49, label %50, label %51, !dbg !4735

; <label>:50:                                     ; preds = %47
  store i32 1, i32* %9, align 4, !dbg !4736
  br label %51, !dbg !4737

; <label>:51:                                     ; preds = %50, %47, %43
  %52 = load i32, i32* %8, align 4, !dbg !4738
  %53 = icmp ne i32 %52, 0, !dbg !4738
  br i1 %53, label %54, label %58, !dbg !4740

; <label>:54:                                     ; preds = %51
  %55 = load i8**, i8*** %5, align 4, !dbg !4741
  %56 = getelementptr inbounds i8*, i8** %55, i32 0, !dbg !4741
  %57 = load i8*, i8** %56, align 4, !dbg !4741
  call void @Usage(i8* %57), !dbg !4743
  br label %90, !dbg !4744

; <label>:58:                                     ; preds = %51
  br label %59, !dbg !4745

; <label>:59:                                     ; preds = %86, %58
  %60 = load i32, i32* @optind, align 4, !dbg !4747
  %61 = load i32, i32* %4, align 4, !dbg !4748
  %62 = icmp slt i32 %60, %61, !dbg !4749
  br i1 %62, label %63, label %89, !dbg !4745

; <label>:63:                                     ; preds = %59
  call void @InitPrefs(%struct.CONVERT_PREFS* %11), !dbg !4750
  %64 = load i32, i32* %9, align 4, !dbg !4752
  %65 = icmp ne i32 %64, 0, !dbg !4752
  br i1 %65, label %66, label %74, !dbg !4754

; <label>:66:                                     ; preds = %63
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25.387, i32 0, i32 0)), !dbg !4755
  %68 = load i8**, i8*** %5, align 4, !dbg !4757
  %69 = load i32, i32* @optind, align 4, !dbg !4758
  %70 = getelementptr inbounds i8*, i8** %68, i32 %69, !dbg !4757
  %71 = load i8*, i8** %70, align 4, !dbg !4757
  %72 = load i32, i32* %7, align 4, !dbg !4759
  call void @ConvertMIDI(i8* %71, void (i32, i32, i32, %struct.CONVERT_PREFS*)* @outStdout, i32 %72, %struct.CONVERT_PREFS* %11), !dbg !4760
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26.388, i32 0, i32 0)), !dbg !4761
  br label %74, !dbg !4762

; <label>:74:                                     ; preds = %66, %63
  %75 = load i32, i32* %10, align 4, !dbg !4763
  %76 = icmp ne i32 %75, 0, !dbg !4763
  br i1 %76, label %77, label %86, !dbg !4765

; <label>:77:                                     ; preds = %74
  %78 = load i8**, i8*** %5, align 4, !dbg !4766
  %79 = load i32, i32* @optind, align 4, !dbg !4768
  %80 = getelementptr inbounds i8*, i8** %78, i32 %79, !dbg !4766
  %81 = load i8*, i8** %80, align 4, !dbg !4766
  %82 = load i32, i32* %7, align 4, !dbg !4769
  call void @ConvertMIDI(i8* %81, void (i32, i32, i32, %struct.CONVERT_PREFS*)* @outSpeaker, i32 %82, %struct.CONVERT_PREFS* %11), !dbg !4770
  %83 = getelementptr inbounds %struct.CONVERT_PREFS, %struct.CONVERT_PREFS* %11, i32 0, i32 3, !dbg !4771
  %84 = load i32, i32* %83, align 4, !dbg !4771
  %85 = call i32 (i32, i32, ...) @ioctl(i32 %84, i32 19247, i32 0) #7, !dbg !4772
  br label %86, !dbg !4773

; <label>:86:                                     ; preds = %77, %74
  %87 = load i32, i32* @optind, align 4, !dbg !4774
  %88 = add nsw i32 %87, 1, !dbg !4774
  store i32 %88, i32* @optind, align 4, !dbg !4774
  br label %59, !dbg !4745, !llvm.loop !4775

; <label>:89:                                     ; preds = %59
  br label %90

; <label>:90:                                     ; preds = %89, %54
  ret i32 0, !dbg !4777
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.dbg.cu = !{!11, !420, !470}
!llvm.ident = !{!491, !491, !491}
!llvm.module.flags = !{!492, !493, !494, !495}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "mthd", scope: !2, file: !3, line: 563, type: !369, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "midiFileClose", scope: !3, file: !3, line: 533, type: !4, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!3 = !DIFile(filename: "midifile.c", directory: "/home/songlh/workspace/github/PDebloating/stubs/midilib")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !7, line: 44, baseType: !8)
!7 = !DIFile(filename: "./midifile.h", directory: "/home/songlh/workspace/github/PDebloating/stubs/midilib")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "MIDI_FILE", file: !7, line: 68, baseType: null)
!11 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 5.0.0 (tags/RELEASE_500/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !239, globals: !366)
!12 = !{!13, !29, !65, !74, !222}
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 31, size: 32, elements: !15)
!14 = !DIFile(filename: "./midiinfo.h", directory: "/home/songlh/workspace/github/PDebloating/stubs/midilib")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!16 = !DIEnumerator(name: "msgNoteOff", value: 128)
!17 = !DIEnumerator(name: "msgNoteOn", value: 144)
!18 = !DIEnumerator(name: "msgNoteKeyPressure", value: 160)
!19 = !DIEnumerator(name: "msgSetParameter", value: 176)
!20 = !DIEnumerator(name: "msgSetProgram", value: 192)
!21 = !DIEnumerator(name: "msgChangePressure", value: 208)
!22 = !DIEnumerator(name: "msgSetPitchWheel", value: 224)
!23 = !DIEnumerator(name: "msgMetaEvent", value: 255)
!24 = !DIEnumerator(name: "msgSysEx1", value: 240)
!25 = !DIEnumerator(name: "msgSysEx2", value: 247)
!26 = !DIEnumerator(name: "msgPatchChange", value: 192)
!27 = !DIEnumerator(name: "msgControlChange", value: 176)
!28 = !DIEnumerator(name: "msgSysMask", value: 240)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 258, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!31 = !DIEnumerator(name: "keyCFlatMaj", value: 135)
!32 = !DIEnumerator(name: "keyGFlatMaj", value: 134)
!33 = !DIEnumerator(name: "keyDFlatMaj", value: 133)
!34 = !DIEnumerator(name: "keyAFlatMaj", value: 132)
!35 = !DIEnumerator(name: "keyEFlatMaj", value: 131)
!36 = !DIEnumerator(name: "keyBFlatMaj", value: 130)
!37 = !DIEnumerator(name: "keyFMaj", value: 129)
!38 = !DIEnumerator(name: "keyCMaj", value: 0)
!39 = !DIEnumerator(name: "keyGMaj", value: 1)
!40 = !DIEnumerator(name: "keyDMaj", value: 2)
!41 = !DIEnumerator(name: "keyAMaj", value: 3)
!42 = !DIEnumerator(name: "keyEMaj", value: 4)
!43 = !DIEnumerator(name: "keyBMaj", value: 5)
!44 = !DIEnumerator(name: "keyFSharpMaj", value: 6)
!45 = !DIEnumerator(name: "keyCSharpMaj", value: 7)
!46 = !DIEnumerator(name: "keyCFlatMin", value: 199)
!47 = !DIEnumerator(name: "keyGFlatMin", value: 198)
!48 = !DIEnumerator(name: "keyDFlatMin", value: 197)
!49 = !DIEnumerator(name: "keyAFlatMin", value: 196)
!50 = !DIEnumerator(name: "keyEFlatMin", value: 195)
!51 = !DIEnumerator(name: "keyBFlatMin", value: 194)
!52 = !DIEnumerator(name: "keyFMin", value: 193)
!53 = !DIEnumerator(name: "keyCMin", value: 64)
!54 = !DIEnumerator(name: "keyGMin", value: 65)
!55 = !DIEnumerator(name: "keyDMin", value: 66)
!56 = !DIEnumerator(name: "keyAMin", value: 67)
!57 = !DIEnumerator(name: "keyEMin", value: 68)
!58 = !DIEnumerator(name: "keyBMin", value: 69)
!59 = !DIEnumerator(name: "keyFSharpMin", value: 70)
!60 = !DIEnumerator(name: "keyCSharpMin", value: 71)
!61 = !DIEnumerator(name: "keyMaskNeg", value: 128)
!62 = !DIEnumerator(name: "keyMaskFlatKeys", value: 128)
!63 = !DIEnumerator(name: "keyMaskMin", value: 64)
!64 = !DIEnumerator(name: "keyMaskKey", value: 7)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 319, size: 32, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !DIEnumerator(name: "textTextEvent", value: 1)
!68 = !DIEnumerator(name: "textCopyright", value: 2)
!69 = !DIEnumerator(name: "textTrackName", value: 3)
!70 = !DIEnumerator(name: "textInstrument", value: 4)
!71 = !DIEnumerator(name: "textLyric", value: 5)
!72 = !DIEnumerator(name: "textMarker", value: 6)
!73 = !DIEnumerator(name: "textCuePoint", value: 7)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 54, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!76 = !DIEnumerator(name: "ccBankSelect", value: 0)
!77 = !DIEnumerator(name: "ccModulation", value: 1)
!78 = !DIEnumerator(name: "ccBreathControl", value: 2)
!79 = !DIEnumerator(name: "ccUndefined3", value: 3)
!80 = !DIEnumerator(name: "ccFootControl", value: 4)
!81 = !DIEnumerator(name: "ccPortamentoTime", value: 5)
!82 = !DIEnumerator(name: "ccDateEntry", value: 6)
!83 = !DIEnumerator(name: "ccVolume", value: 7)
!84 = !DIEnumerator(name: "ccBalance", value: 8)
!85 = !DIEnumerator(name: "ccUndefined9", value: 9)
!86 = !DIEnumerator(name: "ccPan", value: 10)
!87 = !DIEnumerator(name: "ccExpression", value: 11)
!88 = !DIEnumerator(name: "ccEffectControl1", value: 12)
!89 = !DIEnumerator(name: "ccEffectControl2", value: 13)
!90 = !DIEnumerator(name: "ccUndefined14", value: 14)
!91 = !DIEnumerator(name: "ccUndefined15", value: 15)
!92 = !DIEnumerator(name: "ccGeneralPurpose1", value: 16)
!93 = !DIEnumerator(name: "ccGeneralPurpose2", value: 17)
!94 = !DIEnumerator(name: "ccGeneralPurpose3", value: 18)
!95 = !DIEnumerator(name: "ccGeneralPurpose4", value: 19)
!96 = !DIEnumerator(name: "ccUndefined20", value: 20)
!97 = !DIEnumerator(name: "ccUndefined21", value: 21)
!98 = !DIEnumerator(name: "ccUndefined22", value: 22)
!99 = !DIEnumerator(name: "ccUndefined23", value: 23)
!100 = !DIEnumerator(name: "ccUndefined24", value: 24)
!101 = !DIEnumerator(name: "ccUndefined25", value: 25)
!102 = !DIEnumerator(name: "ccUndefined26", value: 26)
!103 = !DIEnumerator(name: "ccUndefined27", value: 27)
!104 = !DIEnumerator(name: "ccUndefined28", value: 28)
!105 = !DIEnumerator(name: "ccUndefined29", value: 29)
!106 = !DIEnumerator(name: "ccUndefined30", value: 30)
!107 = !DIEnumerator(name: "ccUndefined31", value: 31)
!108 = !DIEnumerator(name: "ccBankSelectLSB", value: 32)
!109 = !DIEnumerator(name: "ccModulationLSB", value: 33)
!110 = !DIEnumerator(name: "ccBreathControlLSB", value: 34)
!111 = !DIEnumerator(name: "ccUndefined35", value: 35)
!112 = !DIEnumerator(name: "ccFootControlLSB", value: 36)
!113 = !DIEnumerator(name: "ccPortamentoTimeLSB", value: 37)
!114 = !DIEnumerator(name: "ccDateEntryLSB", value: 38)
!115 = !DIEnumerator(name: "ccVolumeLSB", value: 39)
!116 = !DIEnumerator(name: "ccBalanceLSB", value: 40)
!117 = !DIEnumerator(name: "ccUndefined41", value: 41)
!118 = !DIEnumerator(name: "ccPanLSB", value: 42)
!119 = !DIEnumerator(name: "ccExpressionLSB", value: 43)
!120 = !DIEnumerator(name: "ccEffectControl1LSB", value: 44)
!121 = !DIEnumerator(name: "ccEffectControl2LSB", value: 45)
!122 = !DIEnumerator(name: "ccUndefined46", value: 46)
!123 = !DIEnumerator(name: "ccUndefined47", value: 47)
!124 = !DIEnumerator(name: "ccGeneralPurpose1LSB", value: 48)
!125 = !DIEnumerator(name: "ccGeneralPurpose2LSB", value: 49)
!126 = !DIEnumerator(name: "ccGeneralPurpose3LSB", value: 50)
!127 = !DIEnumerator(name: "ccGeneralPurpose4LSB", value: 51)
!128 = !DIEnumerator(name: "ccUndefined52", value: 52)
!129 = !DIEnumerator(name: "ccUndefined53", value: 53)
!130 = !DIEnumerator(name: "ccUndefined54", value: 54)
!131 = !DIEnumerator(name: "ccUndefined55", value: 55)
!132 = !DIEnumerator(name: "ccUndefined56", value: 56)
!133 = !DIEnumerator(name: "ccUndefined57", value: 57)
!134 = !DIEnumerator(name: "ccUndefined58", value: 58)
!135 = !DIEnumerator(name: "ccUndefined59", value: 59)
!136 = !DIEnumerator(name: "ccUndefined60", value: 60)
!137 = !DIEnumerator(name: "ccUndefined61", value: 61)
!138 = !DIEnumerator(name: "ccUndefined62", value: 62)
!139 = !DIEnumerator(name: "ccUndefined63", value: 63)
!140 = !DIEnumerator(name: "ccSustainPedal", value: 64)
!141 = !DIEnumerator(name: "ccPortamento", value: 65)
!142 = !DIEnumerator(name: "ccPedalSustenuto", value: 66)
!143 = !DIEnumerator(name: "ccPedalSoft", value: 67)
!144 = !DIEnumerator(name: "ccLegatoFootSwitch", value: 68)
!145 = !DIEnumerator(name: "ccHold2", value: 69)
!146 = !DIEnumerator(name: "ccSoundVariation", value: 70)
!147 = !DIEnumerator(name: "ccTimbre", value: 71)
!148 = !DIEnumerator(name: "ccReleaseTime", value: 72)
!149 = !DIEnumerator(name: "ccAttackTime", value: 73)
!150 = !DIEnumerator(name: "ccBrightness", value: 74)
!151 = !DIEnumerator(name: "ccReverb", value: 75)
!152 = !DIEnumerator(name: "ccDelay", value: 76)
!153 = !DIEnumerator(name: "ccPitchTranspose", value: 77)
!154 = !DIEnumerator(name: "ccFlange", value: 78)
!155 = !DIEnumerator(name: "ccSpecialFX", value: 79)
!156 = !DIEnumerator(name: "ccGeneralPurpose5", value: 80)
!157 = !DIEnumerator(name: "ccGeneralPurpose6", value: 81)
!158 = !DIEnumerator(name: "ccGeneralPurpose7", value: 82)
!159 = !DIEnumerator(name: "ccGeneralPurpose8", value: 83)
!160 = !DIEnumerator(name: "ccPortamentoControl", value: 84)
!161 = !DIEnumerator(name: "ccUndefined85", value: 85)
!162 = !DIEnumerator(name: "ccUndefined86", value: 86)
!163 = !DIEnumerator(name: "ccUndefined87", value: 87)
!164 = !DIEnumerator(name: "ccUndefined88", value: 88)
!165 = !DIEnumerator(name: "ccUndefined89", value: 89)
!166 = !DIEnumerator(name: "ccUndefined90", value: 90)
!167 = !DIEnumerator(name: "ccFXDepth", value: 91)
!168 = !DIEnumerator(name: "ccTremeloDepth", value: 92)
!169 = !DIEnumerator(name: "ccChorusDepth", value: 93)
!170 = !DIEnumerator(name: "ccCelestaDepth", value: 94)
!171 = !DIEnumerator(name: "ccPhaserDepth", value: 95)
!172 = !DIEnumerator(name: "ccDataInc", value: 96)
!173 = !DIEnumerator(name: "ccDataDec", value: 97)
!174 = !DIEnumerator(name: "ccNonRegParamLSB", value: 98)
!175 = !DIEnumerator(name: "ccNonRefParamMSB", value: 99)
!176 = !DIEnumerator(name: "ccRegParamLSB", value: 100)
!177 = !DIEnumerator(name: "ccRegParamMSB", value: 101)
!178 = !DIEnumerator(name: "ccUndefined102", value: 102)
!179 = !DIEnumerator(name: "ccUndefined103", value: 103)
!180 = !DIEnumerator(name: "ccUndefined104", value: 104)
!181 = !DIEnumerator(name: "ccUndefined105", value: 105)
!182 = !DIEnumerator(name: "ccUndefined106", value: 106)
!183 = !DIEnumerator(name: "ccUndefined107", value: 107)
!184 = !DIEnumerator(name: "ccUndefined108", value: 108)
!185 = !DIEnumerator(name: "ccUndefined109", value: 109)
!186 = !DIEnumerator(name: "ccUndefined110", value: 110)
!187 = !DIEnumerator(name: "ccUndefined111", value: 111)
!188 = !DIEnumerator(name: "ccUndefined112", value: 112)
!189 = !DIEnumerator(name: "ccUndefined113", value: 113)
!190 = !DIEnumerator(name: "ccUndefined114", value: 114)
!191 = !DIEnumerator(name: "ccUndefined115", value: 115)
!192 = !DIEnumerator(name: "ccUndefined116", value: 116)
!193 = !DIEnumerator(name: "ccUndefined117", value: 117)
!194 = !DIEnumerator(name: "ccUndefined118", value: 118)
!195 = !DIEnumerator(name: "ccUndefined119", value: 119)
!196 = !DIEnumerator(name: "ccAllSoundOff", value: 120)
!197 = !DIEnumerator(name: "ccResetAllControllers", value: 121)
!198 = !DIEnumerator(name: "ccLocalControl", value: 122)
!199 = !DIEnumerator(name: "ccAllNotesOff", value: 123)
!200 = !DIEnumerator(name: "ccOmniModeOff", value: 124)
!201 = !DIEnumerator(name: "ccOmniModeOn", value: 125)
!202 = !DIEnumerator(name: "ccMonoModeOn", value: 126)
!203 = !DIEnumerator(name: "ccPolyModeOn", value: 127)
!204 = !DIEnumerator(name: "ccModWheel", value: 1)
!205 = !DIEnumerator(name: "ccHarmContent", value: 71)
!206 = !DIEnumerator(name: "ccSoundController1", value: 70)
!207 = !DIEnumerator(name: "ccSoundController2", value: 71)
!208 = !DIEnumerator(name: "ccSoundController3", value: 72)
!209 = !DIEnumerator(name: "ccSoundController4", value: 73)
!210 = !DIEnumerator(name: "ccSoundController5", value: 74)
!211 = !DIEnumerator(name: "ccSoundController6", value: 75)
!212 = !DIEnumerator(name: "ccSoundController7", value: 76)
!213 = !DIEnumerator(name: "ccSoundController8", value: 77)
!214 = !DIEnumerator(name: "ccSoundController9", value: 78)
!215 = !DIEnumerator(name: "ccSoundController10", value: 79)
!216 = !DIEnumerator(name: "ccEffect1Depth", value: 91)
!217 = !DIEnumerator(name: "ccEffect2Depth", value: 92)
!218 = !DIEnumerator(name: "ccEffect3Depth", value: 93)
!219 = !DIEnumerator(name: "ccEffect4Depth", value: 94)
!220 = !DIEnumerator(name: "ccEffect5Depth", value: 95)
!221 = !DIEnumerator(name: "ccDetuneDepth", value: 94)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 298, size: 32, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!224 = !DIEnumerator(name: "metaSequenceNumber", value: 0)
!225 = !DIEnumerator(name: "metaTextEvent", value: 1)
!226 = !DIEnumerator(name: "metaCopyright", value: 2)
!227 = !DIEnumerator(name: "metaTrackName", value: 3)
!228 = !DIEnumerator(name: "metaInstrument", value: 4)
!229 = !DIEnumerator(name: "metaLyric", value: 5)
!230 = !DIEnumerator(name: "metaMarker", value: 6)
!231 = !DIEnumerator(name: "metaCuePoint", value: 7)
!232 = !DIEnumerator(name: "metaMIDIPort", value: 33)
!233 = !DIEnumerator(name: "metaEndSequence", value: 47)
!234 = !DIEnumerator(name: "metaSetTempo", value: 81)
!235 = !DIEnumerator(name: "metaSMPTEOffset", value: 84)
!236 = !DIEnumerator(name: "metaTimeSig", value: 88)
!237 = !DIEnumerator(name: "metaKeySig", value: 89)
!238 = !DIEnumerator(name: "metaSequencerSpecific", value: 127)
!239 = !{!240, !296, !323, !9, !318, !8, !322, !354, !315, !355, !356, !253, !362, !363, !364, !365}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "_MIDI_FILE", file: !3, line: 75, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 66, size: 1114336, elements: !243)
!243 = !{!244, !309, !310, !321, !325, !326}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pFile", scope: !242, file: !3, line: 67, baseType: !245, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !247, line: 48, baseType: !248)
!247 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/songlh/workspace/github/PDebloating/stubs/midilib")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !249, line: 241, size: 1184, elements: !250)
!249 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/songlh/workspace/github/PDebloating/stubs/midilib")
!250 = !{!251, !252, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !273, !274, !275, !276, !280, !282, !284, !288, !291, !295, !297, !298, !299, !300, !304, !305}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !248, file: !249, line: 242, baseType: !8, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !248, file: !249, line: 247, baseType: !253, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 32)
!254 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !248, file: !249, line: 248, baseType: !253, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !248, file: !249, line: 249, baseType: !253, size: 32, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !248, file: !249, line: 250, baseType: !253, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !248, file: !249, line: 251, baseType: !253, size: 32, offset: 160)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !248, file: !249, line: 252, baseType: !253, size: 32, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !248, file: !249, line: 253, baseType: !253, size: 32, offset: 224)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !248, file: !249, line: 254, baseType: !253, size: 32, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !248, file: !249, line: 256, baseType: !253, size: 32, offset: 288)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !248, file: !249, line: 257, baseType: !253, size: 32, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !248, file: !249, line: 258, baseType: !253, size: 32, offset: 352)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !248, file: !249, line: 260, baseType: !266, size: 32, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !249, line: 156, size: 96, elements: !268)
!268 = !{!269, !270, !272}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !267, file: !249, line: 157, baseType: !266, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !267, file: !249, line: 158, baseType: !271, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !267, file: !249, line: 162, baseType: !8, size: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !248, file: !249, line: 262, baseType: !271, size: 32, offset: 416)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !248, file: !249, line: 264, baseType: !8, size: 32, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !248, file: !249, line: 268, baseType: !8, size: 32, offset: 480)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !248, file: !249, line: 270, baseType: !277, size: 32, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !278, line: 131, baseType: !279)
!278 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/songlh/workspace/github/PDebloating/stubs/midilib")
!279 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !248, file: !249, line: 274, baseType: !281, size: 16, offset: 544)
!281 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !248, file: !249, line: 275, baseType: !283, size: 8, offset: 560)
!283 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !248, file: !249, line: 276, baseType: !285, size: 8, offset: 568)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 8, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 1)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !248, file: !249, line: 280, baseType: !289, size: 32, offset: 576)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !249, line: 150, baseType: null)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !248, file: !249, line: 289, baseType: !292, size: 64, offset: 608)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !278, line: 132, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !278, line: 55, baseType: !294)
!294 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !248, file: !249, line: 297, baseType: !296, size: 32, offset: 672)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !248, file: !249, line: 298, baseType: !296, size: 32, offset: 704)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !248, file: !249, line: 299, baseType: !296, size: 32, offset: 736)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !248, file: !249, line: 300, baseType: !296, size: 32, offset: 768)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !248, file: !249, line: 302, baseType: !301, size: 32, offset: 800)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !302, line: 62, baseType: !303)
!302 = !DIFile(filename: "/home/songlh/workspace/protocol/install/lib/clang/5.0.0/include/stddef.h", directory: "/home/songlh/workspace/github/PDebloating/stubs/midilib")
!303 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !248, file: !249, line: 303, baseType: !8, size: 32, offset: 832)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !248, file: !249, line: 305, baseType: !306, size: 320, offset: 864)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 320, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 40)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "bOpenForWriting", scope: !242, file: !3, line: 68, baseType: !6, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "Header", scope: !242, file: !3, line: 70, baseType: !311, size: 96, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "MIDI_HEADER", file: !3, line: 64, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 58, size: 96, elements: !313)
!313 = !{!314, !317, !319, !320}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "iHeaderSize", scope: !312, file: !3, line: 59, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "DWORD", file: !7, line: 43, baseType: !316)
!316 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "iVersion", scope: !312, file: !3, line: 61, baseType: !318, size: 16, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "WORD", file: !7, line: 42, baseType: !281)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "iNumTracks", scope: !312, file: !3, line: 62, baseType: !318, size: 16, offset: 48)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "PPQN", scope: !312, file: !3, line: 63, baseType: !318, size: 16, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !242, file: !3, line: 71, baseType: !322, size: 32, offset: 160)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !7, line: 41, baseType: !324)
!324 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "file_sz", scope: !242, file: !3, line: 72, baseType: !315, size: 32, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "Track", scope: !242, file: !3, line: 74, baseType: !327, size: 1114112, offset: 224)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 1114112, elements: !352)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "MIDI_FILE_TRACK", file: !3, line: 56, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 41, size: 4352, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !329, file: !3, line: 42, baseType: !322, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pBase", scope: !329, file: !3, line: 43, baseType: !322, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pEnd", scope: !329, file: !3, line: 44, baseType: !322, size: 32, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !329, file: !3, line: 46, baseType: !315, size: 32, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dt", scope: !329, file: !3, line: 47, baseType: !315, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !329, file: !3, line: 49, baseType: !315, size: 32, offset: 160)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "iBlockSize", scope: !329, file: !3, line: 51, baseType: !315, size: 32, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "iDefaultChannel", scope: !329, file: !3, line: 52, baseType: !323, size: 8, offset: 224)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !329, file: !3, line: 53, baseType: !323, size: 8, offset: 232)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "LastNote", scope: !329, file: !3, line: 55, baseType: !341, size: 4096, offset: 256)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 4096, elements: !350)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "MIDI_LAST_NOTE", file: !3, line: 39, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 35, size: 64, elements: !344)
!344 = !{!345, !346, !347, !348, !349}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !343, file: !3, line: 36, baseType: !323, size: 8)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "chn", scope: !343, file: !3, line: 36, baseType: !323, size: 8, offset: 8)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !343, file: !3, line: 37, baseType: !323, size: 8, offset: 16)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !343, file: !3, line: 37, baseType: !323, size: 8, offset: 24)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "end_pos", scope: !343, file: !3, line: 38, baseType: !315, size: 32, offset: 32)
!350 = !{!351}
!351 = !DISubrange(count: 64)
!352 = !{!353}
!353 = !DISubrange(count: 256)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "MIDI_END_POINT", file: !3, line: 431, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 428, size: 64, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "iIdx", scope: !358, file: !3, line: 429, baseType: !8, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "iEndPos", scope: !358, file: !3, line: 430, baseType: !8, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "tMIDI_MSG", file: !14, line: 49, baseType: !13)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "tMIDI_CC", file: !14, line: 212, baseType: !74)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "tMIDI_META", file: !14, line: 317, baseType: !222)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "tMIDI_KEYSIG", file: !14, line: 295, baseType: !29)
!366 = !{!0, !367, !373, !382, !390, !398, !406, !410}
!367 = !DIGlobalVariableExpression(var: !368)
!368 = distinct !DIGlobalVariable(name: "mtrk", scope: !2, file: !3, line: 588, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 32, elements: !371)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!371 = !{!372}
!372 = !DISubrange(count: 4)
!373 = !DIGlobalVariableExpression(var: !374)
!374 = distinct !DIGlobalVariable(name: "tmp", scope: !375, file: !3, line: 620, type: !379, isLocal: true, isDefinition: true)
!375 = distinct !DISubprogram(name: "midiSongAddSMPTEOffset", scope: !3, file: !3, line: 618, type: !376, isLocal: false, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!376 = !DISubroutineType(types: !377)
!377 = !{!6, !9, !8, !8, !8, !8, !8, !8}
!378 = !{}
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 8)
!382 = !DIGlobalVariableExpression(var: !383)
!383 = distinct !DIGlobalVariable(name: "tmp", scope: !384, file: !3, line: 646, type: !387, isLocal: true, isDefinition: true)
!384 = distinct !DISubprogram(name: "midiSongAddTimeSig", scope: !3, file: !3, line: 644, type: !385, isLocal: false, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!385 = !DISubroutineType(types: !386)
!386 = !{!6, !9, !8, !8, !8, !8, !8}
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 56, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 7)
!390 = !DIGlobalVariableExpression(var: !391)
!391 = distinct !DIGlobalVariable(name: "tmp", scope: !392, file: !3, line: 661, type: !395, isLocal: true, isDefinition: true)
!392 = distinct !DISubprogram(name: "midiSongAddKeySig", scope: !3, file: !3, line: 659, type: !393, isLocal: false, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!393 = !DISubroutineType(types: !394)
!394 = !{!6, !9, !8, !365}
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 40, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 5)
!398 = !DIGlobalVariableExpression(var: !399)
!399 = distinct !DIGlobalVariable(name: "tmp", scope: !400, file: !3, line: 674, type: !403, isLocal: true, isDefinition: true)
!400 = distinct !DISubprogram(name: "midiSongAddTempo", scope: !3, file: !3, line: 672, type: !401, isLocal: false, isDefinition: true, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!401 = !DISubroutineType(types: !402)
!402 = !{!6, !9, !8, !8}
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 48, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 6)
!406 = !DIGlobalVariableExpression(var: !407)
!407 = distinct !DIGlobalVariable(name: "tmp", scope: !408, file: !3, line: 690, type: !409, isLocal: true, isDefinition: true)
!408 = distinct !DISubprogram(name: "midiSongAddMIDIPort", scope: !3, file: !3, line: 688, type: !401, isLocal: false, isDefinition: true, scopeLine: 689, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 32, elements: !371)
!410 = !DIGlobalVariableExpression(var: !411)
!411 = distinct !DIGlobalVariable(name: "tmp", scope: !412, file: !3, line: 701, type: !415, isLocal: true, isDefinition: true)
!412 = distinct !DISubprogram(name: "midiSongAddEndSequence", scope: !3, file: !3, line: 699, type: !413, isLocal: false, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!413 = !DISubroutineType(types: !414)
!414 = !{!6, !9, !8}
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 24, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 3)
!418 = !DIGlobalVariableExpression(var: !419)
!419 = distinct !DIGlobalVariable(name: "szPatchList", scope: !420, file: !421, line: 34, type: !450, isLocal: true, isDefinition: true)
!420 = distinct !DICompileUnit(language: DW_LANG_C89, file: !421, producer: "clang version 5.0.0 (tags/RELEASE_500/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !422, retainedTypes: !438, globals: !439)
!421 = !DIFile(filename: "midiutil.c", directory: "/home/songlh/workspace/github/PDebloating/stubs/midilib")
!422 = !{!13, !74, !29, !65, !222, !423}
!423 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 46, size: 32, elements: !425)
!424 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/songlh/workspace/github/PDebloating/stubs/midilib")
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437}
!426 = !DIEnumerator(name: "_ISupper", value: 256)
!427 = !DIEnumerator(name: "_ISlower", value: 512)
!428 = !DIEnumerator(name: "_ISalpha", value: 1024)
!429 = !DIEnumerator(name: "_ISdigit", value: 2048)
!430 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!431 = !DIEnumerator(name: "_ISspace", value: 8192)
!432 = !DIEnumerator(name: "_ISprint", value: 16384)
!433 = !DIEnumerator(name: "_ISgraph", value: 32768)
!434 = !DIEnumerator(name: "_ISblank", value: 1)
!435 = !DIEnumerator(name: "_IScntrl", value: 2)
!436 = !DIEnumerator(name: "_ISpunct", value: 4)
!437 = !DIEnumerator(name: "_ISalnum", value: 8)
!438 = !{!364, !8, !281}
!439 = !{!440, !418, !448, !453, !455, !460}
!440 = !DIGlobalVariableExpression(var: !441)
!441 = distinct !DIGlobalVariable(name: "iKeysList", scope: !442, file: !421, line: 490, type: !445, isLocal: true, isDefinition: true)
!442 = distinct !DISubprogram(name: "muGetKeySigName", scope: !421, file: !421, line: 488, type: !443, isLocal: false, isDefinition: true, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!443 = !DISubroutineType(types: !444)
!444 = !{!6, !253, !365}
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 512, elements: !446)
!446 = !{!447, !381}
!447 = !DISubrange(count: 2)
!448 = !DIGlobalVariableExpression(var: !449)
!449 = distinct !DIGlobalVariable(name: "szGMDrums", scope: !420, file: !421, line: 181, type: !450, isLocal: true, isDefinition: true)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 4096, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 128)
!453 = !DIGlobalVariableExpression(var: !454)
!454 = distinct !DIGlobalVariable(name: "szCCList", scope: !420, file: !421, line: 272, type: !450, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456)
!456 = distinct !DIGlobalVariable(name: "szNoteName", scope: !420, file: !421, line: 381, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 384, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 12)
!460 = !DIGlobalVariableExpression(var: !461)
!461 = distinct !DIGlobalVariable(name: "fFreqlist", scope: !420, file: !421, line: 396, type: !462, isLocal: true, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 384, elements: !458)
!463 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!464 = !DIGlobalVariableExpression(var: !465)
!465 = distinct !DIGlobalVariable(name: "Valid", scope: !466, file: !467, line: 72, type: !488, isLocal: true, isDefinition: true)
!466 = distinct !DISubprogram(name: "rtttlGetClosestTempo", scope: !467, file: !467, line: 70, type: !468, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !470, variables: !378)
!467 = !DIFile(filename: "m2rtttl.c", directory: "/home/songlh/workspace/github/PDebloating/stubs/midilib")
!468 = !DISubroutineType(types: !469)
!469 = !{!8, !8}
!470 = distinct !DICompileUnit(language: DW_LANG_C89, file: !467, producer: "clang version 5.0.0 (tags/RELEASE_500/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !471, retainedTypes: !472, globals: !473)
!471 = !{!13, !74, !222, !29}
!472 = !{!8}
!473 = !{!464, !474}
!474 = !DIGlobalVariableExpression(var: !475)
!475 = distinct !DIGlobalVariable(name: "pNoteNames", scope: !476, file: !467, line: 111, type: !457, isLocal: true, isDefinition: true)
!476 = distinct !DISubprogram(name: "outStdout", scope: !467, file: !467, line: 109, type: !477, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !470, variables: !378)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !8, !8, !8, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONVERT_PREFS", file: !467, line: 58, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 51, size: 160, elements: !482)
!482 = !{!483, !484, !485, !486, !487}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "iTempo", scope: !481, file: !467, line: 52, baseType: !8, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "bDoneHeader", scope: !481, file: !467, line: 54, baseType: !6, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "bNeedPrefixComma", scope: !481, file: !467, line: 55, baseType: !6, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "iSndFile", scope: !481, file: !467, line: 56, baseType: !8, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "fMult", scope: !481, file: !467, line: 57, baseType: !463, size: 32, offset: 128)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1024, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 32)
!491 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!492 = !{i32 1, !"NumRegisterParameters", i32 0}
!493 = !{i32 2, !"Dwarf Version", i32 4}
!494 = !{i32 2, !"Debug Info Version", i32 3}
!495 = !{i32 1, !"wchar_size", i32 4}
!496 = distinct !DISubprogram(name: "midiFileCreate", scope: !3, file: !3, line: 242, type: !497, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!497 = !DISubroutineType(types: !498)
!498 = !{!9, !499, !6}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!501 = !DILocalVariable(name: "pFilename", arg: 1, scope: !496, file: !3, line: 242, type: !499)
!502 = !DIExpression()
!503 = !DILocation(line: 242, column: 40, scope: !496)
!504 = !DILocalVariable(name: "bOverwriteIfExists", arg: 2, scope: !496, file: !3, line: 242, type: !6)
!505 = !DILocation(line: 242, column: 56, scope: !496)
!506 = !DILocalVariable(name: "pMF", scope: !496, file: !3, line: 244, type: !240)
!507 = !DILocation(line: 244, column: 13, scope: !496)
!508 = !DILocation(line: 244, column: 33, scope: !496)
!509 = !DILocation(line: 244, column: 19, scope: !496)
!510 = !DILocalVariable(name: "i", scope: !496, file: !3, line: 245, type: !8)
!511 = !DILocation(line: 245, column: 5, scope: !496)
!512 = !DILocation(line: 247, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !496, file: !3, line: 247, column: 6)
!514 = !DILocation(line: 247, column: 6, scope: !496)
!515 = !DILocation(line: 247, column: 18, scope: !513)
!516 = !DILocation(line: 249, column: 7, scope: !517)
!517 = distinct !DILexicalBlock(scope: !496, file: !3, line: 249, column: 6)
!518 = !DILocation(line: 249, column: 6, scope: !496)
!519 = !DILocation(line: 251, column: 27, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 251, column: 7)
!521 = distinct !DILexicalBlock(scope: !517, file: !3, line: 250, column: 3)
!522 = !DILocation(line: 251, column: 21, scope: !520)
!523 = !DILocation(line: 251, column: 8, scope: !520)
!524 = !DILocation(line: 251, column: 13, scope: !520)
!525 = !DILocation(line: 251, column: 19, scope: !520)
!526 = !DILocation(line: 251, column: 7, scope: !521)
!527 = !DILocation(line: 253, column: 11, scope: !528)
!528 = distinct !DILexicalBlock(scope: !520, file: !3, line: 252, column: 4)
!529 = !DILocation(line: 253, column: 16, scope: !528)
!530 = !DILocation(line: 253, column: 4, scope: !528)
!531 = !DILocation(line: 254, column: 9, scope: !528)
!532 = !DILocation(line: 254, column: 4, scope: !528)
!533 = !DILocation(line: 255, column: 4, scope: !528)
!534 = !DILocation(line: 257, column: 3, scope: !521)
!535 = !DILocation(line: 259, column: 26, scope: !536)
!536 = distinct !DILexicalBlock(scope: !496, file: !3, line: 259, column: 6)
!537 = !DILocation(line: 259, column: 20, scope: !536)
!538 = !DILocation(line: 259, column: 7, scope: !536)
!539 = !DILocation(line: 259, column: 12, scope: !536)
!540 = !DILocation(line: 259, column: 18, scope: !536)
!541 = !DILocation(line: 259, column: 6, scope: !496)
!542 = !DILocation(line: 260, column: 13, scope: !543)
!543 = distinct !DILexicalBlock(scope: !536, file: !3, line: 260, column: 3)
!544 = !DILocation(line: 263, column: 16, scope: !545)
!545 = distinct !DILexicalBlock(scope: !536, file: !3, line: 262, column: 3)
!546 = !DILocation(line: 263, column: 8, scope: !545)
!547 = !DILocation(line: 263, column: 3, scope: !545)
!548 = !DILocation(line: 264, column: 3, scope: !545)
!549 = !DILocation(line: 267, column: 2, scope: !496)
!550 = !DILocation(line: 267, column: 7, scope: !496)
!551 = !DILocation(line: 267, column: 23, scope: !496)
!552 = !DILocation(line: 268, column: 2, scope: !496)
!553 = !DILocation(line: 268, column: 7, scope: !496)
!554 = !DILocation(line: 268, column: 14, scope: !496)
!555 = !DILocation(line: 268, column: 19, scope: !496)
!556 = !DILocation(line: 269, column: 2, scope: !496)
!557 = !DILocation(line: 269, column: 7, scope: !496)
!558 = !DILocation(line: 269, column: 14, scope: !496)
!559 = !DILocation(line: 269, column: 23, scope: !496)
!560 = !DILocation(line: 271, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !496, file: !3, line: 271, column: 2)
!562 = !DILocation(line: 271, column: 6, scope: !561)
!563 = !DILocation(line: 271, column: 10, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !3, line: 271, column: 2)
!565 = !DILocation(line: 271, column: 11, scope: !564)
!566 = !DILocation(line: 271, column: 2, scope: !561)
!567 = !DILocation(line: 273, column: 3, scope: !568)
!568 = distinct !DILexicalBlock(scope: !564, file: !3, line: 272, column: 3)
!569 = !DILocation(line: 273, column: 8, scope: !568)
!570 = !DILocation(line: 273, column: 14, scope: !568)
!571 = !DILocation(line: 273, column: 17, scope: !568)
!572 = !DILocation(line: 273, column: 21, scope: !568)
!573 = !DILocation(line: 274, column: 3, scope: !568)
!574 = !DILocation(line: 274, column: 8, scope: !568)
!575 = !DILocation(line: 274, column: 14, scope: !568)
!576 = !DILocation(line: 274, column: 17, scope: !568)
!577 = !DILocation(line: 274, column: 21, scope: !568)
!578 = !DILocation(line: 275, column: 3, scope: !568)
!579 = !DILocation(line: 275, column: 8, scope: !568)
!580 = !DILocation(line: 275, column: 14, scope: !568)
!581 = !DILocation(line: 275, column: 17, scope: !568)
!582 = !DILocation(line: 275, column: 23, scope: !568)
!583 = !DILocation(line: 276, column: 3, scope: !568)
!584 = !DILocation(line: 276, column: 8, scope: !568)
!585 = !DILocation(line: 276, column: 14, scope: !568)
!586 = !DILocation(line: 276, column: 17, scope: !568)
!587 = !DILocation(line: 276, column: 22, scope: !568)
!588 = !DILocation(line: 277, column: 3, scope: !568)
!589 = !DILocation(line: 277, column: 8, scope: !568)
!590 = !DILocation(line: 277, column: 14, scope: !568)
!591 = !DILocation(line: 277, column: 17, scope: !568)
!592 = !DILocation(line: 277, column: 28, scope: !568)
!593 = !DILocation(line: 278, column: 3, scope: !568)
!594 = !DILocation(line: 278, column: 8, scope: !568)
!595 = !DILocation(line: 278, column: 14, scope: !568)
!596 = !DILocation(line: 278, column: 17, scope: !568)
!597 = !DILocation(line: 278, column: 20, scope: !568)
!598 = !DILocation(line: 279, column: 42, scope: !568)
!599 = !DILocation(line: 279, column: 44, scope: !568)
!600 = !DILocation(line: 279, column: 35, scope: !568)
!601 = !DILocation(line: 279, column: 3, scope: !568)
!602 = !DILocation(line: 279, column: 8, scope: !568)
!603 = !DILocation(line: 279, column: 14, scope: !568)
!604 = !DILocation(line: 279, column: 17, scope: !568)
!605 = !DILocation(line: 279, column: 33, scope: !568)
!606 = !DILocation(line: 281, column: 10, scope: !568)
!607 = !DILocation(line: 281, column: 15, scope: !568)
!608 = !DILocation(line: 281, column: 21, scope: !568)
!609 = !DILocation(line: 281, column: 24, scope: !568)
!610 = !DILocation(line: 281, column: 3, scope: !568)
!611 = !DILocation(line: 282, column: 3, scope: !568)
!612 = !DILocation(line: 271, column: 28, scope: !564)
!613 = !DILocation(line: 271, column: 2, scope: !564)
!614 = distinct !{!614, !566, !615}
!615 = !DILocation(line: 282, column: 3, scope: !561)
!616 = !DILocation(line: 284, column: 22, scope: !496)
!617 = !DILocation(line: 284, column: 9, scope: !496)
!618 = !DILocation(line: 284, column: 2, scope: !496)
!619 = !DILocation(line: 285, column: 1, scope: !496)
!620 = distinct !DISubprogram(name: "midiFileSetTracksDefaultChannel", scope: !3, file: !3, line: 287, type: !621, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!621 = !DISubroutineType(types: !622)
!622 = !{!8, !9, !8, !8}
!623 = !DILocalVariable(name: "_pMF", arg: 1, scope: !620, file: !3, line: 287, type: !9)
!624 = !DILocation(line: 287, column: 49, scope: !620)
!625 = !DILocalVariable(name: "iTrack", arg: 2, scope: !620, file: !3, line: 287, type: !8)
!626 = !DILocation(line: 287, column: 59, scope: !620)
!627 = !DILocalVariable(name: "iChannel", arg: 3, scope: !620, file: !3, line: 287, type: !8)
!628 = !DILocation(line: 287, column: 71, scope: !620)
!629 = !DILocalVariable(name: "prev", scope: !620, file: !3, line: 289, type: !8)
!630 = !DILocation(line: 289, column: 5, scope: !620)
!631 = !DILocalVariable(name: "pMF", scope: !620, file: !3, line: 291, type: !240)
!632 = !DILocation(line: 291, column: 2, scope: !620)
!633 = !DILocation(line: 292, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !620, file: !3, line: 292, column: 6)
!635 = !DILocation(line: 292, column: 6, scope: !620)
!636 = !DILocation(line: 292, column: 31, scope: !634)
!637 = !DILocation(line: 293, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !620, file: !3, line: 293, column: 6)
!639 = !DILocation(line: 293, column: 6, scope: !620)
!640 = !DILocation(line: 293, column: 32, scope: !638)
!641 = !DILocation(line: 294, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !620, file: !3, line: 294, column: 6)
!643 = !DILocation(line: 294, column: 6, scope: !620)
!644 = !DILocation(line: 294, column: 35, scope: !642)
!645 = !DILocation(line: 299, column: 9, scope: !620)
!646 = !DILocation(line: 299, column: 14, scope: !620)
!647 = !DILocation(line: 299, column: 20, scope: !620)
!648 = !DILocation(line: 299, column: 28, scope: !620)
!649 = !DILocation(line: 299, column: 43, scope: !620)
!650 = !DILocation(line: 299, column: 7, scope: !620)
!651 = !DILocation(line: 300, column: 46, scope: !620)
!652 = !DILocation(line: 300, column: 54, scope: !620)
!653 = !DILocation(line: 300, column: 39, scope: !620)
!654 = !DILocation(line: 300, column: 2, scope: !620)
!655 = !DILocation(line: 300, column: 7, scope: !620)
!656 = !DILocation(line: 300, column: 13, scope: !620)
!657 = !DILocation(line: 300, column: 21, scope: !620)
!658 = !DILocation(line: 300, column: 37, scope: !620)
!659 = !DILocation(line: 301, column: 9, scope: !620)
!660 = !DILocation(line: 301, column: 2, scope: !620)
!661 = !DILocation(line: 302, column: 1, scope: !620)
!662 = distinct !DISubprogram(name: "_midiValidateTrack", scope: !3, file: !3, line: 93, type: !663, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!663 = !DISubroutineType(types: !664)
!664 = !{!6, !665, !8}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!667 = !DILocalVariable(name: "pMF", arg: 1, scope: !662, file: !3, line: 93, type: !665)
!668 = !DILocation(line: 93, column: 50, scope: !662)
!669 = !DILocalVariable(name: "iTrack", arg: 2, scope: !662, file: !3, line: 93, type: !8)
!670 = !DILocation(line: 93, column: 59, scope: !662)
!671 = !DILocation(line: 95, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !662, file: !3, line: 95, column: 6)
!673 = !DILocation(line: 95, column: 6, scope: !662)
!674 = !DILocation(line: 95, column: 28, scope: !672)
!675 = !DILocation(line: 97, column: 6, scope: !676)
!676 = distinct !DILexicalBlock(scope: !662, file: !3, line: 97, column: 6)
!677 = !DILocation(line: 97, column: 11, scope: !676)
!678 = !DILocation(line: 97, column: 6, scope: !662)
!679 = !DILocation(line: 99, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 99, column: 7)
!681 = distinct !DILexicalBlock(scope: !676, file: !3, line: 98, column: 3)
!682 = !DILocation(line: 99, column: 14, scope: !680)
!683 = !DILocation(line: 99, column: 18, scope: !680)
!684 = !DILocation(line: 99, column: 21, scope: !680)
!685 = !DILocation(line: 99, column: 28, scope: !680)
!686 = !DILocation(line: 99, column: 7, scope: !681)
!687 = !DILocation(line: 100, column: 4, scope: !680)
!688 = !DILocation(line: 101, column: 3, scope: !681)
!689 = !DILocation(line: 104, column: 8, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 104, column: 7)
!691 = distinct !DILexicalBlock(scope: !676, file: !3, line: 103, column: 3)
!692 = !DILocation(line: 104, column: 13, scope: !690)
!693 = !DILocation(line: 104, column: 7, scope: !691)
!694 = !DILocation(line: 105, column: 4, scope: !690)
!695 = !DILocation(line: 107, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !691, file: !3, line: 107, column: 7)
!697 = !DILocation(line: 107, column: 14, scope: !696)
!698 = !DILocation(line: 107, column: 18, scope: !696)
!699 = !DILocation(line: 107, column: 21, scope: !696)
!700 = !DILocation(line: 107, column: 29, scope: !696)
!701 = !DILocation(line: 107, column: 34, scope: !696)
!702 = !DILocation(line: 107, column: 41, scope: !696)
!703 = !DILocation(line: 107, column: 27, scope: !696)
!704 = !DILocation(line: 107, column: 7, scope: !691)
!705 = !DILocation(line: 108, column: 4, scope: !696)
!706 = !DILocation(line: 111, column: 2, scope: !662)
!707 = !DILocation(line: 112, column: 1, scope: !662)
!708 = distinct !DISubprogram(name: "midiFileGetTracksDefaultChannel", scope: !3, file: !3, line: 304, type: !709, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!709 = !DISubroutineType(types: !710)
!710 = !{!8, !711, !8}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!713 = !DILocalVariable(name: "_pMF", arg: 1, scope: !708, file: !3, line: 304, type: !711)
!714 = !DILocation(line: 304, column: 55, scope: !708)
!715 = !DILocalVariable(name: "iTrack", arg: 2, scope: !708, file: !3, line: 304, type: !8)
!716 = !DILocation(line: 304, column: 65, scope: !708)
!717 = !DILocalVariable(name: "pMF", scope: !708, file: !3, line: 306, type: !240)
!718 = !DILocation(line: 306, column: 2, scope: !708)
!719 = !DILocation(line: 307, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !708, file: !3, line: 307, column: 6)
!721 = !DILocation(line: 307, column: 6, scope: !708)
!722 = !DILocation(line: 307, column: 31, scope: !720)
!723 = !DILocation(line: 308, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !708, file: !3, line: 308, column: 6)
!725 = !DILocation(line: 308, column: 6, scope: !708)
!726 = !DILocation(line: 308, column: 32, scope: !724)
!727 = !DILocation(line: 310, column: 9, scope: !708)
!728 = !DILocation(line: 310, column: 14, scope: !708)
!729 = !DILocation(line: 310, column: 20, scope: !708)
!730 = !DILocation(line: 310, column: 28, scope: !708)
!731 = !DILocation(line: 310, column: 43, scope: !708)
!732 = !DILocation(line: 310, column: 2, scope: !708)
!733 = !DILocation(line: 311, column: 1, scope: !708)
!734 = distinct !DISubprogram(name: "midiFileSetPPQN", scope: !3, file: !3, line: 313, type: !735, isLocal: false, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!735 = !DISubroutineType(types: !736)
!736 = !{!8, !9, !8}
!737 = !DILocalVariable(name: "_pMF", arg: 1, scope: !734, file: !3, line: 313, type: !9)
!738 = !DILocation(line: 313, column: 33, scope: !734)
!739 = !DILocalVariable(name: "PPQN", arg: 2, scope: !734, file: !3, line: 313, type: !8)
!740 = !DILocation(line: 313, column: 43, scope: !734)
!741 = !DILocalVariable(name: "prev", scope: !734, file: !3, line: 315, type: !8)
!742 = !DILocation(line: 315, column: 5, scope: !734)
!743 = !DILocalVariable(name: "pMF", scope: !734, file: !3, line: 317, type: !240)
!744 = !DILocation(line: 317, column: 2, scope: !734)
!745 = !DILocation(line: 318, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !734, file: !3, line: 318, column: 6)
!747 = !DILocation(line: 318, column: 6, scope: !734)
!748 = !DILocation(line: 318, column: 31, scope: !746)
!749 = !DILocation(line: 319, column: 9, scope: !734)
!750 = !DILocation(line: 319, column: 14, scope: !734)
!751 = !DILocation(line: 319, column: 21, scope: !734)
!752 = !DILocation(line: 319, column: 7, scope: !734)
!753 = !DILocation(line: 320, column: 27, scope: !734)
!754 = !DILocation(line: 320, column: 21, scope: !734)
!755 = !DILocation(line: 320, column: 2, scope: !734)
!756 = !DILocation(line: 320, column: 7, scope: !734)
!757 = !DILocation(line: 320, column: 14, scope: !734)
!758 = !DILocation(line: 320, column: 19, scope: !734)
!759 = !DILocation(line: 321, column: 9, scope: !734)
!760 = !DILocation(line: 321, column: 2, scope: !734)
!761 = !DILocation(line: 322, column: 1, scope: !734)
!762 = distinct !DISubprogram(name: "midiFileGetPPQN", scope: !3, file: !3, line: 324, type: !763, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!763 = !DISubroutineType(types: !764)
!764 = !{!8, !711}
!765 = !DILocalVariable(name: "_pMF", arg: 1, scope: !762, file: !3, line: 324, type: !711)
!766 = !DILocation(line: 324, column: 39, scope: !762)
!767 = !DILocalVariable(name: "pMF", scope: !762, file: !3, line: 326, type: !240)
!768 = !DILocation(line: 326, column: 2, scope: !762)
!769 = !DILocation(line: 327, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !762, file: !3, line: 327, column: 6)
!771 = !DILocation(line: 327, column: 6, scope: !762)
!772 = !DILocation(line: 327, column: 31, scope: !770)
!773 = !DILocation(line: 328, column: 14, scope: !762)
!774 = !DILocation(line: 328, column: 19, scope: !762)
!775 = !DILocation(line: 328, column: 26, scope: !762)
!776 = !DILocation(line: 328, column: 9, scope: !762)
!777 = !DILocation(line: 328, column: 2, scope: !762)
!778 = !DILocation(line: 329, column: 1, scope: !762)
!779 = distinct !DISubprogram(name: "midiFileSetVersion", scope: !3, file: !3, line: 331, type: !735, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!780 = !DILocalVariable(name: "_pMF", arg: 1, scope: !779, file: !3, line: 331, type: !9)
!781 = !DILocation(line: 331, column: 36, scope: !779)
!782 = !DILocalVariable(name: "iVersion", arg: 2, scope: !779, file: !3, line: 331, type: !8)
!783 = !DILocation(line: 331, column: 46, scope: !779)
!784 = !DILocalVariable(name: "prev", scope: !779, file: !3, line: 333, type: !8)
!785 = !DILocation(line: 333, column: 5, scope: !779)
!786 = !DILocalVariable(name: "pMF", scope: !779, file: !3, line: 335, type: !240)
!787 = !DILocation(line: 335, column: 2, scope: !779)
!788 = !DILocation(line: 336, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !779, file: !3, line: 336, column: 6)
!790 = !DILocation(line: 336, column: 6, scope: !779)
!791 = !DILocation(line: 336, column: 31, scope: !789)
!792 = !DILocation(line: 337, column: 6, scope: !793)
!793 = distinct !DILexicalBlock(scope: !779, file: !3, line: 337, column: 6)
!794 = !DILocation(line: 337, column: 14, scope: !793)
!795 = !DILocation(line: 337, column: 17, scope: !793)
!796 = !DILocation(line: 337, column: 20, scope: !793)
!797 = !DILocation(line: 337, column: 28, scope: !793)
!798 = !DILocation(line: 337, column: 6, scope: !779)
!799 = !DILocation(line: 337, column: 34, scope: !793)
!800 = !DILocation(line: 338, column: 9, scope: !779)
!801 = !DILocation(line: 338, column: 14, scope: !779)
!802 = !DILocation(line: 338, column: 21, scope: !779)
!803 = !DILocation(line: 338, column: 7, scope: !779)
!804 = !DILocation(line: 339, column: 31, scope: !779)
!805 = !DILocation(line: 339, column: 25, scope: !779)
!806 = !DILocation(line: 339, column: 2, scope: !779)
!807 = !DILocation(line: 339, column: 7, scope: !779)
!808 = !DILocation(line: 339, column: 14, scope: !779)
!809 = !DILocation(line: 339, column: 23, scope: !779)
!810 = !DILocation(line: 340, column: 9, scope: !779)
!811 = !DILocation(line: 340, column: 2, scope: !779)
!812 = !DILocation(line: 341, column: 1, scope: !779)
!813 = distinct !DISubprogram(name: "midiFileGetVersion", scope: !3, file: !3, line: 343, type: !763, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!814 = !DILocalVariable(name: "_pMF", arg: 1, scope: !813, file: !3, line: 343, type: !711)
!815 = !DILocation(line: 343, column: 43, scope: !813)
!816 = !DILocalVariable(name: "pMF", scope: !813, file: !3, line: 345, type: !240)
!817 = !DILocation(line: 345, column: 2, scope: !813)
!818 = !DILocation(line: 346, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !813, file: !3, line: 346, column: 6)
!820 = !DILocation(line: 346, column: 6, scope: !813)
!821 = !DILocation(line: 346, column: 31, scope: !819)
!822 = !DILocation(line: 347, column: 9, scope: !813)
!823 = !DILocation(line: 347, column: 14, scope: !813)
!824 = !DILocation(line: 347, column: 21, scope: !813)
!825 = !DILocation(line: 347, column: 2, scope: !813)
!826 = !DILocation(line: 348, column: 1, scope: !813)
!827 = distinct !DISubprogram(name: "midiFileOpen", scope: !3, file: !3, line: 350, type: !828, isLocal: false, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!828 = !DISubroutineType(types: !829)
!829 = !{!9, !499}
!830 = !DILocalVariable(name: "pFilename", arg: 1, scope: !827, file: !3, line: 350, type: !499)
!831 = !DILocation(line: 350, column: 38, scope: !827)
!832 = !DILocalVariable(name: "fp", scope: !827, file: !3, line: 352, type: !245)
!833 = !DILocation(line: 352, column: 7, scope: !827)
!834 = !DILocation(line: 352, column: 18, scope: !827)
!835 = !DILocation(line: 352, column: 12, scope: !827)
!836 = !DILocalVariable(name: "pMF", scope: !827, file: !3, line: 353, type: !240)
!837 = !DILocation(line: 353, column: 13, scope: !827)
!838 = !DILocalVariable(name: "ptr", scope: !827, file: !3, line: 354, type: !322)
!839 = !DILocation(line: 354, column: 7, scope: !827)
!840 = !DILocalVariable(name: "bValidFile", scope: !827, file: !3, line: 355, type: !6)
!841 = !DILocation(line: 355, column: 6, scope: !827)
!842 = !DILocalVariable(name: "size", scope: !827, file: !3, line: 356, type: !279)
!843 = !DILocation(line: 356, column: 6, scope: !827)
!844 = !DILocation(line: 358, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !827, file: !3, line: 358, column: 6)
!846 = !DILocation(line: 358, column: 6, scope: !827)
!847 = !DILocation(line: 360, column: 28, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 360, column: 7)
!849 = distinct !DILexicalBlock(scope: !845, file: !3, line: 359, column: 3)
!850 = !DILocation(line: 360, column: 14, scope: !848)
!851 = !DILocation(line: 360, column: 12, scope: !848)
!852 = !DILocation(line: 360, column: 7, scope: !849)
!853 = !DILocation(line: 362, column: 10, scope: !854)
!854 = distinct !DILexicalBlock(scope: !848, file: !3, line: 361, column: 4)
!855 = !DILocation(line: 362, column: 4, scope: !854)
!856 = !DILocation(line: 363, column: 17, scope: !854)
!857 = !DILocation(line: 363, column: 11, scope: !854)
!858 = !DILocation(line: 363, column: 9, scope: !854)
!859 = !DILocation(line: 364, column: 35, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !3, line: 364, column: 8)
!861 = !DILocation(line: 364, column: 28, scope: !860)
!862 = !DILocation(line: 364, column: 9, scope: !860)
!863 = !DILocation(line: 364, column: 14, scope: !860)
!864 = !DILocation(line: 364, column: 18, scope: !860)
!865 = !DILocation(line: 364, column: 8, scope: !854)
!866 = !DILocation(line: 366, column: 11, scope: !867)
!867 = distinct !DILexicalBlock(scope: !860, file: !3, line: 365, column: 5)
!868 = !DILocation(line: 366, column: 5, scope: !867)
!869 = !DILocation(line: 367, column: 11, scope: !867)
!870 = !DILocation(line: 367, column: 16, scope: !867)
!871 = !DILocation(line: 367, column: 35, scope: !867)
!872 = !DILocation(line: 367, column: 41, scope: !867)
!873 = !DILocation(line: 367, column: 5, scope: !867)
!874 = !DILocation(line: 369, column: 11, scope: !867)
!875 = !DILocation(line: 369, column: 16, scope: !867)
!876 = !DILocation(line: 369, column: 9, scope: !867)
!877 = !DILocation(line: 370, column: 11, scope: !878)
!878 = distinct !DILexicalBlock(scope: !867, file: !3, line: 370, column: 9)
!879 = !DILocation(line: 370, column: 14, scope: !878)
!880 = !DILocation(line: 370, column: 9, scope: !878)
!881 = !DILocation(line: 370, column: 18, scope: !878)
!882 = !DILocation(line: 370, column: 25, scope: !878)
!883 = !DILocation(line: 370, column: 30, scope: !878)
!884 = !DILocation(line: 370, column: 33, scope: !878)
!885 = !DILocation(line: 370, column: 28, scope: !878)
!886 = !DILocation(line: 370, column: 37, scope: !878)
!887 = !DILocation(line: 370, column: 44, scope: !878)
!888 = !DILocation(line: 371, column: 8, scope: !878)
!889 = !DILocation(line: 371, column: 11, scope: !878)
!890 = !DILocation(line: 371, column: 6, scope: !878)
!891 = !DILocation(line: 371, column: 15, scope: !878)
!892 = !DILocation(line: 371, column: 22, scope: !878)
!893 = !DILocation(line: 371, column: 27, scope: !878)
!894 = !DILocation(line: 371, column: 30, scope: !878)
!895 = !DILocation(line: 371, column: 25, scope: !878)
!896 = !DILocation(line: 371, column: 34, scope: !878)
!897 = !DILocation(line: 370, column: 9, scope: !867)
!898 = !DILocalVariable(name: "dwData", scope: !899, file: !3, line: 373, type: !315)
!899 = distinct !DILexicalBlock(scope: !878, file: !3, line: 372, column: 6)
!900 = !DILocation(line: 373, column: 12, scope: !899)
!901 = !DILocalVariable(name: "wData", scope: !899, file: !3, line: 374, type: !318)
!902 = !DILocation(line: 374, column: 11, scope: !899)
!903 = !DILocalVariable(name: "i", scope: !899, file: !3, line: 375, type: !8)
!904 = !DILocation(line: 375, column: 10, scope: !899)
!905 = !DILocation(line: 377, column: 27, scope: !899)
!906 = !DILocation(line: 377, column: 30, scope: !899)
!907 = !DILocation(line: 377, column: 15, scope: !899)
!908 = !DILocation(line: 377, column: 13, scope: !899)
!909 = !DILocation(line: 378, column: 32, scope: !899)
!910 = !DILocation(line: 378, column: 6, scope: !899)
!911 = !DILocation(line: 378, column: 11, scope: !899)
!912 = !DILocation(line: 378, column: 18, scope: !899)
!913 = !DILocation(line: 378, column: 30, scope: !899)
!914 = !DILocation(line: 380, column: 25, scope: !899)
!915 = !DILocation(line: 380, column: 28, scope: !899)
!916 = !DILocation(line: 380, column: 14, scope: !899)
!917 = !DILocation(line: 380, column: 12, scope: !899)
!918 = !DILocation(line: 381, column: 35, scope: !899)
!919 = !DILocation(line: 381, column: 6, scope: !899)
!920 = !DILocation(line: 381, column: 11, scope: !899)
!921 = !DILocation(line: 381, column: 18, scope: !899)
!922 = !DILocation(line: 381, column: 27, scope: !899)
!923 = !DILocation(line: 383, column: 25, scope: !899)
!924 = !DILocation(line: 383, column: 28, scope: !899)
!925 = !DILocation(line: 383, column: 14, scope: !899)
!926 = !DILocation(line: 383, column: 12, scope: !899)
!927 = !DILocation(line: 384, column: 37, scope: !899)
!928 = !DILocation(line: 384, column: 6, scope: !899)
!929 = !DILocation(line: 384, column: 11, scope: !899)
!930 = !DILocation(line: 384, column: 18, scope: !899)
!931 = !DILocation(line: 384, column: 29, scope: !899)
!932 = !DILocation(line: 386, column: 25, scope: !899)
!933 = !DILocation(line: 386, column: 28, scope: !899)
!934 = !DILocation(line: 386, column: 14, scope: !899)
!935 = !DILocation(line: 386, column: 12, scope: !899)
!936 = !DILocation(line: 387, column: 31, scope: !899)
!937 = !DILocation(line: 387, column: 6, scope: !899)
!938 = !DILocation(line: 387, column: 11, scope: !899)
!939 = !DILocation(line: 387, column: 18, scope: !899)
!940 = !DILocation(line: 387, column: 23, scope: !899)
!941 = !DILocation(line: 389, column: 13, scope: !899)
!942 = !DILocation(line: 389, column: 18, scope: !899)
!943 = !DILocation(line: 389, column: 25, scope: !899)
!944 = !DILocation(line: 389, column: 36, scope: !899)
!945 = !DILocation(line: 389, column: 10, scope: !899)
!946 = !DILocation(line: 393, column: 11, scope: !947)
!947 = distinct !DILexicalBlock(scope: !899, file: !3, line: 393, column: 6)
!948 = !DILocation(line: 393, column: 10, scope: !947)
!949 = !DILocation(line: 393, column: 14, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !3, line: 393, column: 6)
!951 = !DILocation(line: 393, column: 15, scope: !950)
!952 = !DILocation(line: 393, column: 6, scope: !947)
!953 = !DILocation(line: 395, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !3, line: 394, column: 7)
!955 = !DILocation(line: 395, column: 12, scope: !954)
!956 = !DILocation(line: 395, column: 18, scope: !954)
!957 = !DILocation(line: 395, column: 21, scope: !954)
!958 = !DILocation(line: 395, column: 25, scope: !954)
!959 = !DILocation(line: 396, column: 7, scope: !954)
!960 = !DILocation(line: 396, column: 12, scope: !954)
!961 = !DILocation(line: 396, column: 18, scope: !954)
!962 = !DILocation(line: 396, column: 21, scope: !954)
!963 = !DILocation(line: 396, column: 33, scope: !954)
!964 = !DILocation(line: 397, column: 7, scope: !954)
!965 = !DILocation(line: 393, column: 32, scope: !950)
!966 = !DILocation(line: 393, column: 6, scope: !950)
!967 = distinct !{!967, !952, !968}
!968 = !DILocation(line: 397, column: 7, scope: !947)
!969 = !DILocation(line: 399, column: 11, scope: !970)
!970 = distinct !DILexicalBlock(scope: !899, file: !3, line: 399, column: 6)
!971 = !DILocation(line: 399, column: 10, scope: !970)
!972 = !DILocation(line: 399, column: 14, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !3, line: 399, column: 6)
!974 = !DILocation(line: 399, column: 16, scope: !973)
!975 = !DILocation(line: 399, column: 21, scope: !973)
!976 = !DILocation(line: 399, column: 28, scope: !973)
!977 = !DILocation(line: 399, column: 15, scope: !973)
!978 = !DILocation(line: 399, column: 6, scope: !970)
!979 = !DILocation(line: 401, column: 29, scope: !980)
!980 = distinct !DILexicalBlock(scope: !973, file: !3, line: 400, column: 7)
!981 = !DILocation(line: 401, column: 7, scope: !980)
!982 = !DILocation(line: 401, column: 12, scope: !980)
!983 = !DILocation(line: 401, column: 18, scope: !980)
!984 = !DILocation(line: 401, column: 21, scope: !980)
!985 = !DILocation(line: 401, column: 27, scope: !980)
!986 = !DILocation(line: 402, column: 27, scope: !980)
!987 = !DILocation(line: 402, column: 30, scope: !980)
!988 = !DILocation(line: 402, column: 7, scope: !980)
!989 = !DILocation(line: 402, column: 12, scope: !980)
!990 = !DILocation(line: 402, column: 18, scope: !980)
!991 = !DILocation(line: 402, column: 21, scope: !980)
!992 = !DILocation(line: 402, column: 25, scope: !980)
!993 = !DILocation(line: 403, column: 28, scope: !980)
!994 = !DILocation(line: 403, column: 31, scope: !980)
!995 = !DILocation(line: 403, column: 16, scope: !980)
!996 = !DILocation(line: 403, column: 14, scope: !980)
!997 = !DILocation(line: 404, column: 26, scope: !980)
!998 = !DILocation(line: 404, column: 7, scope: !980)
!999 = !DILocation(line: 404, column: 12, scope: !980)
!1000 = !DILocation(line: 404, column: 18, scope: !980)
!1001 = !DILocation(line: 404, column: 21, scope: !980)
!1002 = !DILocation(line: 404, column: 24, scope: !980)
!1003 = !DILocation(line: 405, column: 28, scope: !980)
!1004 = !DILocation(line: 405, column: 32, scope: !980)
!1005 = !DILocation(line: 405, column: 37, scope: !980)
!1006 = !DILocation(line: 405, column: 43, scope: !980)
!1007 = !DILocation(line: 405, column: 46, scope: !980)
!1008 = !DILocation(line: 405, column: 31, scope: !980)
!1009 = !DILocation(line: 405, column: 48, scope: !980)
!1010 = !DILocation(line: 405, column: 7, scope: !980)
!1011 = !DILocation(line: 405, column: 12, scope: !980)
!1012 = !DILocation(line: 405, column: 18, scope: !980)
!1013 = !DILocation(line: 405, column: 21, scope: !980)
!1014 = !DILocation(line: 405, column: 26, scope: !980)
!1015 = !DILocation(line: 406, column: 14, scope: !980)
!1016 = !DILocation(line: 406, column: 19, scope: !980)
!1017 = !DILocation(line: 406, column: 25, scope: !980)
!1018 = !DILocation(line: 406, column: 28, scope: !980)
!1019 = !DILocation(line: 406, column: 30, scope: !980)
!1020 = !DILocation(line: 406, column: 11, scope: !980)
!1021 = !DILocation(line: 407, column: 7, scope: !980)
!1022 = !DILocation(line: 399, column: 39, scope: !973)
!1023 = !DILocation(line: 399, column: 6, scope: !973)
!1024 = distinct !{!1024, !978, !1025}
!1025 = !DILocation(line: 407, column: 7, scope: !970)
!1026 = !DILocation(line: 409, column: 6, scope: !899)
!1027 = !DILocation(line: 409, column: 11, scope: !899)
!1028 = !DILocation(line: 409, column: 27, scope: !899)
!1029 = !DILocation(line: 410, column: 6, scope: !899)
!1030 = !DILocation(line: 410, column: 11, scope: !899)
!1031 = !DILocation(line: 410, column: 17, scope: !899)
!1032 = !DILocation(line: 411, column: 17, scope: !899)
!1033 = !DILocation(line: 412, column: 6, scope: !899)
!1034 = !DILocation(line: 413, column: 5, scope: !867)
!1035 = !DILocation(line: 414, column: 4, scope: !854)
!1036 = !DILocation(line: 416, column: 10, scope: !849)
!1037 = !DILocation(line: 416, column: 3, scope: !849)
!1038 = !DILocation(line: 417, column: 3, scope: !849)
!1039 = !DILocation(line: 419, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !827, file: !3, line: 419, column: 6)
!1041 = !DILocation(line: 419, column: 6, scope: !827)
!1042 = !DILocation(line: 421, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 421, column: 7)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 420, column: 3)
!1045 = !DILocation(line: 421, column: 7, scope: !1044)
!1046 = !DILocation(line: 421, column: 26, scope: !1043)
!1047 = !DILocation(line: 421, column: 18, scope: !1043)
!1048 = !DILocation(line: 421, column: 13, scope: !1043)
!1049 = !DILocation(line: 422, column: 3, scope: !1044)
!1050 = !DILocation(line: 425, column: 22, scope: !827)
!1051 = !DILocation(line: 425, column: 9, scope: !827)
!1052 = !DILocation(line: 425, column: 2, scope: !827)
!1053 = !DILocation(line: 426, column: 1, scope: !827)
!1054 = distinct !DISubprogram(name: "midiFileFlushTrack", scope: !3, file: !3, line: 441, type: !1055, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!6, !9, !8, !6, !315}
!1057 = !DILocalVariable(name: "_pMF", arg: 1, scope: !1054, file: !3, line: 441, type: !9)
!1058 = !DILocation(line: 441, column: 36, scope: !1054)
!1059 = !DILocalVariable(name: "iTrack", arg: 2, scope: !1054, file: !3, line: 441, type: !8)
!1060 = !DILocation(line: 441, column: 46, scope: !1054)
!1061 = !DILocalVariable(name: "bFlushToEnd", arg: 3, scope: !1054, file: !3, line: 441, type: !6)
!1062 = !DILocation(line: 441, column: 59, scope: !1054)
!1063 = !DILocalVariable(name: "dwEndTimePos", arg: 4, scope: !1054, file: !3, line: 441, type: !315)
!1064 = !DILocation(line: 441, column: 78, scope: !1054)
!1065 = !DILocalVariable(name: "sz", scope: !1054, file: !3, line: 443, type: !8)
!1066 = !DILocation(line: 443, column: 5, scope: !1054)
!1067 = !DILocalVariable(name: "ptr", scope: !1054, file: !3, line: 444, type: !322)
!1068 = !DILocation(line: 444, column: 7, scope: !1054)
!1069 = !DILocalVariable(name: "pEndPoints", scope: !1054, file: !3, line: 445, type: !356)
!1070 = !DILocation(line: 445, column: 17, scope: !1054)
!1071 = !DILocalVariable(name: "num", scope: !1054, file: !3, line: 446, type: !8)
!1072 = !DILocation(line: 446, column: 5, scope: !1054)
!1073 = !DILocalVariable(name: "i", scope: !1054, file: !3, line: 446, type: !8)
!1074 = !DILocation(line: 446, column: 10, scope: !1054)
!1075 = !DILocalVariable(name: "mx_pts", scope: !1054, file: !3, line: 446, type: !8)
!1076 = !DILocation(line: 446, column: 13, scope: !1054)
!1077 = !DILocalVariable(name: "bNoChanges", scope: !1054, file: !3, line: 447, type: !6)
!1078 = !DILocation(line: 447, column: 6, scope: !1054)
!1079 = !DILocalVariable(name: "pMF", scope: !1054, file: !3, line: 449, type: !240)
!1080 = !DILocation(line: 449, column: 2, scope: !1054)
!1081 = !DILocation(line: 450, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 450, column: 6)
!1083 = !DILocation(line: 450, column: 6, scope: !1054)
!1084 = !DILocation(line: 450, column: 31, scope: !1082)
!1085 = !DILocation(line: 451, column: 26, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 451, column: 6)
!1087 = !DILocation(line: 451, column: 31, scope: !1086)
!1088 = !DILocation(line: 451, column: 7, scope: !1086)
!1089 = !DILocation(line: 451, column: 6, scope: !1054)
!1090 = !DILocation(line: 451, column: 40, scope: !1086)
!1091 = !DILocation(line: 452, column: 5, scope: !1054)
!1092 = !DILocation(line: 457, column: 40, scope: !1054)
!1093 = !DILocation(line: 457, column: 43, scope: !1054)
!1094 = !DILocation(line: 457, column: 33, scope: !1054)
!1095 = !DILocation(line: 457, column: 15, scope: !1054)
!1096 = !DILocation(line: 457, column: 13, scope: !1054)
!1097 = !DILocation(line: 458, column: 9, scope: !1054)
!1098 = !DILocation(line: 459, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 459, column: 2)
!1100 = !DILocation(line: 459, column: 6, scope: !1099)
!1101 = !DILocation(line: 459, column: 10, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 459, column: 2)
!1103 = !DILocation(line: 459, column: 12, scope: !1102)
!1104 = !DILocation(line: 459, column: 11, scope: !1102)
!1105 = !DILocation(line: 459, column: 2, scope: !1099)
!1106 = !DILocation(line: 460, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 460, column: 7)
!1108 = !DILocation(line: 460, column: 12, scope: !1107)
!1109 = !DILocation(line: 460, column: 18, scope: !1107)
!1110 = !DILocation(line: 460, column: 26, scope: !1107)
!1111 = !DILocation(line: 460, column: 35, scope: !1107)
!1112 = !DILocation(line: 460, column: 38, scope: !1107)
!1113 = !DILocation(line: 460, column: 7, scope: !1102)
!1114 = !DILocation(line: 462, column: 30, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 461, column: 4)
!1116 = !DILocation(line: 462, column: 4, scope: !1115)
!1117 = !DILocation(line: 462, column: 15, scope: !1115)
!1118 = !DILocation(line: 462, column: 23, scope: !1115)
!1119 = !DILocation(line: 462, column: 28, scope: !1115)
!1120 = !DILocation(line: 463, column: 33, scope: !1115)
!1121 = !DILocation(line: 463, column: 38, scope: !1115)
!1122 = !DILocation(line: 463, column: 44, scope: !1115)
!1123 = !DILocation(line: 463, column: 52, scope: !1115)
!1124 = !DILocation(line: 463, column: 61, scope: !1115)
!1125 = !DILocation(line: 463, column: 64, scope: !1115)
!1126 = !DILocation(line: 463, column: 4, scope: !1115)
!1127 = !DILocation(line: 463, column: 15, scope: !1115)
!1128 = !DILocation(line: 463, column: 23, scope: !1115)
!1129 = !DILocation(line: 463, column: 31, scope: !1115)
!1130 = !DILocation(line: 464, column: 10, scope: !1115)
!1131 = !DILocation(line: 465, column: 4, scope: !1115)
!1132 = !DILocation(line: 459, column: 15, scope: !1102)
!1133 = !DILocation(line: 459, column: 2, scope: !1102)
!1134 = distinct !{!1134, !1105, !1135}
!1135 = !DILocation(line: 465, column: 4, scope: !1099)
!1136 = !DILocation(line: 467, column: 6, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 467, column: 6)
!1138 = !DILocation(line: 467, column: 6, scope: !1054)
!1139 = !DILocation(line: 469, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 469, column: 7)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 468, column: 3)
!1142 = !DILocation(line: 469, column: 7, scope: !1141)
!1143 = !DILocation(line: 470, column: 19, scope: !1140)
!1144 = !DILocation(line: 470, column: 30, scope: !1140)
!1145 = !DILocation(line: 470, column: 36, scope: !1140)
!1146 = !DILocation(line: 470, column: 40, scope: !1140)
!1147 = !DILocation(line: 470, column: 17, scope: !1140)
!1148 = !DILocation(line: 470, column: 4, scope: !1140)
!1149 = !DILocation(line: 472, column: 19, scope: !1140)
!1150 = !DILocation(line: 472, column: 24, scope: !1140)
!1151 = !DILocation(line: 472, column: 30, scope: !1140)
!1152 = !DILocation(line: 472, column: 38, scope: !1140)
!1153 = !DILocation(line: 472, column: 17, scope: !1140)
!1154 = !DILocation(line: 473, column: 3, scope: !1141)
!1155 = !DILocation(line: 475, column: 6, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 475, column: 6)
!1157 = !DILocation(line: 475, column: 6, scope: !1054)
!1158 = !DILocation(line: 478, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 476, column: 3)
!1160 = !DILocation(line: 478, column: 21, scope: !1159)
!1161 = !DILocation(line: 478, column: 3, scope: !1159)
!1162 = !DILocation(line: 480, column: 5, scope: !1159)
!1163 = !DILocation(line: 481, column: 3, scope: !1159)
!1164 = !DILocation(line: 481, column: 11, scope: !1159)
!1165 = !DILocation(line: 481, column: 34, scope: !1159)
!1166 = !DILocation(line: 481, column: 45, scope: !1159)
!1167 = !DILocation(line: 481, column: 48, scope: !1159)
!1168 = !DILocation(line: 481, column: 24, scope: !1159)
!1169 = !DILocation(line: 481, column: 56, scope: !1159)
!1170 = !DILocation(line: 481, column: 59, scope: !1159)
!1171 = !DILocation(line: 481, column: 72, scope: !1159)
!1172 = !DILocation(line: 481, column: 75, scope: !1159)
!1173 = !DILocation(line: 481, column: 77, scope: !1159)
!1174 = !DILocation(line: 481, column: 76, scope: !1159)
!1175 = !DILocation(line: 483, column: 22, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 482, column: 4)
!1177 = !DILocation(line: 483, column: 27, scope: !1176)
!1178 = !DILocation(line: 483, column: 10, scope: !1176)
!1179 = !DILocation(line: 483, column: 8, scope: !1176)
!1180 = !DILocation(line: 484, column: 9, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 484, column: 8)
!1182 = !DILocation(line: 484, column: 8, scope: !1176)
!1183 = !DILocation(line: 485, column: 5, scope: !1181)
!1184 = !DILocation(line: 487, column: 10, scope: !1176)
!1185 = !DILocation(line: 487, column: 21, scope: !1176)
!1186 = !DILocation(line: 487, column: 24, scope: !1176)
!1187 = !DILocation(line: 487, column: 8, scope: !1176)
!1188 = !DILocation(line: 489, column: 27, scope: !1176)
!1189 = !DILocation(line: 489, column: 32, scope: !1176)
!1190 = !DILocation(line: 489, column: 37, scope: !1176)
!1191 = !DILocation(line: 489, column: 43, scope: !1176)
!1192 = !DILocation(line: 489, column: 51, scope: !1176)
!1193 = !DILocation(line: 489, column: 60, scope: !1176)
!1194 = !DILocation(line: 489, column: 65, scope: !1176)
!1195 = !DILocation(line: 489, column: 75, scope: !1176)
!1196 = !DILocation(line: 489, column: 80, scope: !1176)
!1197 = !DILocation(line: 489, column: 86, scope: !1176)
!1198 = !DILocation(line: 489, column: 94, scope: !1176)
!1199 = !DILocation(line: 489, column: 73, scope: !1176)
!1200 = !DILocation(line: 489, column: 10, scope: !1176)
!1201 = !DILocation(line: 489, column: 8, scope: !1176)
!1202 = !DILocation(line: 491, column: 33, scope: !1176)
!1203 = !DILocation(line: 491, column: 38, scope: !1176)
!1204 = !DILocation(line: 491, column: 44, scope: !1176)
!1205 = !DILocation(line: 491, column: 52, scope: !1176)
!1206 = !DILocation(line: 491, column: 61, scope: !1176)
!1207 = !DILocation(line: 491, column: 66, scope: !1176)
!1208 = !DILocation(line: 491, column: 31, scope: !1176)
!1209 = !DILocation(line: 491, column: 13, scope: !1176)
!1210 = !DILocation(line: 491, column: 8, scope: !1176)
!1211 = !DILocation(line: 491, column: 11, scope: !1176)
!1212 = !DILocation(line: 492, column: 13, scope: !1176)
!1213 = !DILocation(line: 492, column: 18, scope: !1176)
!1214 = !DILocation(line: 492, column: 24, scope: !1176)
!1215 = !DILocation(line: 492, column: 32, scope: !1176)
!1216 = !DILocation(line: 492, column: 41, scope: !1176)
!1217 = !DILocation(line: 492, column: 46, scope: !1176)
!1218 = !DILocation(line: 492, column: 8, scope: !1176)
!1219 = !DILocation(line: 492, column: 11, scope: !1176)
!1220 = !DILocation(line: 493, column: 8, scope: !1176)
!1221 = !DILocation(line: 493, column: 11, scope: !1176)
!1222 = !DILocation(line: 495, column: 4, scope: !1176)
!1223 = !DILocation(line: 495, column: 9, scope: !1176)
!1224 = !DILocation(line: 495, column: 15, scope: !1176)
!1225 = !DILocation(line: 495, column: 23, scope: !1176)
!1226 = !DILocation(line: 495, column: 32, scope: !1176)
!1227 = !DILocation(line: 495, column: 37, scope: !1176)
!1228 = !DILocation(line: 495, column: 43, scope: !1176)
!1229 = !DILocation(line: 496, column: 29, scope: !1176)
!1230 = !DILocation(line: 496, column: 34, scope: !1176)
!1231 = !DILocation(line: 496, column: 40, scope: !1176)
!1232 = !DILocation(line: 496, column: 48, scope: !1176)
!1233 = !DILocation(line: 496, column: 57, scope: !1176)
!1234 = !DILocation(line: 496, column: 62, scope: !1176)
!1235 = !DILocation(line: 496, column: 4, scope: !1176)
!1236 = !DILocation(line: 496, column: 9, scope: !1176)
!1237 = !DILocation(line: 496, column: 15, scope: !1176)
!1238 = !DILocation(line: 496, column: 23, scope: !1176)
!1239 = !DILocation(line: 496, column: 27, scope: !1176)
!1240 = !DILocation(line: 498, column: 29, scope: !1176)
!1241 = !DILocation(line: 498, column: 4, scope: !1176)
!1242 = !DILocation(line: 498, column: 9, scope: !1176)
!1243 = !DILocation(line: 498, column: 15, scope: !1176)
!1244 = !DILocation(line: 498, column: 23, scope: !1176)
!1245 = !DILocation(line: 498, column: 27, scope: !1176)
!1246 = !DILocation(line: 500, column: 4, scope: !1176)
!1247 = !DILocation(line: 501, column: 15, scope: !1176)
!1248 = distinct !{!1248, !1163, !1249}
!1249 = !DILocation(line: 502, column: 4, scope: !1159)
!1250 = !DILocation(line: 503, column: 3, scope: !1159)
!1251 = !DILocation(line: 505, column: 15, scope: !1054)
!1252 = !DILocation(line: 505, column: 7, scope: !1054)
!1253 = !DILocation(line: 505, column: 2, scope: !1054)
!1254 = !DILocation(line: 509, column: 26, scope: !1054)
!1255 = !DILocation(line: 509, column: 41, scope: !1054)
!1256 = !DILocation(line: 509, column: 46, scope: !1054)
!1257 = !DILocation(line: 509, column: 52, scope: !1054)
!1258 = !DILocation(line: 509, column: 60, scope: !1054)
!1259 = !DILocation(line: 509, column: 39, scope: !1054)
!1260 = !DILocation(line: 509, column: 2, scope: !1054)
!1261 = !DILocation(line: 509, column: 7, scope: !1054)
!1262 = !DILocation(line: 509, column: 13, scope: !1054)
!1263 = !DILocation(line: 509, column: 21, scope: !1054)
!1264 = !DILocation(line: 509, column: 24, scope: !1054)
!1265 = !DILocation(line: 511, column: 2, scope: !1054)
!1266 = !DILocation(line: 512, column: 1, scope: !1054)
!1267 = distinct !DISubprogram(name: "qs_cmp_pEndPoints", scope: !3, file: !3, line: 433, type: !1268, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!8, !1270, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1272 = !DILocalVariable(name: "e1", arg: 1, scope: !1267, file: !3, line: 433, type: !1270)
!1273 = !DILocation(line: 433, column: 42, scope: !1267)
!1274 = !DILocalVariable(name: "e2", arg: 2, scope: !1267, file: !3, line: 433, type: !1270)
!1275 = !DILocation(line: 433, column: 58, scope: !1267)
!1276 = !DILocalVariable(name: "p1", scope: !1267, file: !3, line: 435, type: !356)
!1277 = !DILocation(line: 435, column: 17, scope: !1267)
!1278 = !DILocation(line: 435, column: 40, scope: !1267)
!1279 = !DILocation(line: 435, column: 22, scope: !1267)
!1280 = !DILocalVariable(name: "p2", scope: !1267, file: !3, line: 436, type: !356)
!1281 = !DILocation(line: 436, column: 17, scope: !1267)
!1282 = !DILocation(line: 436, column: 40, scope: !1267)
!1283 = !DILocation(line: 436, column: 22, scope: !1267)
!1284 = !DILocation(line: 438, column: 9, scope: !1267)
!1285 = !DILocation(line: 438, column: 13, scope: !1267)
!1286 = !DILocation(line: 438, column: 21, scope: !1267)
!1287 = !DILocation(line: 438, column: 25, scope: !1267)
!1288 = !DILocation(line: 438, column: 20, scope: !1267)
!1289 = !DILocation(line: 438, column: 2, scope: !1267)
!1290 = distinct !DISubprogram(name: "_midiGetPtr", scope: !3, file: !3, line: 142, type: !1291, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!322, !240, !8, !8}
!1293 = !DILocalVariable(name: "pMF", arg: 1, scope: !1290, file: !3, line: 142, type: !240)
!1294 = !DILocation(line: 142, column: 38, scope: !1290)
!1295 = !DILocalVariable(name: "iTrack", arg: 2, scope: !1290, file: !3, line: 142, type: !8)
!1296 = !DILocation(line: 142, column: 47, scope: !1290)
!1297 = !DILocalVariable(name: "sz_reqd", arg: 3, scope: !1290, file: !3, line: 142, type: !8)
!1298 = !DILocation(line: 142, column: 59, scope: !1290)
!1299 = !DILocalVariable(name: "mem_sz_inc", scope: !1290, file: !3, line: 144, type: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!1301 = !DILocation(line: 144, column: 13, scope: !1290)
!1302 = !DILocalVariable(name: "ptr", scope: !1290, file: !3, line: 145, type: !322)
!1303 = !DILocation(line: 145, column: 7, scope: !1290)
!1304 = !DILocalVariable(name: "curr_offset", scope: !1290, file: !3, line: 146, type: !8)
!1305 = !DILocation(line: 146, column: 5, scope: !1290)
!1306 = !DILocalVariable(name: "pTrack", scope: !1290, file: !3, line: 147, type: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 32)
!1308 = !DILocation(line: 147, column: 18, scope: !1290)
!1309 = !DILocation(line: 147, column: 28, scope: !1290)
!1310 = !DILocation(line: 147, column: 33, scope: !1290)
!1311 = !DILocation(line: 147, column: 39, scope: !1290)
!1312 = !DILocation(line: 149, column: 8, scope: !1290)
!1313 = !DILocation(line: 149, column: 16, scope: !1290)
!1314 = !DILocation(line: 149, column: 6, scope: !1290)
!1315 = !DILocation(line: 150, column: 6, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 150, column: 6)
!1317 = !DILocation(line: 150, column: 10, scope: !1316)
!1318 = !DILocation(line: 150, column: 18, scope: !1316)
!1319 = !DILocation(line: 150, column: 21, scope: !1316)
!1320 = !DILocation(line: 150, column: 25, scope: !1316)
!1321 = !DILocation(line: 150, column: 24, scope: !1316)
!1322 = !DILocation(line: 150, column: 35, scope: !1316)
!1323 = !DILocation(line: 150, column: 43, scope: !1316)
!1324 = !DILocation(line: 150, column: 33, scope: !1316)
!1325 = !DILocation(line: 150, column: 6, scope: !1290)
!1326 = !DILocation(line: 152, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 151, column: 3)
!1328 = !DILocation(line: 152, column: 21, scope: !1327)
!1329 = !DILocation(line: 152, column: 29, scope: !1327)
!1330 = !DILocation(line: 152, column: 20, scope: !1327)
!1331 = !DILocation(line: 152, column: 15, scope: !1327)
!1332 = !DILocation(line: 153, column: 30, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 153, column: 7)
!1334 = !DILocation(line: 153, column: 38, scope: !1333)
!1335 = !DILocation(line: 153, column: 56, scope: !1333)
!1336 = !DILocation(line: 153, column: 64, scope: !1333)
!1337 = !DILocation(line: 153, column: 55, scope: !1333)
!1338 = !DILocation(line: 153, column: 22, scope: !1333)
!1339 = !DILocation(line: 153, column: 12, scope: !1333)
!1340 = !DILocation(line: 153, column: 7, scope: !1327)
!1341 = !DILocation(line: 155, column: 20, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 154, column: 4)
!1343 = !DILocation(line: 155, column: 4, scope: !1342)
!1344 = !DILocation(line: 155, column: 12, scope: !1342)
!1345 = !DILocation(line: 155, column: 18, scope: !1342)
!1346 = !DILocation(line: 156, column: 4, scope: !1342)
!1347 = !DILocation(line: 156, column: 12, scope: !1342)
!1348 = !DILocation(line: 156, column: 23, scope: !1342)
!1349 = !DILocation(line: 157, column: 19, scope: !1342)
!1350 = !DILocation(line: 157, column: 23, scope: !1342)
!1351 = !DILocation(line: 157, column: 31, scope: !1342)
!1352 = !DILocation(line: 157, column: 22, scope: !1342)
!1353 = !DILocation(line: 157, column: 4, scope: !1342)
!1354 = !DILocation(line: 157, column: 12, scope: !1342)
!1355 = !DILocation(line: 157, column: 17, scope: !1342)
!1356 = !DILocation(line: 159, column: 18, scope: !1342)
!1357 = !DILocation(line: 159, column: 22, scope: !1342)
!1358 = !DILocation(line: 159, column: 21, scope: !1342)
!1359 = !DILocation(line: 159, column: 4, scope: !1342)
!1360 = !DILocation(line: 159, column: 12, scope: !1342)
!1361 = !DILocation(line: 159, column: 16, scope: !1342)
!1362 = !DILocation(line: 160, column: 11, scope: !1342)
!1363 = !DILocation(line: 160, column: 8, scope: !1342)
!1364 = !DILocation(line: 161, column: 4, scope: !1342)
!1365 = !DILocation(line: 165, column: 4, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 163, column: 4)
!1367 = !DILocation(line: 167, column: 3, scope: !1327)
!1368 = !DILocation(line: 169, column: 9, scope: !1290)
!1369 = !DILocation(line: 169, column: 2, scope: !1290)
!1370 = !DILocation(line: 170, column: 1, scope: !1290)
!1371 = distinct !DISubprogram(name: "_midiWriteVarLen", scope: !3, file: !3, line: 114, type: !1372, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!322, !322, !8}
!1374 = !DILocalVariable(name: "ptr", arg: 1, scope: !1371, file: !3, line: 114, type: !322)
!1375 = !DILocation(line: 114, column: 37, scope: !1371)
!1376 = !DILocalVariable(name: "n", arg: 2, scope: !1371, file: !3, line: 114, type: !8)
!1377 = !DILocation(line: 114, column: 46, scope: !1371)
!1378 = !DILocalVariable(name: "buffer", scope: !1371, file: !3, line: 116, type: !279)
!1379 = !DILocation(line: 116, column: 15, scope: !1371)
!1380 = !DILocalVariable(name: "value", scope: !1371, file: !3, line: 117, type: !279)
!1381 = !DILocation(line: 117, column: 15, scope: !1371)
!1382 = !DILocation(line: 117, column: 21, scope: !1371)
!1383 = !DILocation(line: 119, column: 11, scope: !1371)
!1384 = !DILocation(line: 119, column: 17, scope: !1371)
!1385 = !DILocation(line: 119, column: 9, scope: !1371)
!1386 = !DILocation(line: 120, column: 2, scope: !1371)
!1387 = !DILocation(line: 120, column: 16, scope: !1371)
!1388 = !DILocation(line: 120, column: 23, scope: !1371)
!1389 = !DILocation(line: 122, column: 10, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 121, column: 3)
!1391 = !DILocation(line: 123, column: 10, scope: !1390)
!1392 = !DILocation(line: 124, column: 14, scope: !1390)
!1393 = !DILocation(line: 124, column: 20, scope: !1390)
!1394 = !DILocation(line: 124, column: 10, scope: !1390)
!1395 = distinct !{!1395, !1386, !1396}
!1396 = !DILocation(line: 125, column: 3, scope: !1371)
!1397 = !DILocation(line: 127, column: 2, scope: !1371)
!1398 = !DILocation(line: 129, column: 18, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 128, column: 3)
!1400 = !DILocation(line: 129, column: 12, scope: !1399)
!1401 = !DILocation(line: 129, column: 7, scope: !1399)
!1402 = !DILocation(line: 129, column: 10, scope: !1399)
!1403 = !DILocation(line: 130, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 130, column: 7)
!1405 = !DILocation(line: 130, column: 14, scope: !1404)
!1406 = !DILocation(line: 130, column: 7, scope: !1399)
!1407 = !DILocation(line: 131, column: 11, scope: !1404)
!1408 = !DILocation(line: 131, column: 4, scope: !1404)
!1409 = !DILocation(line: 133, column: 4, scope: !1404)
!1410 = distinct !{!1410, !1397, !1411}
!1411 = !DILocation(line: 134, column: 3, scope: !1371)
!1412 = !DILocation(line: 136, column: 9, scope: !1371)
!1413 = !DILocation(line: 136, column: 2, scope: !1371)
!1414 = distinct !DISubprogram(name: "midiFileSyncTracks", scope: !3, file: !3, line: 514, type: !401, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!1415 = !DILocalVariable(name: "_pMF", arg: 1, scope: !1414, file: !3, line: 514, type: !9)
!1416 = !DILocation(line: 514, column: 36, scope: !1414)
!1417 = !DILocalVariable(name: "iTrack1", arg: 2, scope: !1414, file: !3, line: 514, type: !8)
!1418 = !DILocation(line: 514, column: 46, scope: !1414)
!1419 = !DILocalVariable(name: "iTrack2", arg: 3, scope: !1414, file: !3, line: 514, type: !8)
!1420 = !DILocation(line: 514, column: 59, scope: !1414)
!1421 = !DILocalVariable(name: "p1", scope: !1414, file: !3, line: 516, type: !8)
!1422 = !DILocation(line: 516, column: 5, scope: !1414)
!1423 = !DILocalVariable(name: "p2", scope: !1414, file: !3, line: 516, type: !8)
!1424 = !DILocation(line: 516, column: 9, scope: !1414)
!1425 = !DILocalVariable(name: "pMF", scope: !1414, file: !3, line: 518, type: !240)
!1426 = !DILocation(line: 518, column: 2, scope: !1414)
!1427 = !DILocation(line: 519, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 519, column: 6)
!1429 = !DILocation(line: 519, column: 6, scope: !1414)
!1430 = !DILocation(line: 519, column: 30, scope: !1428)
!1431 = !DILocation(line: 520, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 520, column: 6)
!1433 = !DILocation(line: 520, column: 6, scope: !1414)
!1434 = !DILocation(line: 520, column: 32, scope: !1432)
!1435 = !DILocation(line: 521, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 521, column: 6)
!1437 = !DILocation(line: 521, column: 6, scope: !1414)
!1438 = !DILocation(line: 521, column: 32, scope: !1436)
!1439 = !DILocation(line: 523, column: 7, scope: !1414)
!1440 = !DILocation(line: 523, column: 12, scope: !1414)
!1441 = !DILocation(line: 523, column: 18, scope: !1414)
!1442 = !DILocation(line: 523, column: 27, scope: !1414)
!1443 = !DILocation(line: 523, column: 33, scope: !1414)
!1444 = !DILocation(line: 523, column: 38, scope: !1414)
!1445 = !DILocation(line: 523, column: 44, scope: !1414)
!1446 = !DILocation(line: 523, column: 53, scope: !1414)
!1447 = !DILocation(line: 523, column: 31, scope: !1414)
!1448 = !DILocation(line: 523, column: 5, scope: !1414)
!1449 = !DILocation(line: 524, column: 7, scope: !1414)
!1450 = !DILocation(line: 524, column: 12, scope: !1414)
!1451 = !DILocation(line: 524, column: 18, scope: !1414)
!1452 = !DILocation(line: 524, column: 27, scope: !1414)
!1453 = !DILocation(line: 524, column: 33, scope: !1414)
!1454 = !DILocation(line: 524, column: 38, scope: !1414)
!1455 = !DILocation(line: 524, column: 44, scope: !1414)
!1456 = !DILocation(line: 524, column: 53, scope: !1414)
!1457 = !DILocation(line: 524, column: 31, scope: !1414)
!1458 = !DILocation(line: 524, column: 5, scope: !1414)
!1459 = !DILocation(line: 526, column: 6, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 526, column: 6)
!1461 = !DILocation(line: 526, column: 11, scope: !1460)
!1462 = !DILocation(line: 526, column: 9, scope: !1460)
!1463 = !DILocation(line: 526, column: 6, scope: !1414)
!1464 = !DILocation(line: 526, column: 33, scope: !1460)
!1465 = !DILocation(line: 526, column: 38, scope: !1460)
!1466 = !DILocation(line: 526, column: 47, scope: !1460)
!1467 = !DILocation(line: 526, column: 50, scope: !1460)
!1468 = !DILocation(line: 526, column: 49, scope: !1460)
!1469 = !DILocation(line: 526, column: 16, scope: !1460)
!1470 = !DILocation(line: 527, column: 11, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 527, column: 11)
!1472 = !DILocation(line: 527, column: 16, scope: !1471)
!1473 = !DILocation(line: 527, column: 14, scope: !1471)
!1474 = !DILocation(line: 527, column: 11, scope: !1460)
!1475 = !DILocation(line: 527, column: 37, scope: !1471)
!1476 = !DILocation(line: 527, column: 42, scope: !1471)
!1477 = !DILocation(line: 527, column: 51, scope: !1471)
!1478 = !DILocation(line: 527, column: 54, scope: !1471)
!1479 = !DILocation(line: 527, column: 53, scope: !1471)
!1480 = !DILocation(line: 527, column: 20, scope: !1471)
!1481 = !DILocation(line: 529, column: 2, scope: !1414)
!1482 = !DILocation(line: 530, column: 1, scope: !1414)
!1483 = distinct !DISubprogram(name: "midiTrackIncTime", scope: !3, file: !3, line: 744, type: !1484, isLocal: false, isDefinition: true, scopeLine: 745, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!6, !9, !8, !8, !6}
!1486 = !DILocalVariable(name: "_pMF", arg: 1, scope: !1483, file: !3, line: 744, type: !9)
!1487 = !DILocation(line: 744, column: 34, scope: !1483)
!1488 = !DILocalVariable(name: "iTrack", arg: 2, scope: !1483, file: !3, line: 744, type: !8)
!1489 = !DILocation(line: 744, column: 44, scope: !1483)
!1490 = !DILocalVariable(name: "iDeltaTime", arg: 3, scope: !1483, file: !3, line: 744, type: !8)
!1491 = !DILocation(line: 744, column: 56, scope: !1483)
!1492 = !DILocalVariable(name: "bOverridePPQN", arg: 4, scope: !1483, file: !3, line: 744, type: !6)
!1493 = !DILocation(line: 744, column: 73, scope: !1483)
!1494 = !DILocalVariable(name: "will_end_at", scope: !1483, file: !3, line: 746, type: !315)
!1495 = !DILocation(line: 746, column: 7, scope: !1483)
!1496 = !DILocalVariable(name: "pMF", scope: !1483, file: !3, line: 748, type: !240)
!1497 = !DILocation(line: 748, column: 2, scope: !1483)
!1498 = !DILocation(line: 749, column: 7, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 749, column: 6)
!1500 = !DILocation(line: 749, column: 6, scope: !1483)
!1501 = !DILocation(line: 749, column: 31, scope: !1499)
!1502 = !DILocation(line: 750, column: 7, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 750, column: 6)
!1504 = !DILocation(line: 750, column: 6, scope: !1483)
!1505 = !DILocation(line: 750, column: 32, scope: !1503)
!1506 = !DILocation(line: 752, column: 31, scope: !1483)
!1507 = !DILocation(line: 752, column: 36, scope: !1483)
!1508 = !DILocation(line: 752, column: 43, scope: !1483)
!1509 = !DILocation(line: 752, column: 49, scope: !1483)
!1510 = !DILocation(line: 752, column: 61, scope: !1483)
!1511 = !DILocation(line: 752, column: 16, scope: !1483)
!1512 = !DILocation(line: 752, column: 14, scope: !1483)
!1513 = !DILocation(line: 753, column: 17, scope: !1483)
!1514 = !DILocation(line: 753, column: 22, scope: !1483)
!1515 = !DILocation(line: 753, column: 28, scope: !1483)
!1516 = !DILocation(line: 753, column: 36, scope: !1483)
!1517 = !DILocation(line: 753, column: 42, scope: !1483)
!1518 = !DILocation(line: 753, column: 47, scope: !1483)
!1519 = !DILocation(line: 753, column: 53, scope: !1483)
!1520 = !DILocation(line: 753, column: 61, scope: !1483)
!1521 = !DILocation(line: 753, column: 40, scope: !1483)
!1522 = !DILocation(line: 753, column: 14, scope: !1483)
!1523 = !DILocation(line: 755, column: 21, scope: !1483)
!1524 = !DILocation(line: 755, column: 26, scope: !1483)
!1525 = !DILocation(line: 755, column: 41, scope: !1483)
!1526 = !DILocation(line: 755, column: 2, scope: !1483)
!1527 = !DILocation(line: 757, column: 2, scope: !1483)
!1528 = !DILocation(line: 758, column: 1, scope: !1483)
!1529 = distinct !DISubprogram(name: "_midiGetLength", scope: !3, file: !3, line: 173, type: !1530, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!8, !8, !8, !6}
!1532 = !DILocalVariable(name: "ppqn", arg: 1, scope: !1529, file: !3, line: 173, type: !8)
!1533 = !DILocation(line: 173, column: 31, scope: !1529)
!1534 = !DILocalVariable(name: "iNoteLen", arg: 2, scope: !1529, file: !3, line: 173, type: !8)
!1535 = !DILocation(line: 173, column: 41, scope: !1529)
!1536 = !DILocalVariable(name: "bOverride", arg: 3, scope: !1529, file: !3, line: 173, type: !6)
!1537 = !DILocation(line: 173, column: 56, scope: !1529)
!1538 = !DILocalVariable(name: "length", scope: !1529, file: !3, line: 175, type: !8)
!1539 = !DILocation(line: 175, column: 5, scope: !1529)
!1540 = !DILocation(line: 175, column: 14, scope: !1529)
!1541 = !DILocation(line: 177, column: 6, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 177, column: 6)
!1543 = !DILocation(line: 177, column: 6, scope: !1529)
!1544 = !DILocation(line: 179, column: 12, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 178, column: 3)
!1546 = !DILocation(line: 179, column: 10, scope: !1545)
!1547 = !DILocation(line: 180, column: 3, scope: !1545)
!1548 = !DILocation(line: 183, column: 10, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 182, column: 3)
!1550 = !DILocation(line: 183, column: 3, scope: !1549)
!1551 = !DILocation(line: 186, column: 14, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 184, column: 4)
!1553 = !DILocation(line: 187, column: 7, scope: !1552)
!1554 = !DILocation(line: 190, column: 14, scope: !1552)
!1555 = !DILocation(line: 191, column: 14, scope: !1552)
!1556 = !DILocation(line: 192, column: 7, scope: !1552)
!1557 = !DILocation(line: 195, column: 14, scope: !1552)
!1558 = !DILocation(line: 196, column: 14, scope: !1552)
!1559 = !DILocation(line: 197, column: 7, scope: !1552)
!1560 = !DILocation(line: 200, column: 14, scope: !1552)
!1561 = !DILocation(line: 201, column: 14, scope: !1552)
!1562 = !DILocation(line: 202, column: 7, scope: !1552)
!1563 = !DILocation(line: 205, column: 14, scope: !1552)
!1564 = !DILocation(line: 206, column: 14, scope: !1552)
!1565 = !DILocation(line: 207, column: 7, scope: !1552)
!1566 = !DILocation(line: 210, column: 14, scope: !1552)
!1567 = !DILocation(line: 211, column: 7, scope: !1552)
!1568 = !DILocation(line: 214, column: 14, scope: !1552)
!1569 = !DILocation(line: 215, column: 7, scope: !1552)
!1570 = !DILocation(line: 218, column: 14, scope: !1552)
!1571 = !DILocation(line: 219, column: 7, scope: !1552)
!1572 = !DILocation(line: 222, column: 14, scope: !1552)
!1573 = !DILocation(line: 223, column: 7, scope: !1552)
!1574 = !DILocation(line: 226, column: 14, scope: !1552)
!1575 = !DILocation(line: 227, column: 7, scope: !1552)
!1576 = !DILocation(line: 230, column: 14, scope: !1552)
!1577 = !DILocation(line: 231, column: 14, scope: !1552)
!1578 = !DILocation(line: 232, column: 7, scope: !1552)
!1579 = !DILocation(line: 236, column: 9, scope: !1529)
!1580 = !DILocation(line: 236, column: 2, scope: !1529)
!1581 = !DILocalVariable(name: "_pMF", arg: 1, scope: !2, file: !3, line: 533, type: !9)
!1582 = !DILocation(line: 533, column: 31, scope: !2)
!1583 = !DILocalVariable(name: "pMF", scope: !2, file: !3, line: 535, type: !240)
!1584 = !DILocation(line: 535, column: 2, scope: !2)
!1585 = !DILocation(line: 536, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !2, file: !3, line: 536, column: 6)
!1587 = !DILocation(line: 536, column: 6, scope: !2)
!1588 = !DILocation(line: 536, column: 30, scope: !1586)
!1589 = !DILocation(line: 538, column: 6, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !2, file: !3, line: 538, column: 6)
!1591 = !DILocation(line: 538, column: 11, scope: !1590)
!1592 = !DILocation(line: 538, column: 6, scope: !2)
!1593 = !DILocalVariable(name: "iNumTracks", scope: !1594, file: !3, line: 540, type: !318)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 539, column: 3)
!1595 = !DILocation(line: 540, column: 8, scope: !1594)
!1596 = !DILocalVariable(name: "wTest", scope: !1594, file: !3, line: 541, type: !318)
!1597 = !DILocation(line: 541, column: 8, scope: !1594)
!1598 = !DILocalVariable(name: "bSwap", scope: !1594, file: !3, line: 542, type: !6)
!1599 = !DILocation(line: 542, column: 8, scope: !1594)
!1600 = !DILocalVariable(name: "i", scope: !1594, file: !3, line: 543, type: !8)
!1601 = !DILocation(line: 543, column: 7, scope: !1594)
!1602 = !DILocation(line: 546, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 546, column: 7)
!1604 = !DILocation(line: 546, column: 25, scope: !1603)
!1605 = !DILocation(line: 546, column: 7, scope: !1594)
!1606 = !DILocation(line: 547, column: 10, scope: !1603)
!1607 = !DILocation(line: 547, column: 4, scope: !1603)
!1608 = !DILocation(line: 550, column: 8, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 550, column: 3)
!1610 = !DILocation(line: 550, column: 7, scope: !1609)
!1611 = !DILocation(line: 550, column: 11, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 550, column: 3)
!1613 = !DILocation(line: 550, column: 12, scope: !1612)
!1614 = !DILocation(line: 550, column: 3, scope: !1609)
!1615 = !DILocation(line: 552, column: 8, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 552, column: 8)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 551, column: 4)
!1618 = !DILocation(line: 552, column: 13, scope: !1616)
!1619 = !DILocation(line: 552, column: 19, scope: !1616)
!1620 = !DILocation(line: 552, column: 22, scope: !1616)
!1621 = !DILocation(line: 552, column: 8, scope: !1617)
!1622 = !DILocation(line: 554, column: 28, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 553, column: 5)
!1624 = !DILocation(line: 554, column: 33, scope: !1623)
!1625 = !DILocation(line: 554, column: 5, scope: !1623)
!1626 = !DILocation(line: 555, column: 24, scope: !1623)
!1627 = !DILocation(line: 555, column: 29, scope: !1623)
!1628 = !DILocation(line: 555, column: 5, scope: !1623)
!1629 = !DILocation(line: 556, column: 15, scope: !1623)
!1630 = !DILocation(line: 557, column: 5, scope: !1623)
!1631 = !DILocation(line: 558, column: 4, scope: !1617)
!1632 = !DILocation(line: 550, column: 29, scope: !1612)
!1633 = !DILocation(line: 550, column: 3, scope: !1612)
!1634 = distinct !{!1634, !1614, !1635}
!1635 = !DILocation(line: 558, column: 4, scope: !1609)
!1636 = !DILocalVariable(name: "dwData", scope: !1637, file: !3, line: 564, type: !315)
!1637 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 562, column: 3)
!1638 = !DILocation(line: 564, column: 9, scope: !1637)
!1639 = !DILocalVariable(name: "wData", scope: !1637, file: !3, line: 565, type: !318)
!1640 = !DILocation(line: 565, column: 8, scope: !1637)
!1641 = !DILocalVariable(name: "version", scope: !1637, file: !3, line: 566, type: !318)
!1642 = !DILocation(line: 566, column: 8, scope: !1637)
!1643 = !DILocalVariable(name: "PPQN", scope: !1637, file: !3, line: 566, type: !318)
!1644 = !DILocation(line: 566, column: 17, scope: !1637)
!1645 = !DILocation(line: 568, column: 34, scope: !1637)
!1646 = !DILocation(line: 568, column: 39, scope: !1637)
!1647 = !DILocation(line: 568, column: 4, scope: !1637)
!1648 = !DILocation(line: 569, column: 11, scope: !1637)
!1649 = !DILocation(line: 570, column: 8, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 570, column: 8)
!1651 = !DILocation(line: 570, column: 8, scope: !1637)
!1652 = !DILocation(line: 570, column: 24, scope: !1650)
!1653 = !DILocation(line: 570, column: 22, scope: !1650)
!1654 = !DILocation(line: 570, column: 15, scope: !1650)
!1655 = !DILocation(line: 571, column: 11, scope: !1637)
!1656 = !DILocation(line: 571, column: 38, scope: !1637)
!1657 = !DILocation(line: 571, column: 43, scope: !1637)
!1658 = !DILocation(line: 571, column: 4, scope: !1637)
!1659 = !DILocation(line: 573, column: 19, scope: !1637)
!1660 = !DILocation(line: 573, column: 29, scope: !1637)
!1661 = !DILocation(line: 573, column: 33, scope: !1637)
!1662 = !DILocation(line: 573, column: 38, scope: !1637)
!1663 = !DILocation(line: 573, column: 45, scope: !1637)
!1664 = !DILocation(line: 573, column: 12, scope: !1637)
!1665 = !DILocation(line: 573, column: 10, scope: !1637)
!1666 = !DILocation(line: 574, column: 8, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 574, column: 8)
!1668 = !DILocation(line: 574, column: 8, scope: !1637)
!1669 = !DILocation(line: 574, column: 25, scope: !1667)
!1670 = !DILocation(line: 574, column: 23, scope: !1667)
!1671 = !DILocation(line: 574, column: 15, scope: !1667)
!1672 = !DILocation(line: 574, column: 64, scope: !1667)
!1673 = !DILocation(line: 574, column: 56, scope: !1667)
!1674 = !DILocation(line: 575, column: 8, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 575, column: 8)
!1676 = !DILocation(line: 575, column: 8, scope: !1637)
!1677 = !DILocation(line: 575, column: 28, scope: !1675)
!1678 = !DILocation(line: 575, column: 26, scope: !1675)
!1679 = !DILocation(line: 575, column: 15, scope: !1675)
!1680 = !DILocation(line: 576, column: 12, scope: !1637)
!1681 = !DILocation(line: 576, column: 17, scope: !1637)
!1682 = !DILocation(line: 576, column: 24, scope: !1637)
!1683 = !DILocation(line: 576, column: 10, scope: !1637)
!1684 = !DILocation(line: 577, column: 8, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 577, column: 8)
!1686 = !DILocation(line: 577, column: 8, scope: !1637)
!1687 = !DILocation(line: 577, column: 22, scope: !1685)
!1688 = !DILocation(line: 577, column: 20, scope: !1685)
!1689 = !DILocation(line: 577, column: 15, scope: !1685)
!1690 = !DILocation(line: 577, column: 52, scope: !1685)
!1691 = !DILocation(line: 577, column: 50, scope: !1685)
!1692 = !DILocation(line: 578, column: 11, scope: !1637)
!1693 = !DILocation(line: 578, column: 38, scope: !1637)
!1694 = !DILocation(line: 578, column: 43, scope: !1637)
!1695 = !DILocation(line: 578, column: 4, scope: !1637)
!1696 = !DILocation(line: 579, column: 11, scope: !1637)
!1697 = !DILocation(line: 579, column: 41, scope: !1637)
!1698 = !DILocation(line: 579, column: 46, scope: !1637)
!1699 = !DILocation(line: 579, column: 4, scope: !1637)
!1700 = !DILocation(line: 580, column: 11, scope: !1637)
!1701 = !DILocation(line: 580, column: 35, scope: !1637)
!1702 = !DILocation(line: 580, column: 40, scope: !1637)
!1703 = !DILocation(line: 580, column: 4, scope: !1637)
!1704 = !DILocation(line: 585, column: 8, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 585, column: 3)
!1706 = !DILocation(line: 585, column: 7, scope: !1705)
!1707 = !DILocation(line: 585, column: 11, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 585, column: 3)
!1709 = !DILocation(line: 585, column: 12, scope: !1708)
!1710 = !DILocation(line: 585, column: 3, scope: !1705)
!1711 = !DILocation(line: 586, column: 8, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 586, column: 8)
!1713 = !DILocation(line: 586, column: 13, scope: !1712)
!1714 = !DILocation(line: 586, column: 19, scope: !1712)
!1715 = !DILocation(line: 586, column: 22, scope: !1712)
!1716 = !DILocation(line: 586, column: 8, scope: !1708)
!1717 = !DILocalVariable(name: "sz", scope: !1718, file: !3, line: 589, type: !315)
!1718 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 587, column: 5)
!1719 = !DILocation(line: 589, column: 11, scope: !1718)
!1720 = !DILocalVariable(name: "dwData", scope: !1718, file: !3, line: 589, type: !315)
!1721 = !DILocation(line: 589, column: 15, scope: !1718)
!1722 = !DILocation(line: 592, column: 36, scope: !1718)
!1723 = !DILocation(line: 592, column: 41, scope: !1718)
!1724 = !DILocation(line: 592, column: 5, scope: !1718)
!1725 = !DILocation(line: 595, column: 25, scope: !1718)
!1726 = !DILocation(line: 595, column: 30, scope: !1718)
!1727 = !DILocation(line: 595, column: 36, scope: !1718)
!1728 = !DILocation(line: 595, column: 39, scope: !1718)
!1729 = !DILocation(line: 595, column: 45, scope: !1718)
!1730 = !DILocation(line: 595, column: 50, scope: !1718)
!1731 = !DILocation(line: 595, column: 56, scope: !1718)
!1732 = !DILocation(line: 595, column: 59, scope: !1718)
!1733 = !DILocation(line: 595, column: 43, scope: !1718)
!1734 = !DILocation(line: 595, column: 17, scope: !1718)
!1735 = !DILocation(line: 595, column: 8, scope: !1718)
!1736 = !DILocation(line: 596, column: 9, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 596, column: 9)
!1738 = !DILocation(line: 596, column: 9, scope: !1718)
!1739 = !DILocation(line: 596, column: 21, scope: !1737)
!1740 = !DILocation(line: 596, column: 19, scope: !1737)
!1741 = !DILocation(line: 596, column: 16, scope: !1737)
!1742 = !DILocation(line: 597, column: 12, scope: !1718)
!1743 = !DILocation(line: 597, column: 35, scope: !1718)
!1744 = !DILocation(line: 597, column: 40, scope: !1718)
!1745 = !DILocation(line: 597, column: 5, scope: !1718)
!1746 = !DILocation(line: 600, column: 12, scope: !1718)
!1747 = !DILocation(line: 600, column: 17, scope: !1718)
!1748 = !DILocation(line: 600, column: 23, scope: !1718)
!1749 = !DILocation(line: 600, column: 26, scope: !1718)
!1750 = !DILocation(line: 600, column: 47, scope: !1718)
!1751 = !DILocation(line: 600, column: 55, scope: !1718)
!1752 = !DILocation(line: 600, column: 60, scope: !1718)
!1753 = !DILocation(line: 600, column: 5, scope: !1718)
!1754 = !DILocation(line: 603, column: 18, scope: !1718)
!1755 = !DILocation(line: 603, column: 23, scope: !1718)
!1756 = !DILocation(line: 603, column: 29, scope: !1718)
!1757 = !DILocation(line: 603, column: 32, scope: !1718)
!1758 = !DILocation(line: 603, column: 5, scope: !1718)
!1759 = !DILocation(line: 604, column: 5, scope: !1718)
!1760 = !DILocation(line: 585, column: 29, scope: !1708)
!1761 = !DILocation(line: 585, column: 3, scope: !1708)
!1762 = distinct !{!1762, !1710, !1763}
!1763 = !DILocation(line: 604, column: 5, scope: !1705)
!1764 = !DILocation(line: 606, column: 3, scope: !1594)
!1765 = !DILocation(line: 608, column: 6, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !2, file: !3, line: 608, column: 6)
!1767 = !DILocation(line: 608, column: 11, scope: !1766)
!1768 = !DILocation(line: 608, column: 6, scope: !2)
!1769 = !DILocation(line: 609, column: 17, scope: !1766)
!1770 = !DILocation(line: 609, column: 22, scope: !1766)
!1771 = !DILocation(line: 609, column: 10, scope: !1766)
!1772 = !DILocation(line: 609, column: 3, scope: !1766)
!1773 = !DILocation(line: 610, column: 15, scope: !2)
!1774 = !DILocation(line: 610, column: 7, scope: !2)
!1775 = !DILocation(line: 610, column: 2, scope: !2)
!1776 = !DILocation(line: 611, column: 2, scope: !2)
!1777 = !DILocation(line: 612, column: 1, scope: !2)
!1778 = !DILocalVariable(name: "_pMF", arg: 1, scope: !412, file: !3, line: 699, type: !9)
!1779 = !DILocation(line: 699, column: 40, scope: !412)
!1780 = !DILocalVariable(name: "iTrack", arg: 2, scope: !412, file: !3, line: 699, type: !8)
!1781 = !DILocation(line: 699, column: 50, scope: !412)
!1782 = !DILocalVariable(name: "pMF", scope: !412, file: !3, line: 703, type: !240)
!1783 = !DILocation(line: 703, column: 2, scope: !412)
!1784 = !DILocation(line: 704, column: 7, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !412, file: !3, line: 704, column: 6)
!1786 = !DILocation(line: 704, column: 6, scope: !412)
!1787 = !DILocation(line: 704, column: 31, scope: !1785)
!1788 = !DILocation(line: 705, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !412, file: !3, line: 705, column: 6)
!1790 = !DILocation(line: 705, column: 6, scope: !412)
!1791 = !DILocation(line: 705, column: 32, scope: !1789)
!1792 = !DILocation(line: 707, column: 25, scope: !412)
!1793 = !DILocation(line: 707, column: 30, scope: !412)
!1794 = !DILocation(line: 707, column: 9, scope: !412)
!1795 = !DILocation(line: 707, column: 2, scope: !412)
!1796 = !DILocation(line: 708, column: 1, scope: !412)
!1797 = distinct !DISubprogram(name: "midiTrackAddRaw", scope: !3, file: !3, line: 714, type: !1798, isLocal: false, isDefinition: true, scopeLine: 715, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!6, !9, !8, !8, !1800, !6, !8}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!1801 = !DILocalVariable(name: "_pMF", arg: 1, scope: !1797, file: !3, line: 714, type: !9)
!1802 = !DILocation(line: 714, column: 33, scope: !1797)
!1803 = !DILocalVariable(name: "iTrack", arg: 2, scope: !1797, file: !3, line: 714, type: !8)
!1804 = !DILocation(line: 714, column: 43, scope: !1797)
!1805 = !DILocalVariable(name: "data_sz", arg: 3, scope: !1797, file: !3, line: 714, type: !8)
!1806 = !DILocation(line: 714, column: 55, scope: !1797)
!1807 = !DILocalVariable(name: "pData", arg: 4, scope: !1797, file: !3, line: 714, type: !1800)
!1808 = !DILocation(line: 714, column: 76, scope: !1797)
!1809 = !DILocalVariable(name: "bMovePtr", arg: 5, scope: !1797, file: !3, line: 714, type: !6)
!1810 = !DILocation(line: 714, column: 88, scope: !1797)
!1811 = !DILocalVariable(name: "dt", arg: 6, scope: !1797, file: !3, line: 714, type: !8)
!1812 = !DILocation(line: 714, column: 102, scope: !1797)
!1813 = !DILocalVariable(name: "pTrk", scope: !1797, file: !3, line: 716, type: !1307)
!1814 = !DILocation(line: 716, column: 18, scope: !1797)
!1815 = !DILocalVariable(name: "ptr", scope: !1797, file: !3, line: 717, type: !322)
!1816 = !DILocation(line: 717, column: 7, scope: !1797)
!1817 = !DILocalVariable(name: "dtime", scope: !1797, file: !3, line: 718, type: !8)
!1818 = !DILocation(line: 718, column: 5, scope: !1797)
!1819 = !DILocalVariable(name: "pMF", scope: !1797, file: !3, line: 720, type: !240)
!1820 = !DILocation(line: 720, column: 2, scope: !1797)
!1821 = !DILocation(line: 721, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 721, column: 6)
!1823 = !DILocation(line: 721, column: 6, scope: !1797)
!1824 = !DILocation(line: 721, column: 30, scope: !1822)
!1825 = !DILocation(line: 722, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 722, column: 6)
!1827 = !DILocation(line: 722, column: 6, scope: !1797)
!1828 = !DILocation(line: 722, column: 31, scope: !1826)
!1829 = !DILocation(line: 724, column: 10, scope: !1797)
!1830 = !DILocation(line: 724, column: 15, scope: !1797)
!1831 = !DILocation(line: 724, column: 21, scope: !1797)
!1832 = !DILocation(line: 724, column: 7, scope: !1797)
!1833 = !DILocation(line: 725, column: 20, scope: !1797)
!1834 = !DILocation(line: 725, column: 25, scope: !1797)
!1835 = !DILocation(line: 725, column: 33, scope: !1797)
!1836 = !DILocation(line: 725, column: 40, scope: !1797)
!1837 = !DILocation(line: 725, column: 8, scope: !1797)
!1838 = !DILocation(line: 725, column: 6, scope: !1797)
!1839 = !DILocation(line: 726, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 726, column: 6)
!1841 = !DILocation(line: 726, column: 6, scope: !1797)
!1842 = !DILocation(line: 727, column: 3, scope: !1840)
!1843 = !DILocation(line: 729, column: 10, scope: !1797)
!1844 = !DILocation(line: 729, column: 16, scope: !1797)
!1845 = !DILocation(line: 729, column: 8, scope: !1797)
!1846 = !DILocation(line: 730, column: 6, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 730, column: 6)
!1848 = !DILocation(line: 730, column: 6, scope: !1797)
!1849 = !DILocation(line: 731, column: 12, scope: !1847)
!1850 = !DILocation(line: 731, column: 9, scope: !1847)
!1851 = !DILocation(line: 731, column: 3, scope: !1847)
!1852 = !DILocation(line: 733, column: 25, scope: !1797)
!1853 = !DILocation(line: 733, column: 30, scope: !1797)
!1854 = !DILocation(line: 733, column: 8, scope: !1797)
!1855 = !DILocation(line: 733, column: 6, scope: !1797)
!1856 = !DILocation(line: 734, column: 9, scope: !1797)
!1857 = !DILocation(line: 734, column: 14, scope: !1797)
!1858 = !DILocation(line: 734, column: 21, scope: !1797)
!1859 = !DILocation(line: 734, column: 2, scope: !1797)
!1860 = !DILocation(line: 736, column: 15, scope: !1797)
!1861 = !DILocation(line: 736, column: 2, scope: !1797)
!1862 = !DILocation(line: 736, column: 8, scope: !1797)
!1863 = !DILocation(line: 736, column: 12, scope: !1797)
!1864 = !DILocation(line: 737, column: 2, scope: !1797)
!1865 = !DILocation(line: 737, column: 8, scope: !1797)
!1866 = !DILocation(line: 737, column: 11, scope: !1797)
!1867 = !DILocation(line: 738, column: 14, scope: !1797)
!1868 = !DILocation(line: 738, column: 18, scope: !1797)
!1869 = !DILocation(line: 738, column: 17, scope: !1797)
!1870 = !DILocation(line: 738, column: 2, scope: !1797)
!1871 = !DILocation(line: 738, column: 8, scope: !1797)
!1872 = !DILocation(line: 738, column: 12, scope: !1797)
!1873 = !DILocation(line: 740, column: 2, scope: !1797)
!1874 = !DILocation(line: 741, column: 1, scope: !1797)
!1875 = !DILocalVariable(name: "_pMF", arg: 1, scope: !375, file: !3, line: 618, type: !9)
!1876 = !DILocation(line: 618, column: 40, scope: !375)
!1877 = !DILocalVariable(name: "iTrack", arg: 2, scope: !375, file: !3, line: 618, type: !8)
!1878 = !DILocation(line: 618, column: 50, scope: !375)
!1879 = !DILocalVariable(name: "iHours", arg: 3, scope: !375, file: !3, line: 618, type: !8)
!1880 = !DILocation(line: 618, column: 62, scope: !375)
!1881 = !DILocalVariable(name: "iMins", arg: 4, scope: !375, file: !3, line: 618, type: !8)
!1882 = !DILocation(line: 618, column: 74, scope: !375)
!1883 = !DILocalVariable(name: "iSecs", arg: 5, scope: !375, file: !3, line: 618, type: !8)
!1884 = !DILocation(line: 618, column: 85, scope: !375)
!1885 = !DILocalVariable(name: "iFrames", arg: 6, scope: !375, file: !3, line: 618, type: !8)
!1886 = !DILocation(line: 618, column: 96, scope: !375)
!1887 = !DILocalVariable(name: "iFFrames", arg: 7, scope: !375, file: !3, line: 618, type: !8)
!1888 = !DILocation(line: 618, column: 109, scope: !375)
!1889 = !DILocalVariable(name: "pMF", scope: !375, file: !3, line: 622, type: !240)
!1890 = !DILocation(line: 622, column: 2, scope: !375)
!1891 = !DILocation(line: 623, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !375, file: !3, line: 623, column: 6)
!1893 = !DILocation(line: 623, column: 6, scope: !375)
!1894 = !DILocation(line: 623, column: 31, scope: !1892)
!1895 = !DILocation(line: 624, column: 7, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !375, file: !3, line: 624, column: 6)
!1897 = !DILocation(line: 624, column: 6, scope: !375)
!1898 = !DILocation(line: 624, column: 32, scope: !1896)
!1899 = !DILocation(line: 626, column: 6, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !375, file: !3, line: 626, column: 6)
!1901 = !DILocation(line: 626, column: 11, scope: !1900)
!1902 = !DILocation(line: 626, column: 14, scope: !1900)
!1903 = !DILocation(line: 626, column: 17, scope: !1900)
!1904 = !DILocation(line: 626, column: 22, scope: !1900)
!1905 = !DILocation(line: 626, column: 6, scope: !375)
!1906 = !DILocation(line: 626, column: 33, scope: !1900)
!1907 = !DILocation(line: 626, column: 28, scope: !1900)
!1908 = !DILocation(line: 627, column: 6, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !375, file: !3, line: 627, column: 6)
!1910 = !DILocation(line: 627, column: 11, scope: !1909)
!1911 = !DILocation(line: 627, column: 14, scope: !1909)
!1912 = !DILocation(line: 627, column: 17, scope: !1909)
!1913 = !DILocation(line: 627, column: 22, scope: !1909)
!1914 = !DILocation(line: 627, column: 6, scope: !375)
!1915 = !DILocation(line: 627, column: 33, scope: !1909)
!1916 = !DILocation(line: 627, column: 28, scope: !1909)
!1917 = !DILocation(line: 628, column: 6, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !375, file: !3, line: 628, column: 6)
!1919 = !DILocation(line: 628, column: 13, scope: !1918)
!1920 = !DILocation(line: 628, column: 16, scope: !1918)
!1921 = !DILocation(line: 628, column: 19, scope: !1918)
!1922 = !DILocation(line: 628, column: 26, scope: !1918)
!1923 = !DILocation(line: 628, column: 6, scope: !375)
!1924 = !DILocation(line: 628, column: 38, scope: !1918)
!1925 = !DILocation(line: 628, column: 31, scope: !1918)
!1926 = !DILocation(line: 630, column: 17, scope: !375)
!1927 = !DILocation(line: 630, column: 11, scope: !375)
!1928 = !DILocation(line: 630, column: 9, scope: !375)
!1929 = !DILocation(line: 631, column: 17, scope: !375)
!1930 = !DILocation(line: 631, column: 11, scope: !375)
!1931 = !DILocation(line: 631, column: 9, scope: !375)
!1932 = !DILocation(line: 632, column: 17, scope: !375)
!1933 = !DILocation(line: 632, column: 11, scope: !375)
!1934 = !DILocation(line: 632, column: 9, scope: !375)
!1935 = !DILocation(line: 633, column: 17, scope: !375)
!1936 = !DILocation(line: 633, column: 11, scope: !375)
!1937 = !DILocation(line: 633, column: 9, scope: !375)
!1938 = !DILocation(line: 634, column: 17, scope: !375)
!1939 = !DILocation(line: 634, column: 11, scope: !375)
!1940 = !DILocation(line: 634, column: 9, scope: !375)
!1941 = !DILocation(line: 635, column: 25, scope: !375)
!1942 = !DILocation(line: 635, column: 30, scope: !375)
!1943 = !DILocation(line: 635, column: 9, scope: !375)
!1944 = !DILocation(line: 635, column: 2, scope: !375)
!1945 = !DILocation(line: 636, column: 1, scope: !375)
!1946 = distinct !DISubprogram(name: "midiSongAddSimpleTimeSig", scope: !3, file: !3, line: 639, type: !1947, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!6, !9, !8, !8, !8}
!1949 = !DILocalVariable(name: "_pMF", arg: 1, scope: !1946, file: !3, line: 639, type: !9)
!1950 = !DILocation(line: 639, column: 42, scope: !1946)
!1951 = !DILocalVariable(name: "iTrack", arg: 2, scope: !1946, file: !3, line: 639, type: !8)
!1952 = !DILocation(line: 639, column: 52, scope: !1946)
!1953 = !DILocalVariable(name: "iNom", arg: 3, scope: !1946, file: !3, line: 639, type: !8)
!1954 = !DILocation(line: 639, column: 64, scope: !1946)
!1955 = !DILocalVariable(name: "iDenom", arg: 4, scope: !1946, file: !3, line: 639, type: !8)
!1956 = !DILocation(line: 639, column: 74, scope: !1946)
!1957 = !DILocation(line: 641, column: 28, scope: !1946)
!1958 = !DILocation(line: 641, column: 34, scope: !1946)
!1959 = !DILocation(line: 641, column: 42, scope: !1946)
!1960 = !DILocation(line: 641, column: 48, scope: !1946)
!1961 = !DILocation(line: 641, column: 9, scope: !1946)
!1962 = !DILocation(line: 641, column: 2, scope: !1946)
!1963 = !DILocalVariable(name: "_pMF", arg: 1, scope: !384, file: !3, line: 644, type: !9)
!1964 = !DILocation(line: 644, column: 36, scope: !384)
!1965 = !DILocalVariable(name: "iTrack", arg: 2, scope: !384, file: !3, line: 644, type: !8)
!1966 = !DILocation(line: 644, column: 46, scope: !384)
!1967 = !DILocalVariable(name: "iNom", arg: 3, scope: !384, file: !3, line: 644, type: !8)
!1968 = !DILocation(line: 644, column: 58, scope: !384)
!1969 = !DILocalVariable(name: "iDenom", arg: 4, scope: !384, file: !3, line: 644, type: !8)
!1970 = !DILocation(line: 644, column: 68, scope: !384)
!1971 = !DILocalVariable(name: "iClockInMetroTick", arg: 5, scope: !384, file: !3, line: 644, type: !8)
!1972 = !DILocation(line: 644, column: 80, scope: !384)
!1973 = !DILocalVariable(name: "iNotated32nds", arg: 6, scope: !384, file: !3, line: 644, type: !8)
!1974 = !DILocation(line: 644, column: 103, scope: !384)
!1975 = !DILocalVariable(name: "pMF", scope: !384, file: !3, line: 648, type: !240)
!1976 = !DILocation(line: 648, column: 2, scope: !384)
!1977 = !DILocation(line: 649, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !384, file: !3, line: 649, column: 6)
!1979 = !DILocation(line: 649, column: 6, scope: !384)
!1980 = !DILocation(line: 649, column: 31, scope: !1978)
!1981 = !DILocation(line: 650, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !384, file: !3, line: 650, column: 6)
!1983 = !DILocation(line: 650, column: 6, scope: !384)
!1984 = !DILocation(line: 650, column: 32, scope: !1982)
!1985 = !DILocation(line: 652, column: 17, scope: !384)
!1986 = !DILocation(line: 652, column: 11, scope: !384)
!1987 = !DILocation(line: 652, column: 9, scope: !384)
!1988 = !DILocation(line: 653, column: 34, scope: !384)
!1989 = !DILocation(line: 653, column: 33, scope: !384)
!1990 = !DILocation(line: 653, column: 11, scope: !384)
!1991 = !DILocation(line: 653, column: 9, scope: !384)
!1992 = !DILocation(line: 654, column: 17, scope: !384)
!1993 = !DILocation(line: 654, column: 11, scope: !384)
!1994 = !DILocation(line: 654, column: 9, scope: !384)
!1995 = !DILocation(line: 655, column: 17, scope: !384)
!1996 = !DILocation(line: 655, column: 11, scope: !384)
!1997 = !DILocation(line: 655, column: 9, scope: !384)
!1998 = !DILocation(line: 656, column: 25, scope: !384)
!1999 = !DILocation(line: 656, column: 30, scope: !384)
!2000 = !DILocation(line: 656, column: 9, scope: !384)
!2001 = !DILocation(line: 656, column: 2, scope: !384)
!2002 = !DILocation(line: 657, column: 1, scope: !384)
!2003 = !DILocalVariable(name: "_pMF", arg: 1, scope: !392, file: !3, line: 659, type: !9)
!2004 = !DILocation(line: 659, column: 35, scope: !392)
!2005 = !DILocalVariable(name: "iTrack", arg: 2, scope: !392, file: !3, line: 659, type: !8)
!2006 = !DILocation(line: 659, column: 45, scope: !392)
!2007 = !DILocalVariable(name: "iKey", arg: 3, scope: !392, file: !3, line: 659, type: !365)
!2008 = !DILocation(line: 659, column: 66, scope: !392)
!2009 = !DILocalVariable(name: "pMF", scope: !392, file: !3, line: 663, type: !240)
!2010 = !DILocation(line: 663, column: 2, scope: !392)
!2011 = !DILocation(line: 664, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !392, file: !3, line: 664, column: 6)
!2013 = !DILocation(line: 664, column: 6, scope: !392)
!2014 = !DILocation(line: 664, column: 31, scope: !2012)
!2015 = !DILocation(line: 665, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !392, file: !3, line: 665, column: 6)
!2017 = !DILocation(line: 665, column: 6, scope: !392)
!2018 = !DILocation(line: 665, column: 32, scope: !2016)
!2019 = !DILocation(line: 667, column: 19, scope: !392)
!2020 = !DILocation(line: 667, column: 23, scope: !392)
!2021 = !DILocation(line: 667, column: 38, scope: !392)
!2022 = !DILocation(line: 667, column: 42, scope: !392)
!2023 = !DILocation(line: 667, column: 37, scope: !392)
!2024 = !DILocation(line: 667, column: 35, scope: !392)
!2025 = !DILocation(line: 667, column: 11, scope: !392)
!2026 = !DILocation(line: 667, column: 9, scope: !392)
!2027 = !DILocation(line: 668, column: 19, scope: !392)
!2028 = !DILocation(line: 668, column: 23, scope: !392)
!2029 = !DILocation(line: 668, column: 18, scope: !392)
!2030 = !DILocation(line: 668, column: 11, scope: !392)
!2031 = !DILocation(line: 668, column: 9, scope: !392)
!2032 = !DILocation(line: 669, column: 25, scope: !392)
!2033 = !DILocation(line: 669, column: 30, scope: !392)
!2034 = !DILocation(line: 669, column: 9, scope: !392)
!2035 = !DILocation(line: 669, column: 2, scope: !392)
!2036 = !DILocation(line: 670, column: 1, scope: !392)
!2037 = !DILocalVariable(name: "_pMF", arg: 1, scope: !400, file: !3, line: 672, type: !9)
!2038 = !DILocation(line: 672, column: 34, scope: !400)
!2039 = !DILocalVariable(name: "iTrack", arg: 2, scope: !400, file: !3, line: 672, type: !8)
!2040 = !DILocation(line: 672, column: 44, scope: !400)
!2041 = !DILocalVariable(name: "iTempo", arg: 3, scope: !400, file: !3, line: 672, type: !8)
!2042 = !DILocation(line: 672, column: 56, scope: !400)
!2043 = !DILocalVariable(name: "us", scope: !400, file: !3, line: 675, type: !8)
!2044 = !DILocation(line: 675, column: 5, scope: !400)
!2045 = !DILocalVariable(name: "pMF", scope: !400, file: !3, line: 677, type: !240)
!2046 = !DILocation(line: 677, column: 2, scope: !400)
!2047 = !DILocation(line: 678, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !400, file: !3, line: 678, column: 6)
!2049 = !DILocation(line: 678, column: 6, scope: !400)
!2050 = !DILocation(line: 678, column: 31, scope: !2048)
!2051 = !DILocation(line: 679, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !400, file: !3, line: 679, column: 6)
!2053 = !DILocation(line: 679, column: 6, scope: !400)
!2054 = !DILocation(line: 679, column: 32, scope: !2052)
!2055 = !DILocation(line: 681, column: 17, scope: !400)
!2056 = !DILocation(line: 681, column: 16, scope: !400)
!2057 = !DILocation(line: 681, column: 5, scope: !400)
!2058 = !DILocation(line: 682, column: 19, scope: !400)
!2059 = !DILocation(line: 682, column: 21, scope: !400)
!2060 = !DILocation(line: 682, column: 26, scope: !400)
!2061 = !DILocation(line: 682, column: 11, scope: !400)
!2062 = !DILocation(line: 682, column: 9, scope: !400)
!2063 = !DILocation(line: 683, column: 19, scope: !400)
!2064 = !DILocation(line: 683, column: 21, scope: !400)
!2065 = !DILocation(line: 683, column: 25, scope: !400)
!2066 = !DILocation(line: 683, column: 11, scope: !400)
!2067 = !DILocation(line: 683, column: 9, scope: !400)
!2068 = !DILocation(line: 684, column: 19, scope: !400)
!2069 = !DILocation(line: 684, column: 21, scope: !400)
!2070 = !DILocation(line: 684, column: 25, scope: !400)
!2071 = !DILocation(line: 684, column: 11, scope: !400)
!2072 = !DILocation(line: 684, column: 9, scope: !400)
!2073 = !DILocation(line: 685, column: 25, scope: !400)
!2074 = !DILocation(line: 685, column: 30, scope: !400)
!2075 = !DILocation(line: 685, column: 9, scope: !400)
!2076 = !DILocation(line: 685, column: 2, scope: !400)
!2077 = !DILocation(line: 686, column: 1, scope: !400)
!2078 = !DILocalVariable(name: "_pMF", arg: 1, scope: !408, file: !3, line: 688, type: !9)
!2079 = !DILocation(line: 688, column: 37, scope: !408)
!2080 = !DILocalVariable(name: "iTrack", arg: 2, scope: !408, file: !3, line: 688, type: !8)
!2081 = !DILocation(line: 688, column: 47, scope: !408)
!2082 = !DILocalVariable(name: "iPort", arg: 3, scope: !408, file: !3, line: 688, type: !8)
!2083 = !DILocation(line: 688, column: 59, scope: !408)
!2084 = !DILocalVariable(name: "pMF", scope: !408, file: !3, line: 692, type: !240)
!2085 = !DILocation(line: 692, column: 2, scope: !408)
!2086 = !DILocation(line: 693, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !408, file: !3, line: 693, column: 6)
!2088 = !DILocation(line: 693, column: 6, scope: !408)
!2089 = !DILocation(line: 693, column: 31, scope: !2087)
!2090 = !DILocation(line: 694, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !408, file: !3, line: 694, column: 6)
!2092 = !DILocation(line: 694, column: 6, scope: !408)
!2093 = !DILocation(line: 694, column: 32, scope: !2091)
!2094 = !DILocation(line: 695, column: 17, scope: !408)
!2095 = !DILocation(line: 695, column: 11, scope: !408)
!2096 = !DILocation(line: 695, column: 9, scope: !408)
!2097 = !DILocation(line: 696, column: 25, scope: !408)
!2098 = !DILocation(line: 696, column: 30, scope: !408)
!2099 = !DILocation(line: 696, column: 9, scope: !408)
!2100 = !DILocation(line: 696, column: 2, scope: !408)
!2101 = !DILocation(line: 697, column: 1, scope: !408)
!2102 = distinct !DISubprogram(name: "midiTrackAddText", scope: !3, file: !3, line: 760, type: !2103, isLocal: false, isDefinition: true, scopeLine: 761, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!6, !9, !8, !2105, !499}
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "tMIDI_TEXT", file: !14, line: 327, baseType: !65)
!2106 = !DILocalVariable(name: "_pMF", arg: 1, scope: !2102, file: !3, line: 760, type: !9)
!2107 = !DILocation(line: 760, column: 34, scope: !2102)
!2108 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2102, file: !3, line: 760, type: !8)
!2109 = !DILocation(line: 760, column: 44, scope: !2102)
!2110 = !DILocalVariable(name: "iType", arg: 3, scope: !2102, file: !3, line: 760, type: !2105)
!2111 = !DILocation(line: 760, column: 63, scope: !2102)
!2112 = !DILocalVariable(name: "pTxt", arg: 4, scope: !2102, file: !3, line: 760, type: !499)
!2113 = !DILocation(line: 760, column: 82, scope: !2102)
!2114 = !DILocalVariable(name: "ptr", scope: !2102, file: !3, line: 762, type: !322)
!2115 = !DILocation(line: 762, column: 7, scope: !2102)
!2116 = !DILocalVariable(name: "sz", scope: !2102, file: !3, line: 763, type: !8)
!2117 = !DILocation(line: 763, column: 5, scope: !2102)
!2118 = !DILocalVariable(name: "pMF", scope: !2102, file: !3, line: 765, type: !240)
!2119 = !DILocation(line: 765, column: 2, scope: !2102)
!2120 = !DILocation(line: 766, column: 7, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 766, column: 6)
!2122 = !DILocation(line: 766, column: 6, scope: !2102)
!2123 = !DILocation(line: 766, column: 31, scope: !2121)
!2124 = !DILocation(line: 767, column: 7, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 767, column: 6)
!2126 = !DILocation(line: 767, column: 6, scope: !2102)
!2127 = !DILocation(line: 767, column: 32, scope: !2125)
!2128 = !DILocation(line: 769, column: 14, scope: !2102)
!2129 = !DILocation(line: 769, column: 7, scope: !2102)
!2130 = !DILocation(line: 769, column: 5, scope: !2102)
!2131 = !DILocation(line: 770, column: 25, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 770, column: 6)
!2133 = !DILocation(line: 770, column: 30, scope: !2132)
!2134 = !DILocation(line: 770, column: 38, scope: !2132)
!2135 = !DILocation(line: 770, column: 40, scope: !2132)
!2136 = !DILocation(line: 770, column: 13, scope: !2132)
!2137 = !DILocation(line: 770, column: 11, scope: !2132)
!2138 = !DILocation(line: 770, column: 6, scope: !2102)
!2139 = !DILocation(line: 772, column: 7, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 771, column: 3)
!2141 = !DILocation(line: 772, column: 10, scope: !2140)
!2142 = !DILocation(line: 773, column: 7, scope: !2140)
!2143 = !DILocation(line: 773, column: 10, scope: !2140)
!2144 = !DILocation(line: 774, column: 18, scope: !2140)
!2145 = !DILocation(line: 774, column: 12, scope: !2140)
!2146 = !DILocation(line: 774, column: 7, scope: !2140)
!2147 = !DILocation(line: 774, column: 10, scope: !2140)
!2148 = !DILocation(line: 775, column: 34, scope: !2140)
!2149 = !DILocation(line: 775, column: 39, scope: !2140)
!2150 = !DILocation(line: 775, column: 9, scope: !2140)
!2151 = !DILocation(line: 775, column: 7, scope: !2140)
!2152 = !DILocation(line: 776, column: 18, scope: !2140)
!2153 = !DILocation(line: 776, column: 23, scope: !2140)
!2154 = !DILocation(line: 776, column: 3, scope: !2140)
!2155 = !DILocation(line: 777, column: 28, scope: !2140)
!2156 = !DILocation(line: 777, column: 32, scope: !2140)
!2157 = !DILocation(line: 777, column: 31, scope: !2140)
!2158 = !DILocation(line: 777, column: 3, scope: !2140)
!2159 = !DILocation(line: 777, column: 8, scope: !2140)
!2160 = !DILocation(line: 777, column: 14, scope: !2140)
!2161 = !DILocation(line: 777, column: 22, scope: !2140)
!2162 = !DILocation(line: 777, column: 26, scope: !2140)
!2163 = !DILocation(line: 778, column: 3, scope: !2140)
!2164 = !DILocation(line: 782, column: 3, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 781, column: 3)
!2166 = !DILocation(line: 784, column: 1, scope: !2102)
!2167 = distinct !DISubprogram(name: "midiTrackSetKeyPressure", scope: !3, file: !3, line: 786, type: !1947, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2168 = !DILocalVariable(name: "pMF", arg: 1, scope: !2167, file: !3, line: 786, type: !9)
!2169 = !DILocation(line: 786, column: 41, scope: !2167)
!2170 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2167, file: !3, line: 786, type: !8)
!2171 = !DILocation(line: 786, column: 50, scope: !2167)
!2172 = !DILocalVariable(name: "iNote", arg: 3, scope: !2167, file: !3, line: 786, type: !8)
!2173 = !DILocation(line: 786, column: 62, scope: !2167)
!2174 = !DILocalVariable(name: "iAftertouch", arg: 4, scope: !2167, file: !3, line: 786, type: !8)
!2175 = !DILocation(line: 786, column: 73, scope: !2167)
!2176 = !DILocation(line: 788, column: 25, scope: !2167)
!2177 = !DILocation(line: 788, column: 30, scope: !2167)
!2178 = !DILocation(line: 788, column: 58, scope: !2167)
!2179 = !DILocation(line: 788, column: 65, scope: !2167)
!2180 = !DILocation(line: 788, column: 9, scope: !2167)
!2181 = !DILocation(line: 788, column: 2, scope: !2167)
!2182 = distinct !DISubprogram(name: "midiTrackAddMsg", scope: !3, file: !3, line: 815, type: !2183, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!6, !9, !8, !362, !8, !8}
!2185 = !DILocalVariable(name: "_pMF", arg: 1, scope: !2182, file: !3, line: 815, type: !9)
!2186 = !DILocation(line: 815, column: 33, scope: !2182)
!2187 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2182, file: !3, line: 815, type: !8)
!2188 = !DILocation(line: 815, column: 43, scope: !2182)
!2189 = !DILocalVariable(name: "iMsg", arg: 3, scope: !2182, file: !3, line: 815, type: !362)
!2190 = !DILocation(line: 815, column: 61, scope: !2182)
!2191 = !DILocalVariable(name: "iParam1", arg: 4, scope: !2182, file: !3, line: 815, type: !8)
!2192 = !DILocation(line: 815, column: 71, scope: !2182)
!2193 = !DILocalVariable(name: "iParam2", arg: 5, scope: !2182, file: !3, line: 815, type: !8)
!2194 = !DILocation(line: 815, column: 84, scope: !2182)
!2195 = !DILocalVariable(name: "ptr", scope: !2182, file: !3, line: 817, type: !322)
!2196 = !DILocation(line: 817, column: 7, scope: !2182)
!2197 = !DILocalVariable(name: "data", scope: !2182, file: !3, line: 818, type: !415)
!2198 = !DILocation(line: 818, column: 6, scope: !2182)
!2199 = !DILocalVariable(name: "sz", scope: !2182, file: !3, line: 819, type: !8)
!2200 = !DILocation(line: 819, column: 5, scope: !2182)
!2201 = !DILocalVariable(name: "pMF", scope: !2182, file: !3, line: 821, type: !240)
!2202 = !DILocation(line: 821, column: 2, scope: !2182)
!2203 = !DILocation(line: 822, column: 7, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 822, column: 6)
!2205 = !DILocation(line: 822, column: 6, scope: !2182)
!2206 = !DILocation(line: 822, column: 31, scope: !2204)
!2207 = !DILocation(line: 823, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 823, column: 6)
!2209 = !DILocation(line: 823, column: 6, scope: !2182)
!2210 = !DILocation(line: 823, column: 32, scope: !2208)
!2211 = !DILocation(line: 824, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 824, column: 6)
!2213 = !DILocation(line: 824, column: 6, scope: !2182)
!2214 = !DILocation(line: 824, column: 32, scope: !2212)
!2215 = !DILocation(line: 826, column: 20, scope: !2182)
!2216 = !DILocation(line: 826, column: 25, scope: !2182)
!2217 = !DILocation(line: 826, column: 8, scope: !2182)
!2218 = !DILocation(line: 826, column: 6, scope: !2182)
!2219 = !DILocation(line: 827, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 827, column: 6)
!2221 = !DILocation(line: 827, column: 6, scope: !2182)
!2222 = !DILocation(line: 828, column: 3, scope: !2220)
!2223 = !DILocation(line: 830, column: 19, scope: !2182)
!2224 = !DILocation(line: 830, column: 26, scope: !2182)
!2225 = !DILocation(line: 830, column: 31, scope: !2182)
!2226 = !DILocation(line: 830, column: 37, scope: !2182)
!2227 = !DILocation(line: 830, column: 45, scope: !2182)
!2228 = !DILocation(line: 830, column: 24, scope: !2182)
!2229 = !DILocation(line: 830, column: 12, scope: !2182)
!2230 = !DILocation(line: 830, column: 2, scope: !2182)
!2231 = !DILocation(line: 830, column: 10, scope: !2182)
!2232 = !DILocation(line: 831, column: 19, scope: !2182)
!2233 = !DILocation(line: 831, column: 27, scope: !2182)
!2234 = !DILocation(line: 831, column: 12, scope: !2182)
!2235 = !DILocation(line: 831, column: 2, scope: !2182)
!2236 = !DILocation(line: 831, column: 10, scope: !2182)
!2237 = !DILocation(line: 832, column: 19, scope: !2182)
!2238 = !DILocation(line: 832, column: 27, scope: !2182)
!2239 = !DILocation(line: 832, column: 12, scope: !2182)
!2240 = !DILocation(line: 832, column: 2, scope: !2182)
!2241 = !DILocation(line: 832, column: 10, scope: !2182)
!2242 = !DILocation(line: 836, column: 10, scope: !2182)
!2243 = !DILocation(line: 836, column: 3, scope: !2182)
!2244 = !DILocation(line: 840, column: 13, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 837, column: 3)
!2246 = !DILocation(line: 841, column: 10, scope: !2245)
!2247 = !DILocation(line: 844, column: 13, scope: !2245)
!2248 = !DILocation(line: 845, column: 10, scope: !2245)
!2249 = !DILocation(line: 848, column: 25, scope: !2182)
!2250 = !DILocation(line: 848, column: 30, scope: !2182)
!2251 = !DILocation(line: 848, column: 38, scope: !2182)
!2252 = !DILocation(line: 848, column: 42, scope: !2182)
!2253 = !DILocation(line: 848, column: 9, scope: !2182)
!2254 = !DILocation(line: 848, column: 2, scope: !2182)
!2255 = !DILocation(line: 850, column: 1, scope: !2182)
!2256 = distinct !DISubprogram(name: "midiTrackAddControlChange", scope: !3, file: !3, line: 791, type: !2257, isLocal: false, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!6, !9, !8, !363, !8}
!2259 = !DILocalVariable(name: "pMF", arg: 1, scope: !2256, file: !3, line: 791, type: !9)
!2260 = !DILocation(line: 791, column: 43, scope: !2256)
!2261 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2256, file: !3, line: 791, type: !8)
!2262 = !DILocation(line: 791, column: 52, scope: !2256)
!2263 = !DILocalVariable(name: "iCCType", arg: 3, scope: !2256, file: !3, line: 791, type: !363)
!2264 = !DILocation(line: 791, column: 69, scope: !2256)
!2265 = !DILocalVariable(name: "iParam", arg: 4, scope: !2256, file: !3, line: 791, type: !8)
!2266 = !DILocation(line: 791, column: 82, scope: !2256)
!2267 = !DILocation(line: 793, column: 25, scope: !2256)
!2268 = !DILocation(line: 793, column: 30, scope: !2256)
!2269 = !DILocation(line: 793, column: 56, scope: !2256)
!2270 = !DILocation(line: 793, column: 65, scope: !2256)
!2271 = !DILocation(line: 793, column: 9, scope: !2256)
!2272 = !DILocation(line: 793, column: 2, scope: !2256)
!2273 = distinct !DISubprogram(name: "midiTrackAddProgramChange", scope: !3, file: !3, line: 796, type: !401, isLocal: false, isDefinition: true, scopeLine: 797, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2274 = !DILocalVariable(name: "pMF", arg: 1, scope: !2273, file: !3, line: 796, type: !9)
!2275 = !DILocation(line: 796, column: 43, scope: !2273)
!2276 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2273, file: !3, line: 796, type: !8)
!2277 = !DILocation(line: 796, column: 52, scope: !2273)
!2278 = !DILocalVariable(name: "iInstrPatch", arg: 3, scope: !2273, file: !3, line: 796, type: !8)
!2279 = !DILocation(line: 796, column: 64, scope: !2273)
!2280 = !DILocation(line: 798, column: 25, scope: !2273)
!2281 = !DILocation(line: 798, column: 30, scope: !2273)
!2282 = !DILocation(line: 798, column: 53, scope: !2273)
!2283 = !DILocation(line: 798, column: 9, scope: !2273)
!2284 = !DILocation(line: 798, column: 2, scope: !2273)
!2285 = distinct !DISubprogram(name: "midiTrackChangeKeyPressure", scope: !3, file: !3, line: 801, type: !401, isLocal: false, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2286 = !DILocalVariable(name: "pMF", arg: 1, scope: !2285, file: !3, line: 801, type: !9)
!2287 = !DILocation(line: 801, column: 44, scope: !2285)
!2288 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2285, file: !3, line: 801, type: !8)
!2289 = !DILocation(line: 801, column: 53, scope: !2285)
!2290 = !DILocalVariable(name: "iDeltaPressure", arg: 3, scope: !2285, file: !3, line: 801, type: !8)
!2291 = !DILocation(line: 801, column: 65, scope: !2285)
!2292 = !DILocation(line: 803, column: 25, scope: !2285)
!2293 = !DILocation(line: 803, column: 30, scope: !2285)
!2294 = !DILocation(line: 803, column: 57, scope: !2285)
!2295 = !DILocation(line: 803, column: 71, scope: !2285)
!2296 = !DILocation(line: 803, column: 9, scope: !2285)
!2297 = !DILocation(line: 803, column: 2, scope: !2285)
!2298 = distinct !DISubprogram(name: "midiTrackSetPitchWheel", scope: !3, file: !3, line: 806, type: !401, isLocal: false, isDefinition: true, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2299 = !DILocalVariable(name: "pMF", arg: 1, scope: !2298, file: !3, line: 806, type: !9)
!2300 = !DILocation(line: 806, column: 40, scope: !2298)
!2301 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2298, file: !3, line: 806, type: !8)
!2302 = !DILocation(line: 806, column: 49, scope: !2298)
!2303 = !DILocalVariable(name: "iWheelPos", arg: 3, scope: !2298, file: !3, line: 806, type: !8)
!2304 = !DILocation(line: 806, column: 61, scope: !2298)
!2305 = !DILocalVariable(name: "wheel", scope: !2298, file: !3, line: 808, type: !318)
!2306 = !DILocation(line: 808, column: 6, scope: !2298)
!2307 = !DILocation(line: 808, column: 20, scope: !2298)
!2308 = !DILocation(line: 808, column: 14, scope: !2298)
!2309 = !DILocation(line: 811, column: 8, scope: !2298)
!2310 = !DILocation(line: 812, column: 25, scope: !2298)
!2311 = !DILocation(line: 812, column: 30, scope: !2298)
!2312 = !DILocation(line: 812, column: 56, scope: !2298)
!2313 = !DILocation(line: 812, column: 61, scope: !2298)
!2314 = !DILocation(line: 812, column: 69, scope: !2298)
!2315 = !DILocation(line: 812, column: 74, scope: !2298)
!2316 = !DILocation(line: 812, column: 78, scope: !2298)
!2317 = !DILocation(line: 812, column: 9, scope: !2298)
!2318 = !DILocation(line: 812, column: 2, scope: !2298)
!2319 = distinct !DISubprogram(name: "midiTrackAddNote", scope: !3, file: !3, line: 852, type: !2320, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!6, !9, !8, !8, !8, !8, !6, !6}
!2322 = !DILocalVariable(name: "_pMF", arg: 1, scope: !2319, file: !3, line: 852, type: !9)
!2323 = !DILocation(line: 852, column: 34, scope: !2319)
!2324 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2319, file: !3, line: 852, type: !8)
!2325 = !DILocation(line: 852, column: 44, scope: !2319)
!2326 = !DILocalVariable(name: "iNote", arg: 3, scope: !2319, file: !3, line: 852, type: !8)
!2327 = !DILocation(line: 852, column: 56, scope: !2319)
!2328 = !DILocalVariable(name: "iLength", arg: 4, scope: !2319, file: !3, line: 852, type: !8)
!2329 = !DILocation(line: 852, column: 67, scope: !2319)
!2330 = !DILocalVariable(name: "iVol", arg: 5, scope: !2319, file: !3, line: 852, type: !8)
!2331 = !DILocation(line: 852, column: 80, scope: !2319)
!2332 = !DILocalVariable(name: "bAutoInc", arg: 6, scope: !2319, file: !3, line: 852, type: !6)
!2333 = !DILocation(line: 852, column: 91, scope: !2319)
!2334 = !DILocalVariable(name: "bOverrideLength", arg: 7, scope: !2319, file: !3, line: 852, type: !6)
!2335 = !DILocation(line: 852, column: 106, scope: !2319)
!2336 = !DILocalVariable(name: "pTrk", scope: !2319, file: !3, line: 854, type: !1307)
!2337 = !DILocation(line: 854, column: 18, scope: !2319)
!2338 = !DILocalVariable(name: "ptr", scope: !2319, file: !3, line: 855, type: !322)
!2339 = !DILocation(line: 855, column: 7, scope: !2319)
!2340 = !DILocalVariable(name: "bSuccess", scope: !2319, file: !3, line: 856, type: !6)
!2341 = !DILocation(line: 856, column: 6, scope: !2319)
!2342 = !DILocalVariable(name: "i", scope: !2319, file: !3, line: 857, type: !8)
!2343 = !DILocation(line: 857, column: 5, scope: !2319)
!2344 = !DILocalVariable(name: "chn", scope: !2319, file: !3, line: 857, type: !8)
!2345 = !DILocation(line: 857, column: 8, scope: !2319)
!2346 = !DILocalVariable(name: "pMF", scope: !2319, file: !3, line: 859, type: !240)
!2347 = !DILocation(line: 859, column: 2, scope: !2319)
!2348 = !DILocation(line: 860, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 860, column: 6)
!2350 = !DILocation(line: 860, column: 6, scope: !2319)
!2351 = !DILocation(line: 860, column: 31, scope: !2349)
!2352 = !DILocation(line: 861, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 861, column: 6)
!2354 = !DILocation(line: 861, column: 6, scope: !2319)
!2355 = !DILocation(line: 861, column: 32, scope: !2353)
!2356 = !DILocation(line: 862, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 862, column: 6)
!2358 = !DILocation(line: 862, column: 6, scope: !2319)
!2359 = !DILocation(line: 862, column: 30, scope: !2357)
!2360 = !DILocation(line: 864, column: 10, scope: !2319)
!2361 = !DILocation(line: 864, column: 15, scope: !2319)
!2362 = !DILocation(line: 864, column: 21, scope: !2319)
!2363 = !DILocation(line: 864, column: 7, scope: !2319)
!2364 = !DILocation(line: 865, column: 20, scope: !2319)
!2365 = !DILocation(line: 865, column: 25, scope: !2319)
!2366 = !DILocation(line: 865, column: 8, scope: !2319)
!2367 = !DILocation(line: 865, column: 6, scope: !2319)
!2368 = !DILocation(line: 866, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 866, column: 6)
!2370 = !DILocation(line: 866, column: 6, scope: !2319)
!2371 = !DILocation(line: 867, column: 3, scope: !2369)
!2372 = !DILocation(line: 869, column: 8, scope: !2319)
!2373 = !DILocation(line: 869, column: 14, scope: !2319)
!2374 = !DILocation(line: 869, column: 6, scope: !2319)
!2375 = !DILocation(line: 870, column: 27, scope: !2319)
!2376 = !DILocation(line: 870, column: 32, scope: !2319)
!2377 = !DILocation(line: 870, column: 39, scope: !2319)
!2378 = !DILocation(line: 870, column: 45, scope: !2319)
!2379 = !DILocation(line: 870, column: 54, scope: !2319)
!2380 = !DILocation(line: 870, column: 12, scope: !2319)
!2381 = !DILocation(line: 870, column: 10, scope: !2319)
!2382 = !DILocation(line: 872, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 872, column: 2)
!2384 = !DILocation(line: 872, column: 6, scope: !2383)
!2385 = !DILocation(line: 872, column: 10, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 872, column: 2)
!2387 = !DILocation(line: 872, column: 11, scope: !2386)
!2388 = !DILocation(line: 872, column: 2, scope: !2383)
!2389 = !DILocation(line: 873, column: 7, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 873, column: 7)
!2391 = !DILocation(line: 873, column: 13, scope: !2390)
!2392 = !DILocation(line: 873, column: 22, scope: !2390)
!2393 = !DILocation(line: 873, column: 25, scope: !2390)
!2394 = !DILocation(line: 873, column: 31, scope: !2390)
!2395 = !DILocation(line: 873, column: 7, scope: !2386)
!2396 = !DILocation(line: 875, column: 35, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 874, column: 4)
!2398 = !DILocation(line: 875, column: 29, scope: !2397)
!2399 = !DILocation(line: 875, column: 4, scope: !2397)
!2400 = !DILocation(line: 875, column: 10, scope: !2397)
!2401 = !DILocation(line: 875, column: 19, scope: !2397)
!2402 = !DILocation(line: 875, column: 22, scope: !2397)
!2403 = !DILocation(line: 875, column: 27, scope: !2397)
!2404 = !DILocation(line: 876, column: 34, scope: !2397)
!2405 = !DILocation(line: 876, column: 28, scope: !2397)
!2406 = !DILocation(line: 876, column: 4, scope: !2397)
!2407 = !DILocation(line: 876, column: 10, scope: !2397)
!2408 = !DILocation(line: 876, column: 19, scope: !2397)
!2409 = !DILocation(line: 876, column: 22, scope: !2397)
!2410 = !DILocation(line: 876, column: 26, scope: !2397)
!2411 = !DILocation(line: 877, column: 32, scope: !2397)
!2412 = !DILocation(line: 877, column: 38, scope: !2397)
!2413 = !DILocation(line: 877, column: 42, scope: !2397)
!2414 = !DILocation(line: 877, column: 48, scope: !2397)
!2415 = !DILocation(line: 877, column: 41, scope: !2397)
!2416 = !DILocation(line: 877, column: 51, scope: !2397)
!2417 = !DILocation(line: 877, column: 50, scope: !2397)
!2418 = !DILocation(line: 877, column: 4, scope: !2397)
!2419 = !DILocation(line: 877, column: 10, scope: !2397)
!2420 = !DILocation(line: 877, column: 19, scope: !2397)
!2421 = !DILocation(line: 877, column: 22, scope: !2397)
!2422 = !DILocation(line: 877, column: 30, scope: !2397)
!2423 = !DILocation(line: 878, column: 4, scope: !2397)
!2424 = !DILocation(line: 878, column: 10, scope: !2397)
!2425 = !DILocation(line: 878, column: 19, scope: !2397)
!2426 = !DILocation(line: 878, column: 22, scope: !2397)
!2427 = !DILocation(line: 878, column: 28, scope: !2397)
!2428 = !DILocation(line: 879, column: 13, scope: !2397)
!2429 = !DILocation(line: 881, column: 27, scope: !2397)
!2430 = !DILocation(line: 881, column: 32, scope: !2397)
!2431 = !DILocation(line: 881, column: 38, scope: !2397)
!2432 = !DILocation(line: 881, column: 10, scope: !2397)
!2433 = !DILocation(line: 881, column: 8, scope: !2397)
!2434 = !DILocation(line: 882, column: 32, scope: !2397)
!2435 = !DILocation(line: 882, column: 30, scope: !2397)
!2436 = !DILocation(line: 882, column: 13, scope: !2397)
!2437 = !DILocation(line: 882, column: 8, scope: !2397)
!2438 = !DILocation(line: 882, column: 11, scope: !2397)
!2439 = !DILocation(line: 883, column: 19, scope: !2397)
!2440 = !DILocation(line: 883, column: 13, scope: !2397)
!2441 = !DILocation(line: 883, column: 8, scope: !2397)
!2442 = !DILocation(line: 883, column: 11, scope: !2397)
!2443 = !DILocation(line: 884, column: 19, scope: !2397)
!2444 = !DILocation(line: 884, column: 13, scope: !2397)
!2445 = !DILocation(line: 884, column: 8, scope: !2397)
!2446 = !DILocation(line: 884, column: 11, scope: !2397)
!2447 = !DILocation(line: 885, column: 4, scope: !2397)
!2448 = !DILocation(line: 873, column: 34, scope: !2390)
!2449 = !DILocation(line: 872, column: 61, scope: !2386)
!2450 = !DILocation(line: 872, column: 2, scope: !2386)
!2451 = distinct !{!2451, !2388, !2452}
!2452 = !DILocation(line: 886, column: 4, scope: !2383)
!2453 = !DILocation(line: 888, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 888, column: 6)
!2455 = !DILocation(line: 888, column: 6, scope: !2319)
!2456 = !DILocation(line: 889, column: 3, scope: !2454)
!2457 = !DILocation(line: 891, column: 14, scope: !2319)
!2458 = !DILocation(line: 891, column: 2, scope: !2319)
!2459 = !DILocation(line: 891, column: 8, scope: !2319)
!2460 = !DILocation(line: 891, column: 12, scope: !2319)
!2461 = !DILocation(line: 893, column: 15, scope: !2319)
!2462 = !DILocation(line: 893, column: 21, scope: !2319)
!2463 = !DILocation(line: 893, column: 2, scope: !2319)
!2464 = !DILocation(line: 893, column: 8, scope: !2319)
!2465 = !DILocation(line: 893, column: 12, scope: !2319)
!2466 = !DILocation(line: 894, column: 2, scope: !2319)
!2467 = !DILocation(line: 894, column: 8, scope: !2319)
!2468 = !DILocation(line: 894, column: 11, scope: !2319)
!2469 = !DILocation(line: 896, column: 6, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 896, column: 6)
!2471 = !DILocation(line: 896, column: 6, scope: !2319)
!2472 = !DILocation(line: 897, column: 27, scope: !2470)
!2473 = !DILocation(line: 897, column: 32, scope: !2470)
!2474 = !DILocation(line: 897, column: 40, scope: !2470)
!2475 = !DILocation(line: 897, column: 49, scope: !2470)
!2476 = !DILocation(line: 897, column: 10, scope: !2470)
!2477 = !DILocation(line: 897, column: 3, scope: !2470)
!2478 = !DILocation(line: 899, column: 2, scope: !2319)
!2479 = !DILocation(line: 900, column: 1, scope: !2319)
!2480 = distinct !DISubprogram(name: "midiTrackAddRest", scope: !3, file: !3, line: 902, type: !1484, isLocal: false, isDefinition: true, scopeLine: 903, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2481 = !DILocalVariable(name: "_pMF", arg: 1, scope: !2480, file: !3, line: 902, type: !9)
!2482 = !DILocation(line: 902, column: 34, scope: !2480)
!2483 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2480, file: !3, line: 902, type: !8)
!2484 = !DILocation(line: 902, column: 44, scope: !2480)
!2485 = !DILocalVariable(name: "iLength", arg: 3, scope: !2480, file: !3, line: 902, type: !8)
!2486 = !DILocation(line: 902, column: 56, scope: !2480)
!2487 = !DILocalVariable(name: "bOverridePPQN", arg: 4, scope: !2480, file: !3, line: 902, type: !6)
!2488 = !DILocation(line: 902, column: 70, scope: !2480)
!2489 = !DILocalVariable(name: "pMF", scope: !2480, file: !3, line: 904, type: !240)
!2490 = !DILocation(line: 904, column: 2, scope: !2480)
!2491 = !DILocation(line: 905, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 905, column: 6)
!2493 = !DILocation(line: 905, column: 6, scope: !2480)
!2494 = !DILocation(line: 905, column: 31, scope: !2492)
!2495 = !DILocation(line: 906, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 906, column: 6)
!2497 = !DILocation(line: 906, column: 6, scope: !2480)
!2498 = !DILocation(line: 906, column: 32, scope: !2496)
!2499 = !DILocation(line: 908, column: 27, scope: !2480)
!2500 = !DILocation(line: 908, column: 32, scope: !2480)
!2501 = !DILocation(line: 908, column: 39, scope: !2480)
!2502 = !DILocation(line: 908, column: 45, scope: !2480)
!2503 = !DILocation(line: 908, column: 54, scope: !2480)
!2504 = !DILocation(line: 908, column: 12, scope: !2480)
!2505 = !DILocation(line: 908, column: 10, scope: !2480)
!2506 = !DILocation(line: 909, column: 26, scope: !2480)
!2507 = !DILocation(line: 909, column: 31, scope: !2480)
!2508 = !DILocation(line: 909, column: 39, scope: !2480)
!2509 = !DILocation(line: 909, column: 48, scope: !2480)
!2510 = !DILocation(line: 909, column: 9, scope: !2480)
!2511 = !DILocation(line: 909, column: 2, scope: !2480)
!2512 = !DILocation(line: 910, column: 1, scope: !2480)
!2513 = distinct !DISubprogram(name: "midiTrackGetEndPos", scope: !3, file: !3, line: 912, type: !413, isLocal: false, isDefinition: true, scopeLine: 913, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2514 = !DILocalVariable(name: "_pMF", arg: 1, scope: !2513, file: !3, line: 912, type: !9)
!2515 = !DILocation(line: 912, column: 36, scope: !2513)
!2516 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2513, file: !3, line: 912, type: !8)
!2517 = !DILocation(line: 912, column: 46, scope: !2513)
!2518 = !DILocalVariable(name: "pMF", scope: !2513, file: !3, line: 914, type: !240)
!2519 = !DILocation(line: 914, column: 2, scope: !2513)
!2520 = !DILocation(line: 915, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 915, column: 6)
!2522 = !DILocation(line: 915, column: 6, scope: !2513)
!2523 = !DILocation(line: 915, column: 31, scope: !2521)
!2524 = !DILocation(line: 916, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 916, column: 6)
!2526 = !DILocation(line: 916, column: 6, scope: !2513)
!2527 = !DILocation(line: 916, column: 32, scope: !2525)
!2528 = !DILocation(line: 918, column: 9, scope: !2513)
!2529 = !DILocation(line: 918, column: 14, scope: !2513)
!2530 = !DILocation(line: 918, column: 20, scope: !2513)
!2531 = !DILocation(line: 918, column: 28, scope: !2513)
!2532 = !DILocation(line: 918, column: 2, scope: !2513)
!2533 = !DILocation(line: 919, column: 1, scope: !2513)
!2534 = distinct !DISubprogram(name: "midiReadGetNumTracks", scope: !3, file: !3, line: 959, type: !763, isLocal: false, isDefinition: true, scopeLine: 960, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2535 = !DILocalVariable(name: "_pMF", arg: 1, scope: !2534, file: !3, line: 959, type: !711)
!2536 = !DILocation(line: 959, column: 43, scope: !2534)
!2537 = !DILocalVariable(name: "pMF", scope: !2534, file: !3, line: 961, type: !240)
!2538 = !DILocation(line: 961, column: 2, scope: !2534)
!2539 = !DILocation(line: 962, column: 9, scope: !2534)
!2540 = !DILocation(line: 962, column: 14, scope: !2534)
!2541 = !DILocation(line: 962, column: 21, scope: !2534)
!2542 = !DILocation(line: 962, column: 2, scope: !2534)
!2543 = distinct !DISubprogram(name: "midiReadGetNextMessage", scope: !3, file: !3, line: 965, type: !2544, isLocal: false, isDefinition: true, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!6, !711, !8, !2546}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "MIDI_MSG", file: !7, line: 152, baseType: !2548)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 69, size: 512, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2643, !2644}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "iType", scope: !2548, file: !7, line: 70, baseType: !362, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dt", scope: !2548, file: !7, line: 72, baseType: !315, size: 32, offset: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dwAbsPos", scope: !2548, file: !7, line: 73, baseType: !315, size: 32, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "iMsgSize", scope: !2548, file: !7, line: 74, baseType: !315, size: 32, offset: 96)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "bImpliedMsg", scope: !2548, file: !7, line: 76, baseType: !6, size: 32, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "iImpliedMsg", scope: !2548, file: !7, line: 77, baseType: !362, size: 32, offset: 160)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2548, file: !7, line: 80, baseType: !322, size: 32, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "data_sz", scope: !2548, file: !7, line: 81, baseType: !315, size: 32, offset: 224)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "MsgData", scope: !2548, file: !7, line: 146, baseType: !2559, size: 192, offset: 256)
!2559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2548, file: !7, line: 83, size: 192, elements: !2560)
!2560 = !{!2561, !2567, !2572, !2578, !2584, !2589, !2594, !2599, !2638}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "NoteOn", scope: !2559, file: !7, line: 88, baseType: !2562, size: 96)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2559, file: !7, line: 84, size: 96, elements: !2563)
!2563 = !{!2564, !2565, !2566}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "iNote", scope: !2562, file: !7, line: 85, baseType: !8, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !2562, file: !7, line: 86, baseType: !8, size: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "iVolume", scope: !2562, file: !7, line: 87, baseType: !8, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "NoteOff", scope: !2559, file: !7, line: 92, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2559, file: !7, line: 89, size: 64, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "iNote", scope: !2568, file: !7, line: 90, baseType: !8, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !2568, file: !7, line: 91, baseType: !8, size: 32, offset: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "NoteKeyPressure", scope: !2559, file: !7, line: 97, baseType: !2573, size: 96)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2559, file: !7, line: 93, size: 96, elements: !2574)
!2574 = !{!2575, !2576, !2577}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "iNote", scope: !2573, file: !7, line: 94, baseType: !8, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !2573, file: !7, line: 95, baseType: !8, size: 32, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "iPressure", scope: !2573, file: !7, line: 96, baseType: !8, size: 32, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "NoteParameter", scope: !2559, file: !7, line: 102, baseType: !2579, size: 96)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2559, file: !7, line: 98, size: 96, elements: !2580)
!2580 = !{!2581, !2582, !2583}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !2579, file: !7, line: 99, baseType: !8, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "iControl", scope: !2579, file: !7, line: 100, baseType: !363, size: 32, offset: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "iParam", scope: !2579, file: !7, line: 101, baseType: !8, size: 32, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ChangeProgram", scope: !2559, file: !7, line: 106, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2559, file: !7, line: 103, size: 64, elements: !2586)
!2586 = !{!2587, !2588}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !2585, file: !7, line: 104, baseType: !8, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "iProgram", scope: !2585, file: !7, line: 105, baseType: !8, size: 32, offset: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ChangePressure", scope: !2559, file: !7, line: 110, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2559, file: !7, line: 107, size: 64, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !2590, file: !7, line: 108, baseType: !8, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "iPressure", scope: !2590, file: !7, line: 109, baseType: !8, size: 32, offset: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "PitchWheel", scope: !2559, file: !7, line: 114, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2559, file: !7, line: 111, size: 64, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !2595, file: !7, line: 112, baseType: !8, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "iPitch", scope: !2595, file: !7, line: 113, baseType: !8, size: 32, offset: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "MetaEvent", scope: !2559, file: !7, line: 141, baseType: !2600, size: 192)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2559, file: !7, line: 115, size: 192, elements: !2601)
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "iType", scope: !2600, file: !7, line: 116, baseType: !364, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !2600, file: !7, line: 140, baseType: !2604, size: 160, offset: 32)
!2604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2600, file: !7, line: 117, size: 160, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2612, !2616, !2624, !2628, !2633}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "iMIDIPort", scope: !2604, file: !7, line: 118, baseType: !8, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "iSequenceNumber", scope: !2604, file: !7, line: 119, baseType: !8, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "Text", scope: !2604, file: !7, line: 122, baseType: !2609, size: 32)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2604, file: !7, line: 120, size: 32, elements: !2610)
!2610 = !{!2611}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "pData", scope: !2609, file: !7, line: 121, baseType: !322, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "Tempo", scope: !2604, file: !7, line: 125, baseType: !2613, size: 32)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2604, file: !7, line: 123, size: 32, elements: !2614)
!2614 = !{!2615}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "iBPM", scope: !2613, file: !7, line: 124, baseType: !8, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "SMPTE", scope: !2604, file: !7, line: 129, baseType: !2617, size: 160)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2604, file: !7, line: 126, size: 160, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2622, !2623}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "iHours", scope: !2617, file: !7, line: 127, baseType: !8, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "iMins", scope: !2617, file: !7, line: 127, baseType: !8, size: 32, offset: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "iSecs", scope: !2617, file: !7, line: 128, baseType: !8, size: 32, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "iFrames", scope: !2617, file: !7, line: 128, baseType: !8, size: 32, offset: 96)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "iFF", scope: !2617, file: !7, line: 128, baseType: !8, size: 32, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "KeySig", scope: !2604, file: !7, line: 132, baseType: !2625, size: 32)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2604, file: !7, line: 130, size: 32, elements: !2626)
!2626 = !{!2627}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "iKey", scope: !2625, file: !7, line: 131, baseType: !365, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "TimeSig", scope: !2604, file: !7, line: 135, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2604, file: !7, line: 133, size: 64, elements: !2630)
!2630 = !{!2631, !2632}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "iNom", scope: !2629, file: !7, line: 134, baseType: !8, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "iDenom", scope: !2629, file: !7, line: 134, baseType: !8, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "Sequencer", scope: !2604, file: !7, line: 139, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2604, file: !7, line: 136, size: 64, elements: !2635)
!2635 = !{!2636, !2637}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "pData", scope: !2634, file: !7, line: 137, baseType: !322, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "iSize", scope: !2634, file: !7, line: 138, baseType: !8, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "SysEx", scope: !2559, file: !7, line: 145, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2559, file: !7, line: 142, size: 64, elements: !2640)
!2640 = !{!2641, !2642}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "pData", scope: !2639, file: !7, line: 143, baseType: !322, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "iSize", scope: !2639, file: !7, line: 144, baseType: !8, size: 32, offset: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "iLastMsgType", scope: !2548, file: !7, line: 149, baseType: !362, size: 32, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "iLastMsgChnl", scope: !2548, file: !7, line: 150, baseType: !323, size: 8, offset: 480)
!2645 = !DILocalVariable(name: "_pMF", arg: 1, scope: !2543, file: !3, line: 965, type: !711)
!2646 = !DILocation(line: 965, column: 46, scope: !2543)
!2647 = !DILocalVariable(name: "iTrack", arg: 2, scope: !2543, file: !3, line: 965, type: !8)
!2648 = !DILocation(line: 965, column: 56, scope: !2543)
!2649 = !DILocalVariable(name: "pMsg", arg: 3, scope: !2543, file: !3, line: 965, type: !2546)
!2650 = !DILocation(line: 965, column: 74, scope: !2543)
!2651 = !DILocalVariable(name: "pTrack", scope: !2543, file: !3, line: 967, type: !1307)
!2652 = !DILocation(line: 967, column: 18, scope: !2543)
!2653 = !DILocalVariable(name: "bptr", scope: !2543, file: !3, line: 968, type: !322)
!2654 = !DILocation(line: 968, column: 7, scope: !2543)
!2655 = !DILocalVariable(name: "pMsgDataPtr", scope: !2543, file: !3, line: 968, type: !322)
!2656 = !DILocation(line: 968, column: 14, scope: !2543)
!2657 = !DILocalVariable(name: "sz", scope: !2543, file: !3, line: 969, type: !8)
!2658 = !DILocation(line: 969, column: 5, scope: !2543)
!2659 = !DILocalVariable(name: "pMF", scope: !2543, file: !3, line: 971, type: !240)
!2660 = !DILocation(line: 971, column: 2, scope: !2543)
!2661 = !DILocation(line: 972, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 972, column: 6)
!2663 = !DILocation(line: 972, column: 6, scope: !2543)
!2664 = !DILocation(line: 972, column: 31, scope: !2662)
!2665 = !DILocation(line: 974, column: 12, scope: !2543)
!2666 = !DILocation(line: 974, column: 17, scope: !2543)
!2667 = !DILocation(line: 974, column: 23, scope: !2543)
!2668 = !DILocation(line: 974, column: 9, scope: !2543)
!2669 = !DILocation(line: 976, column: 6, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 976, column: 6)
!2671 = !DILocation(line: 976, column: 14, scope: !2670)
!2672 = !DILocation(line: 976, column: 21, scope: !2670)
!2673 = !DILocation(line: 976, column: 29, scope: !2670)
!2674 = !DILocation(line: 976, column: 18, scope: !2670)
!2675 = !DILocation(line: 976, column: 6, scope: !2543)
!2676 = !DILocation(line: 977, column: 3, scope: !2670)
!2677 = !DILocation(line: 979, column: 32, scope: !2543)
!2678 = !DILocation(line: 979, column: 40, scope: !2543)
!2679 = !DILocation(line: 979, column: 46, scope: !2543)
!2680 = !DILocation(line: 979, column: 52, scope: !2543)
!2681 = !DILocation(line: 979, column: 16, scope: !2543)
!2682 = !DILocation(line: 979, column: 2, scope: !2543)
!2683 = !DILocation(line: 979, column: 10, scope: !2543)
!2684 = !DILocation(line: 979, column: 14, scope: !2543)
!2685 = !DILocation(line: 980, column: 17, scope: !2543)
!2686 = !DILocation(line: 980, column: 23, scope: !2543)
!2687 = !DILocation(line: 980, column: 2, scope: !2543)
!2688 = !DILocation(line: 980, column: 10, scope: !2543)
!2689 = !DILocation(line: 980, column: 14, scope: !2543)
!2690 = !DILocation(line: 982, column: 19, scope: !2543)
!2691 = !DILocation(line: 982, column: 27, scope: !2543)
!2692 = !DILocation(line: 982, column: 2, scope: !2543)
!2693 = !DILocation(line: 982, column: 8, scope: !2543)
!2694 = !DILocation(line: 982, column: 17, scope: !2543)
!2695 = !DILocation(line: 984, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 984, column: 6)
!2697 = !DILocation(line: 984, column: 15, scope: !2696)
!2698 = !DILocation(line: 984, column: 6, scope: !2696)
!2699 = !DILocation(line: 984, column: 19, scope: !2696)
!2700 = !DILocation(line: 984, column: 6, scope: !2543)
!2701 = !DILocation(line: 986, column: 31, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 985, column: 3)
!2703 = !DILocation(line: 986, column: 39, scope: !2702)
!2704 = !DILocation(line: 986, column: 30, scope: !2702)
!2705 = !DILocation(line: 986, column: 29, scope: !2702)
!2706 = !DILocation(line: 986, column: 44, scope: !2702)
!2707 = !DILocation(line: 986, column: 3, scope: !2702)
!2708 = !DILocation(line: 986, column: 9, scope: !2702)
!2709 = !DILocation(line: 986, column: 15, scope: !2702)
!2710 = !DILocation(line: 987, column: 17, scope: !2702)
!2711 = !DILocation(line: 987, column: 25, scope: !2702)
!2712 = !DILocation(line: 987, column: 28, scope: !2702)
!2713 = !DILocation(line: 987, column: 15, scope: !2702)
!2714 = !DILocation(line: 991, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 991, column: 7)
!2716 = !DILocation(line: 991, column: 13, scope: !2715)
!2717 = !DILocation(line: 991, column: 19, scope: !2715)
!2718 = !DILocation(line: 991, column: 7, scope: !2702)
!2719 = !DILocation(line: 992, column: 31, scope: !2715)
!2720 = !DILocation(line: 992, column: 39, scope: !2715)
!2721 = !DILocation(line: 992, column: 30, scope: !2715)
!2722 = !DILocation(line: 992, column: 18, scope: !2715)
!2723 = !DILocation(line: 992, column: 4, scope: !2715)
!2724 = !DILocation(line: 992, column: 10, scope: !2715)
!2725 = !DILocation(line: 992, column: 16, scope: !2715)
!2726 = !DILocation(line: 993, column: 3, scope: !2702)
!2727 = !DILocation(line: 996, column: 17, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 995, column: 3)
!2729 = !DILocation(line: 996, column: 23, scope: !2728)
!2730 = !DILocation(line: 996, column: 3, scope: !2728)
!2731 = !DILocation(line: 996, column: 9, scope: !2728)
!2732 = !DILocation(line: 996, column: 15, scope: !2728)
!2733 = !DILocation(line: 997, column: 17, scope: !2728)
!2734 = !DILocation(line: 997, column: 25, scope: !2728)
!2735 = !DILocation(line: 997, column: 15, scope: !2728)
!2736 = !DILocation(line: 1000, column: 34, scope: !2543)
!2737 = !DILocation(line: 1000, column: 40, scope: !2543)
!2738 = !DILocation(line: 1000, column: 2, scope: !2543)
!2739 = !DILocation(line: 1000, column: 8, scope: !2543)
!2740 = !DILocation(line: 1000, column: 21, scope: !2543)
!2741 = !DILocation(line: 1001, column: 32, scope: !2543)
!2742 = !DILocation(line: 1001, column: 40, scope: !2543)
!2743 = !DILocation(line: 1001, column: 31, scope: !2543)
!2744 = !DILocation(line: 1001, column: 30, scope: !2543)
!2745 = !DILocation(line: 1001, column: 45, scope: !2543)
!2746 = !DILocation(line: 1001, column: 23, scope: !2543)
!2747 = !DILocation(line: 1001, column: 52, scope: !2543)
!2748 = !DILocation(line: 1001, column: 2, scope: !2543)
!2749 = !DILocation(line: 1001, column: 8, scope: !2543)
!2750 = !DILocation(line: 1001, column: 21, scope: !2543)
!2751 = !DILocation(line: 1003, column: 9, scope: !2543)
!2752 = !DILocation(line: 1003, column: 15, scope: !2543)
!2753 = !DILocation(line: 1003, column: 2, scope: !2543)
!2754 = !DILocation(line: 1006, column: 40, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 1004, column: 3)
!2756 = !DILocation(line: 1006, column: 46, scope: !2755)
!2757 = !DILocation(line: 1006, column: 8, scope: !2755)
!2758 = !DILocation(line: 1006, column: 14, scope: !2755)
!2759 = !DILocation(line: 1006, column: 22, scope: !2755)
!2760 = !DILocation(line: 1006, column: 29, scope: !2755)
!2761 = !DILocation(line: 1006, column: 38, scope: !2755)
!2762 = !DILocation(line: 1007, column: 39, scope: !2755)
!2763 = !DILocation(line: 1007, column: 37, scope: !2755)
!2764 = !DILocation(line: 1007, column: 8, scope: !2755)
!2765 = !DILocation(line: 1007, column: 14, scope: !2755)
!2766 = !DILocation(line: 1007, column: 22, scope: !2755)
!2767 = !DILocation(line: 1007, column: 29, scope: !2755)
!2768 = !DILocation(line: 1007, column: 35, scope: !2755)
!2769 = !DILocation(line: 1008, column: 41, scope: !2755)
!2770 = !DILocation(line: 1008, column: 52, scope: !2755)
!2771 = !DILocation(line: 1008, column: 39, scope: !2755)
!2772 = !DILocation(line: 1008, column: 8, scope: !2755)
!2773 = !DILocation(line: 1008, column: 14, scope: !2755)
!2774 = !DILocation(line: 1008, column: 22, scope: !2755)
!2775 = !DILocation(line: 1008, column: 29, scope: !2755)
!2776 = !DILocation(line: 1008, column: 37, scope: !2755)
!2777 = !DILocation(line: 1009, column: 8, scope: !2755)
!2778 = !DILocation(line: 1009, column: 14, scope: !2755)
!2779 = !DILocation(line: 1009, column: 23, scope: !2755)
!2780 = !DILocation(line: 1010, column: 8, scope: !2755)
!2781 = !DILocation(line: 1013, column: 41, scope: !2755)
!2782 = !DILocation(line: 1013, column: 47, scope: !2755)
!2783 = !DILocation(line: 1013, column: 8, scope: !2755)
!2784 = !DILocation(line: 1013, column: 14, scope: !2755)
!2785 = !DILocation(line: 1013, column: 22, scope: !2755)
!2786 = !DILocation(line: 1013, column: 30, scope: !2755)
!2787 = !DILocation(line: 1013, column: 39, scope: !2755)
!2788 = !DILocation(line: 1014, column: 40, scope: !2755)
!2789 = !DILocation(line: 1014, column: 38, scope: !2755)
!2790 = !DILocation(line: 1014, column: 8, scope: !2755)
!2791 = !DILocation(line: 1014, column: 14, scope: !2755)
!2792 = !DILocation(line: 1014, column: 22, scope: !2755)
!2793 = !DILocation(line: 1014, column: 30, scope: !2755)
!2794 = !DILocation(line: 1014, column: 36, scope: !2755)
!2795 = !DILocation(line: 1015, column: 8, scope: !2755)
!2796 = !DILocation(line: 1015, column: 14, scope: !2755)
!2797 = !DILocation(line: 1015, column: 23, scope: !2755)
!2798 = !DILocation(line: 1016, column: 8, scope: !2755)
!2799 = !DILocation(line: 1019, column: 49, scope: !2755)
!2800 = !DILocation(line: 1019, column: 55, scope: !2755)
!2801 = !DILocation(line: 1019, column: 8, scope: !2755)
!2802 = !DILocation(line: 1019, column: 14, scope: !2755)
!2803 = !DILocation(line: 1019, column: 22, scope: !2755)
!2804 = !DILocation(line: 1019, column: 38, scope: !2755)
!2805 = !DILocation(line: 1019, column: 47, scope: !2755)
!2806 = !DILocation(line: 1020, column: 48, scope: !2755)
!2807 = !DILocation(line: 1020, column: 46, scope: !2755)
!2808 = !DILocation(line: 1020, column: 8, scope: !2755)
!2809 = !DILocation(line: 1020, column: 14, scope: !2755)
!2810 = !DILocation(line: 1020, column: 22, scope: !2755)
!2811 = !DILocation(line: 1020, column: 38, scope: !2755)
!2812 = !DILocation(line: 1020, column: 44, scope: !2755)
!2813 = !DILocation(line: 1021, column: 52, scope: !2755)
!2814 = !DILocation(line: 1021, column: 63, scope: !2755)
!2815 = !DILocation(line: 1021, column: 50, scope: !2755)
!2816 = !DILocation(line: 1021, column: 8, scope: !2755)
!2817 = !DILocation(line: 1021, column: 14, scope: !2755)
!2818 = !DILocation(line: 1021, column: 22, scope: !2755)
!2819 = !DILocation(line: 1021, column: 38, scope: !2755)
!2820 = !DILocation(line: 1021, column: 48, scope: !2755)
!2821 = !DILocation(line: 1022, column: 8, scope: !2755)
!2822 = !DILocation(line: 1022, column: 14, scope: !2755)
!2823 = !DILocation(line: 1022, column: 23, scope: !2755)
!2824 = !DILocation(line: 1023, column: 8, scope: !2755)
!2825 = !DILocation(line: 1026, column: 47, scope: !2755)
!2826 = !DILocation(line: 1026, column: 53, scope: !2755)
!2827 = !DILocation(line: 1026, column: 8, scope: !2755)
!2828 = !DILocation(line: 1026, column: 14, scope: !2755)
!2829 = !DILocation(line: 1026, column: 22, scope: !2755)
!2830 = !DILocation(line: 1026, column: 36, scope: !2755)
!2831 = !DILocation(line: 1026, column: 45, scope: !2755)
!2832 = !DILocation(line: 1027, column: 59, scope: !2755)
!2833 = !DILocation(line: 1027, column: 57, scope: !2755)
!2834 = !DILocation(line: 1027, column: 47, scope: !2755)
!2835 = !DILocation(line: 1027, column: 8, scope: !2755)
!2836 = !DILocation(line: 1027, column: 14, scope: !2755)
!2837 = !DILocation(line: 1027, column: 22, scope: !2755)
!2838 = !DILocation(line: 1027, column: 36, scope: !2755)
!2839 = !DILocation(line: 1027, column: 45, scope: !2755)
!2840 = !DILocation(line: 1028, column: 47, scope: !2755)
!2841 = !DILocation(line: 1028, column: 58, scope: !2755)
!2842 = !DILocation(line: 1028, column: 45, scope: !2755)
!2843 = !DILocation(line: 1028, column: 8, scope: !2755)
!2844 = !DILocation(line: 1028, column: 14, scope: !2755)
!2845 = !DILocation(line: 1028, column: 22, scope: !2755)
!2846 = !DILocation(line: 1028, column: 36, scope: !2755)
!2847 = !DILocation(line: 1028, column: 43, scope: !2755)
!2848 = !DILocation(line: 1029, column: 8, scope: !2755)
!2849 = !DILocation(line: 1029, column: 14, scope: !2755)
!2850 = !DILocation(line: 1029, column: 23, scope: !2755)
!2851 = !DILocation(line: 1030, column: 8, scope: !2755)
!2852 = !DILocation(line: 1033, column: 47, scope: !2755)
!2853 = !DILocation(line: 1033, column: 53, scope: !2755)
!2854 = !DILocation(line: 1033, column: 8, scope: !2755)
!2855 = !DILocation(line: 1033, column: 14, scope: !2755)
!2856 = !DILocation(line: 1033, column: 22, scope: !2755)
!2857 = !DILocation(line: 1033, column: 36, scope: !2755)
!2858 = !DILocation(line: 1033, column: 45, scope: !2755)
!2859 = !DILocation(line: 1034, column: 49, scope: !2755)
!2860 = !DILocation(line: 1034, column: 47, scope: !2755)
!2861 = !DILocation(line: 1034, column: 8, scope: !2755)
!2862 = !DILocation(line: 1034, column: 14, scope: !2755)
!2863 = !DILocation(line: 1034, column: 22, scope: !2755)
!2864 = !DILocation(line: 1034, column: 36, scope: !2755)
!2865 = !DILocation(line: 1034, column: 45, scope: !2755)
!2866 = !DILocation(line: 1035, column: 8, scope: !2755)
!2867 = !DILocation(line: 1035, column: 14, scope: !2755)
!2868 = !DILocation(line: 1035, column: 23, scope: !2755)
!2869 = !DILocation(line: 1036, column: 8, scope: !2755)
!2870 = !DILocation(line: 1039, column: 48, scope: !2755)
!2871 = !DILocation(line: 1039, column: 54, scope: !2755)
!2872 = !DILocation(line: 1039, column: 8, scope: !2755)
!2873 = !DILocation(line: 1039, column: 14, scope: !2755)
!2874 = !DILocation(line: 1039, column: 22, scope: !2755)
!2875 = !DILocation(line: 1039, column: 37, scope: !2755)
!2876 = !DILocation(line: 1039, column: 46, scope: !2755)
!2877 = !DILocation(line: 1040, column: 51, scope: !2755)
!2878 = !DILocation(line: 1040, column: 49, scope: !2755)
!2879 = !DILocation(line: 1040, column: 8, scope: !2755)
!2880 = !DILocation(line: 1040, column: 14, scope: !2755)
!2881 = !DILocation(line: 1040, column: 22, scope: !2755)
!2882 = !DILocation(line: 1040, column: 37, scope: !2755)
!2883 = !DILocation(line: 1040, column: 47, scope: !2755)
!2884 = !DILocation(line: 1041, column: 8, scope: !2755)
!2885 = !DILocation(line: 1041, column: 14, scope: !2755)
!2886 = !DILocation(line: 1041, column: 23, scope: !2755)
!2887 = !DILocation(line: 1042, column: 8, scope: !2755)
!2888 = !DILocation(line: 1045, column: 44, scope: !2755)
!2889 = !DILocation(line: 1045, column: 50, scope: !2755)
!2890 = !DILocation(line: 1045, column: 8, scope: !2755)
!2891 = !DILocation(line: 1045, column: 14, scope: !2755)
!2892 = !DILocation(line: 1045, column: 22, scope: !2755)
!2893 = !DILocation(line: 1045, column: 33, scope: !2755)
!2894 = !DILocation(line: 1045, column: 42, scope: !2755)
!2895 = !DILocation(line: 1046, column: 44, scope: !2755)
!2896 = !DILocation(line: 1046, column: 42, scope: !2755)
!2897 = !DILocation(line: 1046, column: 62, scope: !2755)
!2898 = !DILocation(line: 1046, column: 73, scope: !2755)
!2899 = !DILocation(line: 1046, column: 60, scope: !2755)
!2900 = !DILocation(line: 1046, column: 77, scope: !2755)
!2901 = !DILocation(line: 1046, column: 57, scope: !2755)
!2902 = !DILocation(line: 1046, column: 8, scope: !2755)
!2903 = !DILocation(line: 1046, column: 14, scope: !2755)
!2904 = !DILocation(line: 1046, column: 22, scope: !2755)
!2905 = !DILocation(line: 1046, column: 33, scope: !2755)
!2906 = !DILocation(line: 1046, column: 40, scope: !2755)
!2907 = !DILocation(line: 1047, column: 8, scope: !2755)
!2908 = !DILocation(line: 1047, column: 14, scope: !2755)
!2909 = !DILocation(line: 1047, column: 22, scope: !2755)
!2910 = !DILocation(line: 1047, column: 33, scope: !2755)
!2911 = !DILocation(line: 1047, column: 40, scope: !2755)
!2912 = !DILocation(line: 1048, column: 8, scope: !2755)
!2913 = !DILocation(line: 1048, column: 14, scope: !2755)
!2914 = !DILocation(line: 1048, column: 23, scope: !2755)
!2915 = !DILocation(line: 1049, column: 8, scope: !2755)
!2916 = !DILocation(line: 1054, column: 15, scope: !2755)
!2917 = !DILocation(line: 1054, column: 23, scope: !2755)
!2918 = !DILocation(line: 1054, column: 13, scope: !2755)
!2919 = !DILocation(line: 1055, column: 54, scope: !2755)
!2920 = !DILocation(line: 1055, column: 62, scope: !2755)
!2921 = !DILocation(line: 1055, column: 65, scope: !2755)
!2922 = !DILocation(line: 1055, column: 52, scope: !2755)
!2923 = !DILocation(line: 1055, column: 40, scope: !2755)
!2924 = !DILocation(line: 1055, column: 8, scope: !2755)
!2925 = !DILocation(line: 1055, column: 14, scope: !2755)
!2926 = !DILocation(line: 1055, column: 22, scope: !2755)
!2927 = !DILocation(line: 1055, column: 32, scope: !2755)
!2928 = !DILocation(line: 1055, column: 38, scope: !2755)
!2929 = !DILocation(line: 1056, column: 38, scope: !2755)
!2930 = !DILocation(line: 1056, column: 46, scope: !2755)
!2931 = !DILocation(line: 1056, column: 49, scope: !2755)
!2932 = !DILocation(line: 1056, column: 54, scope: !2755)
!2933 = !DILocation(line: 1056, column: 60, scope: !2755)
!2934 = !DILocation(line: 1056, column: 22, scope: !2755)
!2935 = !DILocation(line: 1056, column: 8, scope: !2755)
!2936 = !DILocation(line: 1056, column: 16, scope: !2755)
!2937 = !DILocation(line: 1056, column: 20, scope: !2755)
!2938 = !DILocation(line: 1057, column: 14, scope: !2755)
!2939 = !DILocation(line: 1057, column: 22, scope: !2755)
!2940 = !DILocation(line: 1057, column: 26, scope: !2755)
!2941 = !DILocation(line: 1057, column: 25, scope: !2755)
!2942 = !DILocation(line: 1057, column: 32, scope: !2755)
!2943 = !DILocation(line: 1057, column: 38, scope: !2755)
!2944 = !DILocation(line: 1057, column: 31, scope: !2755)
!2945 = !DILocation(line: 1057, column: 11, scope: !2755)
!2946 = !DILocation(line: 1059, column: 35, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 1059, column: 12)
!2948 = !DILocation(line: 1059, column: 41, scope: !2947)
!2949 = !DILocation(line: 1059, column: 49, scope: !2947)
!2950 = !DILocation(line: 1059, column: 54, scope: !2947)
!2951 = !DILocation(line: 1059, column: 12, scope: !2947)
!2952 = !DILocation(line: 1059, column: 65, scope: !2947)
!2953 = !DILocation(line: 1059, column: 12, scope: !2755)
!2954 = !DILocation(line: 1060, column: 9, scope: !2947)
!2955 = !DILocation(line: 1063, column: 15, scope: !2755)
!2956 = !DILocation(line: 1063, column: 21, scope: !2755)
!2957 = !DILocation(line: 1063, column: 27, scope: !2755)
!2958 = !DILocation(line: 1063, column: 33, scope: !2755)
!2959 = !DILocation(line: 1063, column: 8, scope: !2755)
!2960 = !DILocation(line: 1066, column: 15, scope: !2755)
!2961 = !DILocation(line: 1066, column: 21, scope: !2755)
!2962 = !DILocation(line: 1066, column: 29, scope: !2755)
!2963 = !DILocation(line: 1066, column: 39, scope: !2755)
!2964 = !DILocation(line: 1066, column: 8, scope: !2755)
!2965 = !DILocation(line: 1069, column: 54, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 1067, column: 9)
!2967 = !DILocation(line: 1069, column: 62, scope: !2966)
!2968 = !DILocation(line: 1069, column: 65, scope: !2966)
!2969 = !DILocation(line: 1069, column: 52, scope: !2966)
!2970 = !DILocation(line: 1069, column: 11, scope: !2966)
!2971 = !DILocation(line: 1069, column: 17, scope: !2966)
!2972 = !DILocation(line: 1069, column: 25, scope: !2966)
!2973 = !DILocation(line: 1069, column: 35, scope: !2966)
!2974 = !DILocation(line: 1069, column: 40, scope: !2966)
!2975 = !DILocation(line: 1069, column: 50, scope: !2966)
!2976 = !DILocation(line: 1070, column: 11, scope: !2966)
!2977 = !DILocation(line: 1072, column: 60, scope: !2966)
!2978 = !DILocation(line: 1072, column: 68, scope: !2966)
!2979 = !DILocation(line: 1072, column: 71, scope: !2966)
!2980 = !DILocation(line: 1072, column: 58, scope: !2966)
!2981 = !DILocation(line: 1072, column: 11, scope: !2966)
!2982 = !DILocation(line: 1072, column: 17, scope: !2966)
!2983 = !DILocation(line: 1072, column: 25, scope: !2966)
!2984 = !DILocation(line: 1072, column: 35, scope: !2966)
!2985 = !DILocation(line: 1072, column: 40, scope: !2966)
!2986 = !DILocation(line: 1072, column: 56, scope: !2966)
!2987 = !DILocation(line: 1073, column: 11, scope: !2966)
!2988 = !DILocation(line: 1082, column: 53, scope: !2966)
!2989 = !DILocation(line: 1082, column: 61, scope: !2966)
!2990 = !DILocation(line: 1082, column: 11, scope: !2966)
!2991 = !DILocation(line: 1082, column: 17, scope: !2966)
!2992 = !DILocation(line: 1082, column: 25, scope: !2966)
!2993 = !DILocation(line: 1082, column: 35, scope: !2966)
!2994 = !DILocation(line: 1082, column: 40, scope: !2966)
!2995 = !DILocation(line: 1082, column: 45, scope: !2966)
!2996 = !DILocation(line: 1082, column: 51, scope: !2966)
!2997 = !DILocation(line: 1083, column: 11, scope: !2966)
!2998 = !DILocation(line: 1086, column: 11, scope: !2966)
!2999 = !DILocalVariable(name: "us", scope: !3000, file: !3, line: 1089, type: !315)
!3000 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1088, column: 11)
!3001 = !DILocation(line: 1089, column: 17, scope: !3000)
!3002 = !DILocation(line: 1089, column: 26, scope: !3000)
!3003 = !DILocation(line: 1089, column: 34, scope: !3000)
!3004 = !DILocation(line: 1089, column: 37, scope: !3000)
!3005 = !DILocation(line: 1089, column: 24, scope: !3000)
!3006 = !DILocation(line: 1089, column: 23, scope: !3000)
!3007 = !DILocation(line: 1089, column: 41, scope: !3000)
!3008 = !DILocation(line: 1089, column: 51, scope: !3000)
!3009 = !DILocation(line: 1089, column: 59, scope: !3000)
!3010 = !DILocation(line: 1089, column: 62, scope: !3000)
!3011 = !DILocation(line: 1089, column: 49, scope: !3000)
!3012 = !DILocation(line: 1089, column: 48, scope: !3000)
!3013 = !DILocation(line: 1089, column: 66, scope: !3000)
!3014 = !DILocation(line: 1089, column: 46, scope: !3000)
!3015 = !DILocation(line: 1089, column: 74, scope: !3000)
!3016 = !DILocation(line: 1089, column: 82, scope: !3000)
!3017 = !DILocation(line: 1089, column: 85, scope: !3000)
!3018 = !DILocation(line: 1089, column: 72, scope: !3000)
!3019 = !DILocation(line: 1089, column: 71, scope: !3000)
!3020 = !DILocation(line: 1089, column: 70, scope: !3000)
!3021 = !DILocation(line: 1090, column: 63, scope: !3000)
!3022 = !DILocation(line: 1090, column: 62, scope: !3000)
!3023 = !DILocation(line: 1090, column: 11, scope: !3000)
!3024 = !DILocation(line: 1090, column: 17, scope: !3000)
!3025 = !DILocation(line: 1090, column: 25, scope: !3000)
!3026 = !DILocation(line: 1090, column: 35, scope: !3000)
!3027 = !DILocation(line: 1090, column: 40, scope: !3000)
!3028 = !DILocation(line: 1090, column: 46, scope: !3000)
!3029 = !DILocation(line: 1090, column: 51, scope: !3000)
!3030 = !DILocation(line: 1092, column: 11, scope: !2966)
!3031 = !DILocation(line: 1094, column: 57, scope: !2966)
!3032 = !DILocation(line: 1094, column: 65, scope: !2966)
!3033 = !DILocation(line: 1094, column: 68, scope: !2966)
!3034 = !DILocation(line: 1094, column: 55, scope: !2966)
!3035 = !DILocation(line: 1094, column: 11, scope: !2966)
!3036 = !DILocation(line: 1094, column: 17, scope: !2966)
!3037 = !DILocation(line: 1094, column: 25, scope: !2966)
!3038 = !DILocation(line: 1094, column: 35, scope: !2966)
!3039 = !DILocation(line: 1094, column: 40, scope: !2966)
!3040 = !DILocation(line: 1094, column: 46, scope: !2966)
!3041 = !DILocation(line: 1094, column: 53, scope: !2966)
!3042 = !DILocation(line: 1095, column: 55, scope: !2966)
!3043 = !DILocation(line: 1095, column: 63, scope: !2966)
!3044 = !DILocation(line: 1095, column: 66, scope: !2966)
!3045 = !DILocation(line: 1095, column: 53, scope: !2966)
!3046 = !DILocation(line: 1095, column: 11, scope: !2966)
!3047 = !DILocation(line: 1095, column: 17, scope: !2966)
!3048 = !DILocation(line: 1095, column: 25, scope: !2966)
!3049 = !DILocation(line: 1095, column: 35, scope: !2966)
!3050 = !DILocation(line: 1095, column: 40, scope: !2966)
!3051 = !DILocation(line: 1095, column: 46, scope: !2966)
!3052 = !DILocation(line: 1095, column: 51, scope: !2966)
!3053 = !DILocation(line: 1096, column: 56, scope: !2966)
!3054 = !DILocation(line: 1096, column: 64, scope: !2966)
!3055 = !DILocation(line: 1096, column: 67, scope: !2966)
!3056 = !DILocation(line: 1096, column: 54, scope: !2966)
!3057 = !DILocation(line: 1096, column: 11, scope: !2966)
!3058 = !DILocation(line: 1096, column: 17, scope: !2966)
!3059 = !DILocation(line: 1096, column: 25, scope: !2966)
!3060 = !DILocation(line: 1096, column: 35, scope: !2966)
!3061 = !DILocation(line: 1096, column: 40, scope: !2966)
!3062 = !DILocation(line: 1096, column: 46, scope: !2966)
!3063 = !DILocation(line: 1096, column: 52, scope: !2966)
!3064 = !DILocation(line: 1097, column: 58, scope: !2966)
!3065 = !DILocation(line: 1097, column: 66, scope: !2966)
!3066 = !DILocation(line: 1097, column: 69, scope: !2966)
!3067 = !DILocation(line: 1097, column: 56, scope: !2966)
!3068 = !DILocation(line: 1097, column: 11, scope: !2966)
!3069 = !DILocation(line: 1097, column: 17, scope: !2966)
!3070 = !DILocation(line: 1097, column: 25, scope: !2966)
!3071 = !DILocation(line: 1097, column: 35, scope: !2966)
!3072 = !DILocation(line: 1097, column: 40, scope: !2966)
!3073 = !DILocation(line: 1097, column: 46, scope: !2966)
!3074 = !DILocation(line: 1097, column: 54, scope: !2966)
!3075 = !DILocation(line: 1098, column: 54, scope: !2966)
!3076 = !DILocation(line: 1098, column: 62, scope: !2966)
!3077 = !DILocation(line: 1098, column: 65, scope: !2966)
!3078 = !DILocation(line: 1098, column: 52, scope: !2966)
!3079 = !DILocation(line: 1098, column: 11, scope: !2966)
!3080 = !DILocation(line: 1098, column: 17, scope: !2966)
!3081 = !DILocation(line: 1098, column: 25, scope: !2966)
!3082 = !DILocation(line: 1098, column: 35, scope: !2966)
!3083 = !DILocation(line: 1098, column: 40, scope: !2966)
!3084 = !DILocation(line: 1098, column: 46, scope: !2966)
!3085 = !DILocation(line: 1098, column: 50, scope: !2966)
!3086 = !DILocation(line: 1099, column: 11, scope: !2966)
!3087 = !DILocation(line: 1101, column: 57, scope: !2966)
!3088 = !DILocation(line: 1101, column: 65, scope: !2966)
!3089 = !DILocation(line: 1101, column: 68, scope: !2966)
!3090 = !DILocation(line: 1101, column: 55, scope: !2966)
!3091 = !DILocation(line: 1101, column: 11, scope: !2966)
!3092 = !DILocation(line: 1101, column: 17, scope: !2966)
!3093 = !DILocation(line: 1101, column: 25, scope: !2966)
!3094 = !DILocation(line: 1101, column: 35, scope: !2966)
!3095 = !DILocation(line: 1101, column: 40, scope: !2966)
!3096 = !DILocation(line: 1101, column: 48, scope: !2966)
!3097 = !DILocation(line: 1101, column: 53, scope: !2966)
!3098 = !DILocation(line: 1102, column: 59, scope: !2966)
!3099 = !DILocation(line: 1102, column: 67, scope: !2966)
!3100 = !DILocation(line: 1102, column: 70, scope: !2966)
!3101 = !DILocation(line: 1102, column: 57, scope: !2966)
!3102 = !DILocation(line: 1102, column: 74, scope: !2966)
!3103 = !DILocation(line: 1102, column: 11, scope: !2966)
!3104 = !DILocation(line: 1102, column: 17, scope: !2966)
!3105 = !DILocation(line: 1102, column: 25, scope: !2966)
!3106 = !DILocation(line: 1102, column: 35, scope: !2966)
!3107 = !DILocation(line: 1102, column: 40, scope: !2966)
!3108 = !DILocation(line: 1102, column: 48, scope: !2966)
!3109 = !DILocation(line: 1102, column: 55, scope: !2966)
!3110 = !DILocation(line: 1104, column: 11, scope: !2966)
!3111 = !DILocation(line: 1106, column: 16, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1106, column: 15)
!3113 = !DILocation(line: 1106, column: 24, scope: !3112)
!3114 = !DILocation(line: 1106, column: 15, scope: !3112)
!3115 = !DILocation(line: 1106, column: 28, scope: !3112)
!3116 = !DILocation(line: 1106, column: 15, scope: !2966)
!3117 = !DILocation(line: 1109, column: 62, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 1107, column: 12)
!3119 = !DILocation(line: 1109, column: 70, scope: !3118)
!3120 = !DILocation(line: 1109, column: 61, scope: !3118)
!3121 = !DILocation(line: 1109, column: 60, scope: !3118)
!3122 = !DILocation(line: 1109, column: 74, scope: !3118)
!3123 = !DILocation(line: 1109, column: 12, scope: !3118)
!3124 = !DILocation(line: 1109, column: 18, scope: !3118)
!3125 = !DILocation(line: 1109, column: 26, scope: !3118)
!3126 = !DILocation(line: 1109, column: 36, scope: !3118)
!3127 = !DILocation(line: 1109, column: 41, scope: !3118)
!3128 = !DILocation(line: 1109, column: 48, scope: !3118)
!3129 = !DILocation(line: 1109, column: 53, scope: !3118)
!3130 = !DILocation(line: 1110, column: 12, scope: !3118)
!3131 = !DILocation(line: 1110, column: 18, scope: !3118)
!3132 = !DILocation(line: 1110, column: 26, scope: !3118)
!3133 = !DILocation(line: 1110, column: 36, scope: !3118)
!3134 = !DILocation(line: 1110, column: 41, scope: !3118)
!3135 = !DILocation(line: 1110, column: 48, scope: !3118)
!3136 = !DILocation(line: 1110, column: 53, scope: !3118)
!3137 = !DILocation(line: 1111, column: 12, scope: !3118)
!3138 = !DILocation(line: 1114, column: 71, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 1113, column: 12)
!3140 = !DILocation(line: 1114, column: 79, scope: !3139)
!3141 = !DILocation(line: 1114, column: 70, scope: !3139)
!3142 = !DILocation(line: 1114, column: 82, scope: !3139)
!3143 = !DILocation(line: 1114, column: 12, scope: !3139)
!3144 = !DILocation(line: 1114, column: 18, scope: !3139)
!3145 = !DILocation(line: 1114, column: 26, scope: !3139)
!3146 = !DILocation(line: 1114, column: 36, scope: !3139)
!3147 = !DILocation(line: 1114, column: 41, scope: !3139)
!3148 = !DILocation(line: 1114, column: 48, scope: !3139)
!3149 = !DILocation(line: 1114, column: 53, scope: !3139)
!3150 = !DILocation(line: 1116, column: 17, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1116, column: 15)
!3152 = !DILocation(line: 1116, column: 25, scope: !3151)
!3153 = !DILocation(line: 1116, column: 28, scope: !3151)
!3154 = !DILocation(line: 1116, column: 15, scope: !3151)
!3155 = !DILocation(line: 1116, column: 15, scope: !2966)
!3156 = !DILocation(line: 1117, column: 12, scope: !3151)
!3157 = !DILocation(line: 1117, column: 18, scope: !3151)
!3158 = !DILocation(line: 1117, column: 26, scope: !3151)
!3159 = !DILocation(line: 1117, column: 36, scope: !3151)
!3160 = !DILocation(line: 1117, column: 41, scope: !3151)
!3161 = !DILocation(line: 1117, column: 48, scope: !3151)
!3162 = !DILocation(line: 1117, column: 53, scope: !3151)
!3163 = !DILocation(line: 1118, column: 11, scope: !2966)
!3164 = !DILocation(line: 1120, column: 58, scope: !2966)
!3165 = !DILocation(line: 1120, column: 64, scope: !2966)
!3166 = !DILocation(line: 1120, column: 11, scope: !2966)
!3167 = !DILocation(line: 1120, column: 17, scope: !2966)
!3168 = !DILocation(line: 1120, column: 25, scope: !2966)
!3169 = !DILocation(line: 1120, column: 35, scope: !2966)
!3170 = !DILocation(line: 1120, column: 40, scope: !2966)
!3171 = !DILocation(line: 1120, column: 50, scope: !2966)
!3172 = !DILocation(line: 1120, column: 56, scope: !2966)
!3173 = !DILocation(line: 1121, column: 58, scope: !2966)
!3174 = !DILocation(line: 1121, column: 66, scope: !2966)
!3175 = !DILocation(line: 1121, column: 11, scope: !2966)
!3176 = !DILocation(line: 1121, column: 17, scope: !2966)
!3177 = !DILocation(line: 1121, column: 25, scope: !2966)
!3178 = !DILocation(line: 1121, column: 35, scope: !2966)
!3179 = !DILocation(line: 1121, column: 40, scope: !2966)
!3180 = !DILocation(line: 1121, column: 50, scope: !2966)
!3181 = !DILocation(line: 1121, column: 56, scope: !2966)
!3182 = !DILocation(line: 1122, column: 11, scope: !2966)
!3183 = !DILocation(line: 1125, column: 23, scope: !2755)
!3184 = !DILocation(line: 1125, column: 29, scope: !2755)
!3185 = !DILocation(line: 1125, column: 8, scope: !2755)
!3186 = !DILocation(line: 1125, column: 16, scope: !2755)
!3187 = !DILocation(line: 1125, column: 20, scope: !2755)
!3188 = !DILocation(line: 1126, column: 25, scope: !2755)
!3189 = !DILocation(line: 1126, column: 8, scope: !2755)
!3190 = !DILocation(line: 1126, column: 14, scope: !2755)
!3191 = !DILocation(line: 1126, column: 23, scope: !2755)
!3192 = !DILocation(line: 1127, column: 8, scope: !2755)
!3193 = !DILocation(line: 1131, column: 15, scope: !2755)
!3194 = !DILocation(line: 1131, column: 23, scope: !2755)
!3195 = !DILocation(line: 1131, column: 13, scope: !2755)
!3196 = !DILocation(line: 1132, column: 38, scope: !2755)
!3197 = !DILocation(line: 1132, column: 46, scope: !2755)
!3198 = !DILocation(line: 1132, column: 49, scope: !2755)
!3199 = !DILocation(line: 1132, column: 54, scope: !2755)
!3200 = !DILocation(line: 1132, column: 60, scope: !2755)
!3201 = !DILocation(line: 1132, column: 22, scope: !2755)
!3202 = !DILocation(line: 1132, column: 8, scope: !2755)
!3203 = !DILocation(line: 1132, column: 16, scope: !2755)
!3204 = !DILocation(line: 1132, column: 20, scope: !2755)
!3205 = !DILocation(line: 1133, column: 14, scope: !2755)
!3206 = !DILocation(line: 1133, column: 22, scope: !2755)
!3207 = !DILocation(line: 1133, column: 26, scope: !2755)
!3208 = !DILocation(line: 1133, column: 25, scope: !2755)
!3209 = !DILocation(line: 1133, column: 32, scope: !2755)
!3210 = !DILocation(line: 1133, column: 38, scope: !2755)
!3211 = !DILocation(line: 1133, column: 31, scope: !2755)
!3212 = !DILocation(line: 1133, column: 11, scope: !2755)
!3213 = !DILocation(line: 1135, column: 35, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 1135, column: 12)
!3215 = !DILocation(line: 1135, column: 41, scope: !3214)
!3216 = !DILocation(line: 1135, column: 49, scope: !3214)
!3217 = !DILocation(line: 1135, column: 54, scope: !3214)
!3218 = !DILocation(line: 1135, column: 12, scope: !3214)
!3219 = !DILocation(line: 1135, column: 65, scope: !3214)
!3220 = !DILocation(line: 1135, column: 12, scope: !2755)
!3221 = !DILocation(line: 1136, column: 9, scope: !3214)
!3222 = !DILocation(line: 1139, column: 15, scope: !2755)
!3223 = !DILocation(line: 1139, column: 21, scope: !2755)
!3224 = !DILocation(line: 1139, column: 27, scope: !2755)
!3225 = !DILocation(line: 1139, column: 33, scope: !2755)
!3226 = !DILocation(line: 1139, column: 8, scope: !2755)
!3227 = !DILocation(line: 1140, column: 23, scope: !2755)
!3228 = !DILocation(line: 1140, column: 29, scope: !2755)
!3229 = !DILocation(line: 1140, column: 8, scope: !2755)
!3230 = !DILocation(line: 1140, column: 16, scope: !2755)
!3231 = !DILocation(line: 1140, column: 20, scope: !2755)
!3232 = !DILocation(line: 1141, column: 25, scope: !2755)
!3233 = !DILocation(line: 1141, column: 8, scope: !2755)
!3234 = !DILocation(line: 1141, column: 14, scope: !2755)
!3235 = !DILocation(line: 1141, column: 23, scope: !2755)
!3236 = !DILocation(line: 1142, column: 36, scope: !2755)
!3237 = !DILocation(line: 1142, column: 42, scope: !2755)
!3238 = !DILocation(line: 1142, column: 8, scope: !2755)
!3239 = !DILocation(line: 1142, column: 14, scope: !2755)
!3240 = !DILocation(line: 1142, column: 22, scope: !2755)
!3241 = !DILocation(line: 1142, column: 28, scope: !2755)
!3242 = !DILocation(line: 1142, column: 34, scope: !2755)
!3243 = !DILocation(line: 1143, column: 36, scope: !2755)
!3244 = !DILocation(line: 1143, column: 8, scope: !2755)
!3245 = !DILocation(line: 1143, column: 14, scope: !2755)
!3246 = !DILocation(line: 1143, column: 22, scope: !2755)
!3247 = !DILocation(line: 1143, column: 28, scope: !2755)
!3248 = !DILocation(line: 1143, column: 34, scope: !2755)
!3249 = !DILocation(line: 1144, column: 8, scope: !2755)
!3250 = !DILocation(line: 1149, column: 2, scope: !2543)
!3251 = !DILocation(line: 1149, column: 8, scope: !2543)
!3252 = !DILocation(line: 1149, column: 20, scope: !2543)
!3253 = !DILocation(line: 1150, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 1150, column: 6)
!3255 = !DILocation(line: 1150, column: 13, scope: !3254)
!3256 = !DILocation(line: 1150, column: 18, scope: !3254)
!3257 = !DILocation(line: 1150, column: 25, scope: !3254)
!3258 = !DILocation(line: 1150, column: 6, scope: !2543)
!3259 = !DILocation(line: 1152, column: 8, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 1152, column: 7)
!3261 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 1151, column: 3)
!3262 = !DILocation(line: 1152, column: 16, scope: !3260)
!3263 = !DILocation(line: 1152, column: 7, scope: !3260)
!3264 = !DILocation(line: 1152, column: 20, scope: !3260)
!3265 = !DILocation(line: 1152, column: 7, scope: !3261)
!3266 = !DILocation(line: 1154, column: 4, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 1153, column: 4)
!3268 = !DILocation(line: 1157, column: 4, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 1156, column: 4)
!3270 = !DILocation(line: 1157, column: 10, scope: !3269)
!3271 = !DILocation(line: 1157, column: 22, scope: !3269)
!3272 = !DILocation(line: 1158, column: 24, scope: !3269)
!3273 = !DILocation(line: 1158, column: 30, scope: !3269)
!3274 = !DILocation(line: 1158, column: 4, scope: !3269)
!3275 = !DILocation(line: 1158, column: 10, scope: !3269)
!3276 = !DILocation(line: 1158, column: 22, scope: !3269)
!3277 = !DILocation(line: 1159, column: 4, scope: !3269)
!3278 = !DILocation(line: 1159, column: 10, scope: !3269)
!3279 = !DILocation(line: 1159, column: 18, scope: !3269)
!3280 = !DILocation(line: 1161, column: 26, scope: !3261)
!3281 = !DILocation(line: 1161, column: 32, scope: !3261)
!3282 = !DILocation(line: 1161, column: 40, scope: !3261)
!3283 = !DILocation(line: 1161, column: 45, scope: !3261)
!3284 = !DILocation(line: 1161, column: 51, scope: !3261)
!3285 = !DILocation(line: 1161, column: 3, scope: !3261)
!3286 = !DILocation(line: 1162, column: 16, scope: !3261)
!3287 = !DILocation(line: 1162, column: 22, scope: !3261)
!3288 = !DILocation(line: 1162, column: 3, scope: !3261)
!3289 = !DILocation(line: 1162, column: 11, scope: !3261)
!3290 = !DILocation(line: 1162, column: 14, scope: !3261)
!3291 = !DILocation(line: 1163, column: 3, scope: !3261)
!3292 = !DILocation(line: 1164, column: 2, scope: !2543)
!3293 = !DILocation(line: 1165, column: 1, scope: !2543)
!3294 = distinct !DISubprogram(name: "_midiReadVarLen", scope: !3, file: !3, line: 924, type: !3295, isLocal: true, isDefinition: true, scopeLine: 925, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!322, !322, !354}
!3297 = !DILocalVariable(name: "ptr", arg: 1, scope: !3294, file: !3, line: 924, type: !322)
!3298 = !DILocation(line: 924, column: 36, scope: !3294)
!3299 = !DILocalVariable(name: "num", arg: 2, scope: !3294, file: !3, line: 924, type: !354)
!3300 = !DILocation(line: 924, column: 48, scope: !3294)
!3301 = !DILocalVariable(name: "value", scope: !3294, file: !3, line: 926, type: !315)
!3302 = !DILocation(line: 926, column: 16, scope: !3294)
!3303 = !DILocalVariable(name: "c", scope: !3294, file: !3, line: 927, type: !323)
!3304 = !DILocation(line: 927, column: 15, scope: !3294)
!3305 = !DILocation(line: 929, column: 22, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 929, column: 9)
!3307 = !DILocation(line: 929, column: 18, scope: !3306)
!3308 = !DILocation(line: 929, column: 16, scope: !3306)
!3309 = !DILocation(line: 929, column: 26, scope: !3306)
!3310 = !DILocation(line: 929, column: 9, scope: !3294)
!3311 = !DILocation(line: 931, column: 9, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 930, column: 3)
!3313 = !DILocation(line: 932, column: 3, scope: !3312)
!3314 = distinct !{!3314, !3313, !3315}
!3315 = !DILocation(line: 935, column: 21, scope: !3312)
!3316 = !DILocation(line: 934, column: 13, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 933, column: 4)
!3318 = !DILocation(line: 934, column: 19, scope: !3317)
!3319 = !DILocation(line: 934, column: 37, scope: !3317)
!3320 = !DILocation(line: 934, column: 33, scope: !3317)
!3321 = !DILocation(line: 934, column: 31, scope: !3317)
!3322 = !DILocation(line: 934, column: 28, scope: !3317)
!3323 = !DILocation(line: 934, column: 41, scope: !3317)
!3324 = !DILocation(line: 934, column: 25, scope: !3317)
!3325 = !DILocation(line: 934, column: 10, scope: !3317)
!3326 = !DILocation(line: 935, column: 4, scope: !3317)
!3327 = !DILocation(line: 935, column: 13, scope: !3312)
!3328 = !DILocation(line: 935, column: 15, scope: !3312)
!3329 = !DILocation(line: 936, column: 3, scope: !3312)
!3330 = !DILocation(line: 937, column: 9, scope: !3294)
!3331 = !DILocation(line: 937, column: 3, scope: !3294)
!3332 = !DILocation(line: 937, column: 7, scope: !3294)
!3333 = !DILocation(line: 938, column: 9, scope: !3294)
!3334 = !DILocation(line: 938, column: 2, scope: !3294)
!3335 = distinct !DISubprogram(name: "_midiReadTrackCopyData", scope: !3, file: !3, line: 942, type: !3336, isLocal: true, isDefinition: true, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!6, !2546, !322, !315, !6}
!3338 = !DILocalVariable(name: "pMsg", arg: 1, scope: !3335, file: !3, line: 942, type: !2546)
!3339 = !DILocation(line: 942, column: 46, scope: !3335)
!3340 = !DILocalVariable(name: "ptr", arg: 2, scope: !3335, file: !3, line: 942, type: !322)
!3341 = !DILocation(line: 942, column: 58, scope: !3335)
!3342 = !DILocalVariable(name: "sz", arg: 3, scope: !3335, file: !3, line: 942, type: !315)
!3343 = !DILocation(line: 942, column: 69, scope: !3335)
!3344 = !DILocalVariable(name: "bCopyPtrData", arg: 4, scope: !3335, file: !3, line: 942, type: !6)
!3345 = !DILocation(line: 942, column: 78, scope: !3335)
!3346 = !DILocation(line: 944, column: 6, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 944, column: 6)
!3348 = !DILocation(line: 944, column: 11, scope: !3347)
!3349 = !DILocation(line: 944, column: 17, scope: !3347)
!3350 = !DILocation(line: 944, column: 9, scope: !3347)
!3351 = !DILocation(line: 944, column: 6, scope: !3335)
!3352 = !DILocation(line: 946, column: 32, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 945, column: 3)
!3354 = !DILocation(line: 946, column: 38, scope: !3353)
!3355 = !DILocation(line: 946, column: 44, scope: !3353)
!3356 = !DILocation(line: 946, column: 24, scope: !3353)
!3357 = !DILocation(line: 946, column: 3, scope: !3353)
!3358 = !DILocation(line: 946, column: 9, scope: !3353)
!3359 = !DILocation(line: 946, column: 14, scope: !3353)
!3360 = !DILocation(line: 947, column: 19, scope: !3353)
!3361 = !DILocation(line: 947, column: 3, scope: !3353)
!3362 = !DILocation(line: 947, column: 9, scope: !3353)
!3363 = !DILocation(line: 947, column: 17, scope: !3353)
!3364 = !DILocation(line: 948, column: 3, scope: !3353)
!3365 = !DILocation(line: 950, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 950, column: 6)
!3367 = !DILocation(line: 950, column: 13, scope: !3366)
!3368 = !DILocation(line: 950, column: 6, scope: !3335)
!3369 = !DILocation(line: 951, column: 3, scope: !3366)
!3370 = !DILocation(line: 953, column: 6, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 953, column: 6)
!3372 = !DILocation(line: 953, column: 19, scope: !3371)
!3373 = !DILocation(line: 953, column: 22, scope: !3371)
!3374 = !DILocation(line: 953, column: 6, scope: !3335)
!3375 = !DILocation(line: 954, column: 10, scope: !3371)
!3376 = !DILocation(line: 954, column: 16, scope: !3371)
!3377 = !DILocation(line: 954, column: 22, scope: !3371)
!3378 = !DILocation(line: 954, column: 27, scope: !3371)
!3379 = !DILocation(line: 954, column: 3, scope: !3371)
!3380 = !DILocation(line: 956, column: 2, scope: !3335)
!3381 = !DILocation(line: 957, column: 1, scope: !3335)
!3382 = distinct !DISubprogram(name: "midiReadInitMessage", scope: !3, file: !3, line: 1167, type: !3383, isLocal: false, isDefinition: true, scopeLine: 1168, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !2546}
!3385 = !DILocalVariable(name: "pMsg", arg: 1, scope: !3382, file: !3, line: 1167, type: !2546)
!3386 = !DILocation(line: 1167, column: 36, scope: !3382)
!3387 = !DILocation(line: 1169, column: 2, scope: !3382)
!3388 = !DILocation(line: 1169, column: 8, scope: !3382)
!3389 = !DILocation(line: 1169, column: 13, scope: !3382)
!3390 = !DILocation(line: 1170, column: 2, scope: !3382)
!3391 = !DILocation(line: 1170, column: 8, scope: !3382)
!3392 = !DILocation(line: 1170, column: 16, scope: !3382)
!3393 = !DILocation(line: 1171, column: 2, scope: !3382)
!3394 = !DILocation(line: 1171, column: 8, scope: !3382)
!3395 = !DILocation(line: 1171, column: 20, scope: !3382)
!3396 = !DILocation(line: 1172, column: 1, scope: !3382)
!3397 = distinct !DISubprogram(name: "midiReadFreeMessage", scope: !3, file: !3, line: 1174, type: !3383, isLocal: false, isDefinition: true, scopeLine: 1175, flags: DIFlagPrototyped, isOptimized: false, unit: !11, variables: !378)
!3398 = !DILocalVariable(name: "pMsg", arg: 1, scope: !3397, file: !3, line: 1174, type: !2546)
!3399 = !DILocation(line: 1174, column: 36, scope: !3397)
!3400 = !DILocation(line: 1176, column: 6, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 1176, column: 6)
!3402 = !DILocation(line: 1176, column: 12, scope: !3401)
!3403 = !DILocation(line: 1176, column: 6, scope: !3397)
!3404 = !DILocation(line: 1176, column: 31, scope: !3401)
!3405 = !DILocation(line: 1176, column: 37, scope: !3401)
!3406 = !DILocation(line: 1176, column: 18, scope: !3401)
!3407 = !DILocation(line: 1177, column: 2, scope: !3397)
!3408 = !DILocation(line: 1177, column: 8, scope: !3397)
!3409 = !DILocation(line: 1177, column: 13, scope: !3397)
!3410 = !DILocation(line: 1178, column: 1, scope: !3397)
!3411 = distinct !DISubprogram(name: "muGetInstrumentName", scope: !421, file: !421, line: 414, type: !3412, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!6, !253, !8}
!3414 = !DILocalVariable(name: "pName", arg: 1, scope: !3411, file: !421, line: 414, type: !253)
!3415 = !DILocation(line: 414, column: 32, scope: !3411)
!3416 = !DILocalVariable(name: "iInstr", arg: 2, scope: !3411, file: !421, line: 414, type: !8)
!3417 = !DILocation(line: 414, column: 43, scope: !3411)
!3418 = !DILocation(line: 416, column: 6, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3411, file: !421, line: 416, column: 6)
!3420 = !DILocation(line: 416, column: 13, scope: !3419)
!3421 = !DILocation(line: 416, column: 17, scope: !3419)
!3422 = !DILocation(line: 416, column: 20, scope: !3419)
!3423 = !DILocation(line: 416, column: 27, scope: !3419)
!3424 = !DILocation(line: 416, column: 6, scope: !3411)
!3425 = !DILocation(line: 417, column: 3, scope: !3419)
!3426 = !DILocation(line: 418, column: 9, scope: !3411)
!3427 = !DILocation(line: 418, column: 28, scope: !3411)
!3428 = !DILocation(line: 418, column: 16, scope: !3411)
!3429 = !DILocation(line: 418, column: 2, scope: !3411)
!3430 = !DILocation(line: 419, column: 2, scope: !3411)
!3431 = !DILocation(line: 420, column: 1, scope: !3411)
!3432 = distinct !DISubprogram(name: "muGetDrumName", scope: !421, file: !421, line: 422, type: !3412, isLocal: false, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3433 = !DILocalVariable(name: "pName", arg: 1, scope: !3432, file: !421, line: 422, type: !253)
!3434 = !DILocation(line: 422, column: 26, scope: !3432)
!3435 = !DILocalVariable(name: "iInstr", arg: 2, scope: !3432, file: !421, line: 422, type: !8)
!3436 = !DILocation(line: 422, column: 37, scope: !3432)
!3437 = !DILocation(line: 424, column: 6, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3432, file: !421, line: 424, column: 6)
!3439 = !DILocation(line: 424, column: 13, scope: !3438)
!3440 = !DILocation(line: 424, column: 17, scope: !3438)
!3441 = !DILocation(line: 424, column: 20, scope: !3438)
!3442 = !DILocation(line: 424, column: 27, scope: !3438)
!3443 = !DILocation(line: 424, column: 6, scope: !3432)
!3444 = !DILocation(line: 425, column: 3, scope: !3438)
!3445 = !DILocation(line: 426, column: 9, scope: !3432)
!3446 = !DILocation(line: 426, column: 26, scope: !3432)
!3447 = !DILocation(line: 426, column: 16, scope: !3432)
!3448 = !DILocation(line: 426, column: 2, scope: !3432)
!3449 = !DILocation(line: 427, column: 2, scope: !3432)
!3450 = !DILocation(line: 428, column: 1, scope: !3432)
!3451 = distinct !DISubprogram(name: "muGetMIDIMsgName", scope: !421, file: !421, line: 430, type: !3452, isLocal: false, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!6, !253, !362}
!3454 = !DILocalVariable(name: "pName", arg: 1, scope: !3451, file: !421, line: 430, type: !253)
!3455 = !DILocation(line: 430, column: 29, scope: !3451)
!3456 = !DILocalVariable(name: "iMsg", arg: 2, scope: !3451, file: !421, line: 430, type: !362)
!3457 = !DILocation(line: 430, column: 46, scope: !3451)
!3458 = !DILocation(line: 432, column: 9, scope: !3451)
!3459 = !DILocation(line: 432, column: 2, scope: !3451)
!3460 = !DILocation(line: 435, column: 12, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3451, file: !421, line: 433, column: 3)
!3462 = !DILocation(line: 435, column: 5, scope: !3461)
!3463 = !DILocation(line: 436, column: 5, scope: !3461)
!3464 = !DILocation(line: 439, column: 12, scope: !3461)
!3465 = !DILocation(line: 439, column: 5, scope: !3461)
!3466 = !DILocation(line: 440, column: 5, scope: !3461)
!3467 = !DILocation(line: 443, column: 12, scope: !3461)
!3468 = !DILocation(line: 443, column: 5, scope: !3461)
!3469 = !DILocation(line: 444, column: 5, scope: !3461)
!3470 = !DILocation(line: 447, column: 12, scope: !3461)
!3471 = !DILocation(line: 447, column: 5, scope: !3461)
!3472 = !DILocation(line: 448, column: 5, scope: !3461)
!3473 = !DILocation(line: 451, column: 12, scope: !3461)
!3474 = !DILocation(line: 451, column: 5, scope: !3461)
!3475 = !DILocation(line: 452, column: 5, scope: !3461)
!3476 = !DILocation(line: 455, column: 12, scope: !3461)
!3477 = !DILocation(line: 455, column: 5, scope: !3461)
!3478 = !DILocation(line: 456, column: 5, scope: !3461)
!3479 = !DILocation(line: 459, column: 12, scope: !3461)
!3480 = !DILocation(line: 459, column: 5, scope: !3461)
!3481 = !DILocation(line: 460, column: 5, scope: !3461)
!3482 = !DILocation(line: 463, column: 12, scope: !3461)
!3483 = !DILocation(line: 463, column: 5, scope: !3461)
!3484 = !DILocation(line: 464, column: 5, scope: !3461)
!3485 = !DILocation(line: 467, column: 12, scope: !3461)
!3486 = !DILocation(line: 467, column: 5, scope: !3461)
!3487 = !DILocation(line: 468, column: 5, scope: !3461)
!3488 = !DILocation(line: 471, column: 12, scope: !3461)
!3489 = !DILocation(line: 471, column: 5, scope: !3461)
!3490 = !DILocation(line: 472, column: 5, scope: !3461)
!3491 = !DILocation(line: 475, column: 5, scope: !3461)
!3492 = !DILocation(line: 477, column: 2, scope: !3451)
!3493 = !DILocation(line: 478, column: 1, scope: !3451)
!3494 = distinct !DISubprogram(name: "muGetControlName", scope: !421, file: !421, line: 480, type: !3495, isLocal: false, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!6, !253, !363}
!3497 = !DILocalVariable(name: "pName", arg: 1, scope: !3494, file: !421, line: 480, type: !253)
!3498 = !DILocation(line: 480, column: 29, scope: !3494)
!3499 = !DILocalVariable(name: "iCC", arg: 2, scope: !3494, file: !421, line: 480, type: !363)
!3500 = !DILocation(line: 480, column: 45, scope: !3494)
!3501 = !DILocation(line: 482, column: 6, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3494, file: !421, line: 482, column: 6)
!3503 = !DILocation(line: 482, column: 10, scope: !3502)
!3504 = !DILocation(line: 482, column: 14, scope: !3502)
!3505 = !DILocation(line: 482, column: 17, scope: !3502)
!3506 = !DILocation(line: 482, column: 21, scope: !3502)
!3507 = !DILocation(line: 482, column: 6, scope: !3494)
!3508 = !DILocation(line: 483, column: 3, scope: !3502)
!3509 = !DILocation(line: 484, column: 9, scope: !3494)
!3510 = !DILocation(line: 484, column: 25, scope: !3494)
!3511 = !DILocation(line: 484, column: 16, scope: !3494)
!3512 = !DILocation(line: 484, column: 2, scope: !3494)
!3513 = !DILocation(line: 485, column: 2, scope: !3494)
!3514 = !DILocation(line: 486, column: 1, scope: !3494)
!3515 = !DILocalVariable(name: "pName", arg: 1, scope: !442, file: !421, line: 488, type: !253)
!3516 = !DILocation(line: 488, column: 28, scope: !442)
!3517 = !DILocalVariable(name: "iKey", arg: 2, scope: !442, file: !421, line: 488, type: !365)
!3518 = !DILocation(line: 488, column: 48, scope: !442)
!3519 = !DILocalVariable(name: "iRootNum", scope: !442, file: !421, line: 495, type: !8)
!3520 = !DILocation(line: 495, column: 5, scope: !442)
!3521 = !DILocation(line: 495, column: 17, scope: !442)
!3522 = !DILocation(line: 495, column: 21, scope: !442)
!3523 = !DILocalVariable(name: "iFlats", scope: !442, file: !421, line: 496, type: !8)
!3524 = !DILocation(line: 496, column: 5, scope: !442)
!3525 = !DILocation(line: 496, column: 15, scope: !442)
!3526 = !DILocation(line: 496, column: 19, scope: !442)
!3527 = !DILocalVariable(name: "iMin", scope: !442, file: !421, line: 497, type: !8)
!3528 = !DILocation(line: 497, column: 5, scope: !442)
!3529 = !DILocation(line: 497, column: 13, scope: !442)
!3530 = !DILocation(line: 497, column: 17, scope: !442)
!3531 = !DILocation(line: 499, column: 9, scope: !442)
!3532 = !DILocation(line: 499, column: 25, scope: !442)
!3533 = !DILocation(line: 499, column: 15, scope: !442)
!3534 = !DILocation(line: 499, column: 37, scope: !442)
!3535 = !DILocation(line: 499, column: 2, scope: !442)
!3536 = !DILocation(line: 500, column: 9, scope: !442)
!3537 = !DILocation(line: 500, column: 15, scope: !442)
!3538 = !DILocation(line: 500, column: 2, scope: !442)
!3539 = !DILocation(line: 501, column: 2, scope: !442)
!3540 = distinct !DISubprogram(name: "muGetTextName", scope: !421, file: !421, line: 504, type: !3541, isLocal: false, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!6, !253, !2105}
!3543 = !DILocalVariable(name: "pName", arg: 1, scope: !3540, file: !421, line: 504, type: !253)
!3544 = !DILocation(line: 504, column: 26, scope: !3540)
!3545 = !DILocalVariable(name: "iEvent", arg: 2, scope: !3540, file: !421, line: 504, type: !2105)
!3546 = !DILocation(line: 504, column: 44, scope: !3540)
!3547 = !DILocation(line: 506, column: 6, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3540, file: !421, line: 506, column: 6)
!3549 = !DILocation(line: 506, column: 12, scope: !3548)
!3550 = !DILocation(line: 506, column: 15, scope: !3548)
!3551 = !DILocation(line: 506, column: 18, scope: !3548)
!3552 = !DILocation(line: 506, column: 24, scope: !3548)
!3553 = !DILocation(line: 506, column: 6, scope: !3540)
!3554 = !DILocation(line: 506, column: 28, scope: !3548)
!3555 = !DILocation(line: 507, column: 23, scope: !3540)
!3556 = !DILocation(line: 507, column: 42, scope: !3540)
!3557 = !DILocation(line: 507, column: 9, scope: !3540)
!3558 = !DILocation(line: 507, column: 2, scope: !3540)
!3559 = !DILocation(line: 508, column: 1, scope: !3540)
!3560 = distinct !DISubprogram(name: "muGetMetaName", scope: !421, file: !421, line: 510, type: !3561, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!6, !253, !364}
!3563 = !DILocalVariable(name: "pName", arg: 1, scope: !3560, file: !421, line: 510, type: !253)
!3564 = !DILocation(line: 510, column: 26, scope: !3560)
!3565 = !DILocalVariable(name: "iEvent", arg: 2, scope: !3560, file: !421, line: 510, type: !364)
!3566 = !DILocation(line: 510, column: 44, scope: !3560)
!3567 = !DILocation(line: 512, column: 9, scope: !3560)
!3568 = !DILocation(line: 512, column: 2, scope: !3560)
!3569 = !DILocation(line: 514, column: 35, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3560, file: !421, line: 513, column: 3)
!3571 = !DILocation(line: 514, column: 28, scope: !3570)
!3572 = !DILocation(line: 514, column: 62, scope: !3570)
!3573 = !DILocation(line: 515, column: 31, scope: !3570)
!3574 = !DILocation(line: 515, column: 24, scope: !3570)
!3575 = !DILocation(line: 515, column: 54, scope: !3570)
!3576 = !DILocation(line: 516, column: 31, scope: !3570)
!3577 = !DILocation(line: 516, column: 24, scope: !3570)
!3578 = !DILocation(line: 516, column: 54, scope: !3570)
!3579 = !DILocation(line: 517, column: 31, scope: !3570)
!3580 = !DILocation(line: 517, column: 24, scope: !3570)
!3581 = !DILocation(line: 517, column: 54, scope: !3570)
!3582 = !DILocation(line: 518, column: 32, scope: !3570)
!3583 = !DILocation(line: 518, column: 25, scope: !3570)
!3584 = !DILocation(line: 518, column: 55, scope: !3570)
!3585 = !DILocation(line: 519, column: 28, scope: !3570)
!3586 = !DILocation(line: 519, column: 21, scope: !3570)
!3587 = !DILocation(line: 519, column: 48, scope: !3570)
!3588 = !DILocation(line: 520, column: 29, scope: !3570)
!3589 = !DILocation(line: 520, column: 22, scope: !3570)
!3590 = !DILocation(line: 520, column: 49, scope: !3570)
!3591 = !DILocation(line: 521, column: 30, scope: !3570)
!3592 = !DILocation(line: 521, column: 23, scope: !3570)
!3593 = !DILocation(line: 521, column: 53, scope: !3570)
!3594 = !DILocation(line: 522, column: 30, scope: !3570)
!3595 = !DILocation(line: 522, column: 23, scope: !3570)
!3596 = !DILocation(line: 522, column: 53, scope: !3570)
!3597 = !DILocation(line: 523, column: 32, scope: !3570)
!3598 = !DILocation(line: 523, column: 25, scope: !3570)
!3599 = !DILocation(line: 523, column: 57, scope: !3570)
!3600 = !DILocation(line: 524, column: 30, scope: !3570)
!3601 = !DILocation(line: 524, column: 23, scope: !3570)
!3602 = !DILocation(line: 524, column: 53, scope: !3570)
!3603 = !DILocation(line: 525, column: 32, scope: !3570)
!3604 = !DILocation(line: 525, column: 25, scope: !3570)
!3605 = !DILocation(line: 525, column: 57, scope: !3570)
!3606 = !DILocation(line: 526, column: 29, scope: !3570)
!3607 = !DILocation(line: 526, column: 22, scope: !3570)
!3608 = !DILocation(line: 526, column: 51, scope: !3570)
!3609 = !DILocation(line: 527, column: 29, scope: !3570)
!3610 = !DILocation(line: 527, column: 22, scope: !3570)
!3611 = !DILocation(line: 527, column: 50, scope: !3570)
!3612 = !DILocation(line: 528, column: 38, scope: !3570)
!3613 = !DILocation(line: 528, column: 31, scope: !3570)
!3614 = !DILocation(line: 528, column: 68, scope: !3570)
!3615 = !DILocation(line: 529, column: 12, scope: !3570)
!3616 = !DILocation(line: 531, column: 2, scope: !3560)
!3617 = !DILocation(line: 533, column: 1, scope: !3560)
!3618 = distinct !DISubprogram(name: "muGetNoteFromName", scope: !421, file: !421, line: 539, type: !3619, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!8, !499}
!3621 = !DILocalVariable(name: "pName", arg: 1, scope: !3618, file: !421, line: 539, type: !499)
!3622 = !DILocation(line: 539, column: 35, scope: !3618)
!3623 = !DILocalVariable(name: "note_map", scope: !3618, file: !421, line: 541, type: !3624)
!3624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 224, elements: !388)
!3625 = !DILocation(line: 541, column: 5, scope: !3618)
!3626 = !DILocalVariable(name: "p", scope: !3618, file: !421, line: 542, type: !253)
!3627 = !DILocation(line: 542, column: 7, scope: !3618)
!3628 = !DILocalVariable(name: "cpy", scope: !3618, file: !421, line: 542, type: !3629)
!3629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 128, elements: !3630)
!3630 = !{!3631}
!3631 = !DISubrange(count: 16)
!3632 = !DILocation(line: 542, column: 10, scope: !3618)
!3633 = !DILocalVariable(name: "note", scope: !3618, file: !421, line: 543, type: !8)
!3634 = !DILocation(line: 543, column: 5, scope: !3618)
!3635 = !DILocation(line: 545, column: 10, scope: !3618)
!3636 = !DILocation(line: 545, column: 15, scope: !3618)
!3637 = !DILocation(line: 545, column: 2, scope: !3618)
!3638 = !DILocation(line: 546, column: 2, scope: !3618)
!3639 = !DILocation(line: 546, column: 10, scope: !3618)
!3640 = !DILocation(line: 547, column: 6, scope: !3618)
!3641 = !DILocation(line: 547, column: 4, scope: !3618)
!3642 = !DILocation(line: 549, column: 2, scope: !3618)
!3643 = !DILocation(line: 549, column: 9, scope: !3618)
!3644 = !DILocation(line: 549, column: 21, scope: !3618)
!3645 = !DILocation(line: 549, column: 25, scope: !3618)
!3646 = !DILocation(line: 549, column: 24, scope: !3618)
!3647 = !DILocation(line: 550, column: 4, scope: !3618)
!3648 = distinct !{!3648, !3642, !3647}
!3649 = !DILocation(line: 552, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3618, file: !421, line: 552, column: 6)
!3651 = !DILocation(line: 552, column: 6, scope: !3650)
!3652 = !DILocation(line: 552, column: 6, scope: !3618)
!3653 = !DILocation(line: 554, column: 19, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3650, file: !421, line: 553, column: 3)
!3655 = !DILocation(line: 554, column: 18, scope: !3654)
!3656 = !DILocation(line: 554, column: 10, scope: !3654)
!3657 = !DILocation(line: 554, column: 21, scope: !3654)
!3658 = !DILocation(line: 554, column: 8, scope: !3654)
!3659 = !DILocation(line: 555, column: 7, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3654, file: !421, line: 555, column: 7)
!3661 = !DILocation(line: 555, column: 12, scope: !3660)
!3662 = !DILocation(line: 555, column: 17, scope: !3660)
!3663 = !DILocation(line: 555, column: 20, scope: !3660)
!3664 = !DILocation(line: 555, column: 25, scope: !3660)
!3665 = !DILocation(line: 555, column: 7, scope: !3654)
!3666 = !DILocation(line: 557, column: 20, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3660, file: !421, line: 556, column: 4)
!3668 = !DILocation(line: 557, column: 11, scope: !3667)
!3669 = !DILocation(line: 557, column: 9, scope: !3667)
!3670 = !DILocation(line: 558, column: 5, scope: !3667)
!3671 = !DILocation(line: 559, column: 9, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3667, file: !421, line: 559, column: 8)
!3673 = !DILocation(line: 559, column: 8, scope: !3672)
!3674 = !DILocation(line: 559, column: 11, scope: !3672)
!3675 = !DILocation(line: 559, column: 8, scope: !3667)
!3676 = !DILocation(line: 560, column: 9, scope: !3672)
!3677 = !DILocation(line: 560, column: 14, scope: !3672)
!3678 = !DILocation(line: 560, column: 5, scope: !3672)
!3679 = !DILocation(line: 561, column: 14, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3672, file: !421, line: 561, column: 13)
!3681 = !DILocation(line: 561, column: 13, scope: !3680)
!3682 = !DILocation(line: 561, column: 16, scope: !3680)
!3683 = !DILocation(line: 561, column: 13, scope: !3672)
!3684 = !DILocation(line: 562, column: 9, scope: !3680)
!3685 = !DILocation(line: 562, column: 14, scope: !3680)
!3686 = !DILocation(line: 562, column: 5, scope: !3680)
!3687 = !DILocation(line: 564, column: 17, scope: !3667)
!3688 = !DILocation(line: 564, column: 12, scope: !3667)
!3689 = !DILocation(line: 564, column: 19, scope: !3667)
!3690 = !DILocation(line: 564, column: 22, scope: !3667)
!3691 = !DILocation(line: 564, column: 9, scope: !3667)
!3692 = !DILocation(line: 565, column: 4, scope: !3667)
!3693 = !DILocation(line: 566, column: 3, scope: !3654)
!3694 = !DILocation(line: 568, column: 9, scope: !3618)
!3695 = !DILocation(line: 568, column: 2, scope: !3618)
!3696 = distinct !DISubprogram(name: "muGetNameFromNote", scope: !421, file: !421, line: 571, type: !3697, isLocal: false, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!253, !253, !8}
!3699 = !DILocalVariable(name: "pStr", arg: 1, scope: !3696, file: !421, line: 571, type: !253)
!3700 = !DILocation(line: 571, column: 31, scope: !3696)
!3701 = !DILocalVariable(name: "iNote", arg: 2, scope: !3696, file: !421, line: 571, type: !8)
!3702 = !DILocation(line: 571, column: 41, scope: !3696)
!3703 = !DILocation(line: 573, column: 7, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3696, file: !421, line: 573, column: 6)
!3705 = !DILocation(line: 573, column: 6, scope: !3696)
!3706 = !DILocation(line: 573, column: 14, scope: !3704)
!3707 = !DILocation(line: 575, column: 6, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3696, file: !421, line: 575, column: 6)
!3709 = !DILocation(line: 575, column: 11, scope: !3708)
!3710 = !DILocation(line: 575, column: 14, scope: !3708)
!3711 = !DILocation(line: 575, column: 17, scope: !3708)
!3712 = !DILocation(line: 575, column: 22, scope: !3708)
!3713 = !DILocation(line: 575, column: 6, scope: !3696)
!3714 = !DILocation(line: 576, column: 10, scope: !3708)
!3715 = !DILocation(line: 576, column: 3, scope: !3708)
!3716 = !DILocation(line: 578, column: 11, scope: !3708)
!3717 = !DILocation(line: 578, column: 36, scope: !3708)
!3718 = !DILocation(line: 578, column: 41, scope: !3708)
!3719 = !DILocation(line: 578, column: 25, scope: !3708)
!3720 = !DILocation(line: 578, column: 49, scope: !3708)
!3721 = !DILocation(line: 578, column: 54, scope: !3708)
!3722 = !DILocation(line: 578, column: 68, scope: !3708)
!3723 = !DILocation(line: 578, column: 3, scope: !3708)
!3724 = !DILocation(line: 580, column: 9, scope: !3696)
!3725 = !DILocation(line: 580, column: 2, scope: !3696)
!3726 = !DILocation(line: 581, column: 1, scope: !3696)
!3727 = distinct !DISubprogram(name: "muGetFreqFromNote", scope: !421, file: !421, line: 583, type: !3728, isLocal: false, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!463, !8}
!3730 = !DILocalVariable(name: "iNote", arg: 1, scope: !3727, file: !421, line: 583, type: !8)
!3731 = !DILocation(line: 583, column: 29, scope: !3727)
!3732 = !DILocalVariable(name: "oct", scope: !3727, file: !421, line: 585, type: !8)
!3733 = !DILocation(line: 585, column: 5, scope: !3727)
!3734 = !DILocation(line: 585, column: 11, scope: !3727)
!3735 = !DILocation(line: 585, column: 16, scope: !3727)
!3736 = !DILocation(line: 585, column: 19, scope: !3727)
!3737 = !DILocalVariable(name: "freq", scope: !3727, file: !421, line: 586, type: !463)
!3738 = !DILocation(line: 586, column: 7, scope: !3727)
!3739 = !DILocation(line: 588, column: 6, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3727, file: !421, line: 588, column: 6)
!3741 = !DILocation(line: 588, column: 11, scope: !3740)
!3742 = !DILocation(line: 588, column: 14, scope: !3740)
!3743 = !DILocation(line: 588, column: 17, scope: !3740)
!3744 = !DILocation(line: 588, column: 22, scope: !3740)
!3745 = !DILocation(line: 588, column: 6, scope: !3727)
!3746 = !DILocation(line: 588, column: 28, scope: !3740)
!3747 = !DILocation(line: 590, column: 19, scope: !3727)
!3748 = !DILocation(line: 590, column: 24, scope: !3727)
!3749 = !DILocation(line: 590, column: 9, scope: !3727)
!3750 = !DILocation(line: 590, column: 7, scope: !3727)
!3751 = !DILocation(line: 592, column: 2, scope: !3727)
!3752 = !DILocation(line: 592, column: 8, scope: !3727)
!3753 = !DILocation(line: 592, column: 12, scope: !3727)
!3754 = !DILocation(line: 593, column: 8, scope: !3727)
!3755 = !DILocation(line: 593, column: 20, scope: !3727)
!3756 = distinct !{!3756, !3751, !3755}
!3757 = !DILocation(line: 595, column: 2, scope: !3727)
!3758 = !DILocation(line: 595, column: 8, scope: !3727)
!3759 = !DILocation(line: 595, column: 12, scope: !3727)
!3760 = !DILocation(line: 596, column: 8, scope: !3727)
!3761 = !DILocation(line: 596, column: 20, scope: !3727)
!3762 = distinct !{!3762, !3757, !3761}
!3763 = !DILocation(line: 598, column: 9, scope: !3727)
!3764 = !DILocation(line: 598, column: 2, scope: !3727)
!3765 = !DILocation(line: 599, column: 1, scope: !3727)
!3766 = distinct !DISubprogram(name: "muGetNoteFromFreq", scope: !421, file: !421, line: 601, type: !3767, isLocal: false, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!8, !463}
!3769 = !DILocalVariable(name: "fFreq", arg: 1, scope: !3766, file: !421, line: 601, type: !463)
!3770 = !DILocation(line: 601, column: 29, scope: !3766)
!3771 = !DILocalVariable(name: "iNote", scope: !3766, file: !421, line: 606, type: !8)
!3772 = !DILocation(line: 606, column: 5, scope: !3766)
!3773 = !DILocalVariable(name: "iBestNote", scope: !3766, file: !421, line: 606, type: !8)
!3774 = !DILocation(line: 606, column: 12, scope: !3766)
!3775 = !DILocalVariable(name: "fDiff", scope: !3766, file: !421, line: 607, type: !463)
!3776 = !DILocation(line: 607, column: 7, scope: !3766)
!3777 = !DILocalVariable(name: "f", scope: !3766, file: !421, line: 607, type: !463)
!3778 = !DILocation(line: 607, column: 20, scope: !3766)
!3779 = !DILocation(line: 609, column: 11, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3766, file: !421, line: 609, column: 2)
!3781 = !DILocation(line: 609, column: 6, scope: !3780)
!3782 = !DILocation(line: 609, column: 14, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !421, line: 609, column: 2)
!3784 = !DILocation(line: 609, column: 19, scope: !3783)
!3785 = !DILocation(line: 609, column: 2, scope: !3780)
!3786 = !DILocation(line: 611, column: 25, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3783, file: !421, line: 610, column: 3)
!3788 = !DILocation(line: 611, column: 7, scope: !3787)
!3789 = !DILocation(line: 611, column: 5, scope: !3787)
!3790 = !DILocation(line: 612, column: 8, scope: !3787)
!3791 = !DILocation(line: 612, column: 5, scope: !3787)
!3792 = !DILocation(line: 612, column: 19, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3787, file: !421, line: 612, column: 19)
!3794 = !DILocation(line: 612, column: 20, scope: !3793)
!3795 = !DILocation(line: 612, column: 19, scope: !3787)
!3796 = !DILocation(line: 612, column: 27, scope: !3793)
!3797 = !DILocation(line: 612, column: 26, scope: !3793)
!3798 = !DILocation(line: 612, column: 25, scope: !3793)
!3799 = !DILocation(line: 612, column: 24, scope: !3793)
!3800 = !DILocation(line: 613, column: 7, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3787, file: !421, line: 613, column: 7)
!3802 = !DILocation(line: 613, column: 11, scope: !3801)
!3803 = !DILocation(line: 613, column: 9, scope: !3801)
!3804 = !DILocation(line: 613, column: 7, scope: !3787)
!3805 = !DILocation(line: 615, column: 12, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3801, file: !421, line: 614, column: 4)
!3807 = !DILocation(line: 615, column: 10, scope: !3806)
!3808 = !DILocation(line: 616, column: 16, scope: !3806)
!3809 = !DILocation(line: 616, column: 14, scope: !3806)
!3810 = !DILocation(line: 617, column: 4, scope: !3806)
!3811 = !DILocation(line: 618, column: 3, scope: !3787)
!3812 = !DILocation(line: 609, column: 24, scope: !3783)
!3813 = !DILocation(line: 609, column: 2, scope: !3783)
!3814 = distinct !{!3814, !3785, !3815}
!3815 = !DILocation(line: 618, column: 3, scope: !3780)
!3816 = !DILocation(line: 620, column: 9, scope: !3766)
!3817 = !DILocation(line: 620, column: 2, scope: !3766)
!3818 = distinct !DISubprogram(name: "muGuessChord", scope: !421, file: !421, line: 624, type: !3819, isLocal: false, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!8, !3821, !3822, !3822, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!3823 = !DILocalVariable(name: "pNoteStatus", arg: 1, scope: !3818, file: !421, line: 624, type: !3821)
!3824 = !DILocation(line: 624, column: 29, scope: !3818)
!3825 = !DILocalVariable(name: "channel", arg: 2, scope: !3818, file: !421, line: 624, type: !3822)
!3826 = !DILocation(line: 624, column: 52, scope: !3818)
!3827 = !DILocalVariable(name: "lowRange", arg: 3, scope: !3818, file: !421, line: 624, type: !3822)
!3828 = !DILocation(line: 624, column: 71, scope: !3818)
!3829 = !DILocalVariable(name: "highRange", arg: 4, scope: !3818, file: !421, line: 624, type: !3822)
!3830 = !DILocation(line: 624, column: 91, scope: !3818)
!3831 = !DILocalVariable(name: "octave", scope: !3818, file: !421, line: 625, type: !3832)
!3832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 768, elements: !3833)
!3833 = !{!3834}
!3834 = !DISubrange(count: 24)
!3835 = !DILocation(line: 625, column: 6, scope: !3818)
!3836 = !DILocalVariable(name: "i", scope: !3818, file: !421, line: 626, type: !8)
!3837 = !DILocation(line: 626, column: 6, scope: !3818)
!3838 = !DILocalVariable(name: "lowestNote", scope: !3818, file: !421, line: 627, type: !8)
!3839 = !DILocation(line: 627, column: 6, scope: !3818)
!3840 = !DILocalVariable(name: "startNote", scope: !3818, file: !421, line: 628, type: !8)
!3841 = !DILocation(line: 628, column: 6, scope: !3818)
!3842 = !DILocalVariable(name: "chordRoot", scope: !3818, file: !421, line: 629, type: !8)
!3843 = !DILocation(line: 629, column: 6, scope: !3818)
!3844 = !DILocalVariable(name: "chordType", scope: !3818, file: !421, line: 630, type: !8)
!3845 = !DILocation(line: 630, column: 6, scope: !3818)
!3846 = !DILocalVariable(name: "chordAdditions", scope: !3818, file: !421, line: 631, type: !8)
!3847 = !DILocation(line: 631, column: 6, scope: !3818)
!3848 = !DILocation(line: 633, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3818, file: !421, line: 633, column: 2)
!3850 = !DILocation(line: 633, column: 6, scope: !3849)
!3851 = !DILocation(line: 633, column: 10, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3849, file: !421, line: 633, column: 2)
!3853 = !DILocation(line: 633, column: 11, scope: !3852)
!3854 = !DILocation(line: 633, column: 2, scope: !3849)
!3855 = !DILocation(line: 634, column: 10, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3852, file: !421, line: 633, column: 20)
!3857 = !DILocation(line: 634, column: 3, scope: !3856)
!3858 = !DILocation(line: 634, column: 13, scope: !3856)
!3859 = !DILocation(line: 635, column: 2, scope: !3856)
!3860 = !DILocation(line: 633, column: 15, scope: !3852)
!3861 = !DILocation(line: 633, column: 2, scope: !3852)
!3862 = distinct !{!3862, !3854, !3863}
!3863 = !DILocation(line: 635, column: 2, scope: !3849)
!3864 = !DILocation(line: 637, column: 8, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3818, file: !421, line: 637, column: 2)
!3866 = !DILocation(line: 637, column: 7, scope: !3865)
!3867 = !DILocation(line: 637, column: 6, scope: !3865)
!3868 = !DILocation(line: 637, column: 17, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3865, file: !421, line: 637, column: 2)
!3870 = !DILocation(line: 637, column: 20, scope: !3869)
!3871 = !DILocation(line: 637, column: 18, scope: !3869)
!3872 = !DILocation(line: 637, column: 2, scope: !3865)
!3873 = !DILocation(line: 638, column: 7, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !421, line: 638, column: 7)
!3875 = distinct !DILexicalBlock(scope: !3869, file: !421, line: 637, column: 35)
!3876 = !DILocation(line: 638, column: 19, scope: !3874)
!3877 = !DILocation(line: 638, column: 26, scope: !3874)
!3878 = !DILocation(line: 638, column: 33, scope: !3874)
!3879 = !DILocation(line: 638, column: 31, scope: !3874)
!3880 = !DILocation(line: 638, column: 7, scope: !3875)
!3881 = !DILocation(line: 639, column: 8, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !421, line: 639, column: 8)
!3883 = distinct !DILexicalBlock(scope: !3874, file: !421, line: 638, column: 37)
!3884 = !DILocation(line: 639, column: 10, scope: !3882)
!3885 = !DILocation(line: 639, column: 9, scope: !3882)
!3886 = !DILocation(line: 639, column: 8, scope: !3883)
!3887 = !DILocation(line: 640, column: 18, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3882, file: !421, line: 639, column: 22)
!3889 = !DILocation(line: 640, column: 16, scope: !3888)
!3890 = !DILocation(line: 641, column: 4, scope: !3888)
!3891 = !DILocation(line: 642, column: 13, scope: !3883)
!3892 = !DILocation(line: 642, column: 14, scope: !3883)
!3893 = !DILocation(line: 642, column: 6, scope: !3883)
!3894 = !DILocation(line: 642, column: 4, scope: !3883)
!3895 = !DILocation(line: 643, column: 13, scope: !3883)
!3896 = !DILocation(line: 643, column: 14, scope: !3883)
!3897 = !DILocation(line: 643, column: 17, scope: !3883)
!3898 = !DILocation(line: 643, column: 6, scope: !3883)
!3899 = !DILocation(line: 643, column: 4, scope: !3883)
!3900 = !DILocation(line: 644, column: 9, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3883, file: !421, line: 644, column: 8)
!3902 = !DILocation(line: 644, column: 10, scope: !3901)
!3903 = !DILocation(line: 644, column: 17, scope: !3901)
!3904 = !DILocation(line: 644, column: 15, scope: !3901)
!3905 = !DILocation(line: 644, column: 8, scope: !3883)
!3906 = !DILocation(line: 645, column: 17, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3901, file: !421, line: 644, column: 28)
!3908 = !DILocation(line: 645, column: 18, scope: !3907)
!3909 = !DILocation(line: 645, column: 15, scope: !3907)
!3910 = !DILocation(line: 646, column: 4, scope: !3907)
!3911 = !DILocation(line: 647, column: 3, scope: !3883)
!3912 = !DILocation(line: 648, column: 2, scope: !3875)
!3913 = !DILocation(line: 637, column: 30, scope: !3869)
!3914 = !DILocation(line: 637, column: 2, scope: !3869)
!3915 = distinct !{!3915, !3872, !3916}
!3916 = !DILocation(line: 648, column: 2, scope: !3865)
!3917 = !DILocation(line: 650, column: 6, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3818, file: !421, line: 650, column: 6)
!3919 = !DILocation(line: 650, column: 17, scope: !3918)
!3920 = !DILocation(line: 650, column: 6, scope: !3818)
!3921 = !DILocation(line: 651, column: 3, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3918, file: !421, line: 650, column: 25)
!3923 = !DILocation(line: 655, column: 13, scope: !3818)
!3924 = !DILocation(line: 658, column: 13, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3818, file: !421, line: 658, column: 6)
!3926 = !DILocation(line: 658, column: 22, scope: !3925)
!3927 = !DILocation(line: 658, column: 6, scope: !3925)
!3928 = !DILocation(line: 658, column: 26, scope: !3925)
!3929 = !DILocation(line: 658, column: 36, scope: !3925)
!3930 = !DILocation(line: 658, column: 45, scope: !3925)
!3931 = !DILocation(line: 658, column: 29, scope: !3925)
!3932 = !DILocation(line: 658, column: 6, scope: !3818)
!3933 = !DILocation(line: 659, column: 15, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3925, file: !421, line: 658, column: 50)
!3935 = !DILocation(line: 659, column: 24, scope: !3934)
!3936 = !DILocation(line: 659, column: 13, scope: !3934)
!3937 = !DILocation(line: 660, column: 13, scope: !3934)
!3938 = !DILocation(line: 661, column: 2, scope: !3934)
!3939 = !DILocation(line: 661, column: 20, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3925, file: !421, line: 661, column: 13)
!3941 = !DILocation(line: 661, column: 29, scope: !3940)
!3942 = !DILocation(line: 661, column: 13, scope: !3940)
!3943 = !DILocation(line: 661, column: 33, scope: !3940)
!3944 = !DILocation(line: 661, column: 43, scope: !3940)
!3945 = !DILocation(line: 661, column: 52, scope: !3940)
!3946 = !DILocation(line: 661, column: 36, scope: !3940)
!3947 = !DILocation(line: 661, column: 13, scope: !3925)
!3948 = !DILocation(line: 662, column: 15, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3940, file: !421, line: 661, column: 57)
!3950 = !DILocation(line: 662, column: 24, scope: !3949)
!3951 = !DILocation(line: 662, column: 13, scope: !3949)
!3952 = !DILocation(line: 663, column: 13, scope: !3949)
!3953 = !DILocation(line: 664, column: 2, scope: !3949)
!3954 = !DILocation(line: 664, column: 20, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3940, file: !421, line: 664, column: 13)
!3956 = !DILocation(line: 664, column: 29, scope: !3955)
!3957 = !DILocation(line: 664, column: 13, scope: !3955)
!3958 = !DILocation(line: 664, column: 33, scope: !3955)
!3959 = !DILocation(line: 664, column: 43, scope: !3955)
!3960 = !DILocation(line: 664, column: 52, scope: !3955)
!3961 = !DILocation(line: 664, column: 36, scope: !3955)
!3962 = !DILocation(line: 664, column: 13, scope: !3940)
!3963 = !DILocation(line: 665, column: 15, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3955, file: !421, line: 664, column: 57)
!3965 = !DILocation(line: 665, column: 13, scope: !3964)
!3966 = !DILocation(line: 666, column: 13, scope: !3964)
!3967 = !DILocation(line: 669, column: 2, scope: !3964)
!3968 = !DILocation(line: 669, column: 20, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3955, file: !421, line: 669, column: 13)
!3970 = !DILocation(line: 669, column: 29, scope: !3969)
!3971 = !DILocation(line: 669, column: 13, scope: !3969)
!3972 = !DILocation(line: 669, column: 33, scope: !3969)
!3973 = !DILocation(line: 669, column: 43, scope: !3969)
!3974 = !DILocation(line: 669, column: 52, scope: !3969)
!3975 = !DILocation(line: 669, column: 36, scope: !3969)
!3976 = !DILocation(line: 669, column: 13, scope: !3955)
!3977 = !DILocation(line: 670, column: 15, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3969, file: !421, line: 669, column: 57)
!3979 = !DILocation(line: 670, column: 24, scope: !3978)
!3980 = !DILocation(line: 670, column: 13, scope: !3978)
!3981 = !DILocation(line: 671, column: 13, scope: !3978)
!3982 = !DILocation(line: 672, column: 2, scope: !3978)
!3983 = !DILocation(line: 672, column: 20, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3969, file: !421, line: 672, column: 13)
!3985 = !DILocation(line: 672, column: 29, scope: !3984)
!3986 = !DILocation(line: 672, column: 13, scope: !3984)
!3987 = !DILocation(line: 672, column: 33, scope: !3984)
!3988 = !DILocation(line: 672, column: 43, scope: !3984)
!3989 = !DILocation(line: 672, column: 52, scope: !3984)
!3990 = !DILocation(line: 672, column: 36, scope: !3984)
!3991 = !DILocation(line: 672, column: 13, scope: !3969)
!3992 = !DILocation(line: 673, column: 15, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3984, file: !421, line: 672, column: 57)
!3994 = !DILocation(line: 673, column: 24, scope: !3993)
!3995 = !DILocation(line: 673, column: 13, scope: !3993)
!3996 = !DILocation(line: 674, column: 13, scope: !3993)
!3997 = !DILocation(line: 675, column: 2, scope: !3993)
!3998 = !DILocation(line: 675, column: 20, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3984, file: !421, line: 675, column: 13)
!4000 = !DILocation(line: 675, column: 29, scope: !3999)
!4001 = !DILocation(line: 675, column: 13, scope: !3999)
!4002 = !DILocation(line: 675, column: 33, scope: !3999)
!4003 = !DILocation(line: 675, column: 43, scope: !3999)
!4004 = !DILocation(line: 675, column: 52, scope: !3999)
!4005 = !DILocation(line: 675, column: 36, scope: !3999)
!4006 = !DILocation(line: 675, column: 13, scope: !3984)
!4007 = !DILocation(line: 676, column: 15, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3999, file: !421, line: 675, column: 57)
!4009 = !DILocation(line: 676, column: 13, scope: !4008)
!4010 = !DILocation(line: 677, column: 13, scope: !4008)
!4011 = !DILocation(line: 680, column: 2, scope: !4008)
!4012 = !DILocation(line: 680, column: 20, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3999, file: !421, line: 680, column: 13)
!4014 = !DILocation(line: 680, column: 29, scope: !4013)
!4015 = !DILocation(line: 680, column: 13, scope: !4013)
!4016 = !DILocation(line: 680, column: 33, scope: !4013)
!4017 = !DILocation(line: 680, column: 43, scope: !4013)
!4018 = !DILocation(line: 680, column: 52, scope: !4013)
!4019 = !DILocation(line: 680, column: 36, scope: !4013)
!4020 = !DILocation(line: 680, column: 13, scope: !3999)
!4021 = !DILocation(line: 681, column: 15, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4013, file: !421, line: 680, column: 57)
!4023 = !DILocation(line: 681, column: 13, scope: !4022)
!4024 = !DILocation(line: 682, column: 13, scope: !4022)
!4025 = !DILocation(line: 683, column: 2, scope: !4022)
!4026 = !DILocation(line: 683, column: 20, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4013, file: !421, line: 683, column: 13)
!4028 = !DILocation(line: 683, column: 29, scope: !4027)
!4029 = !DILocation(line: 683, column: 13, scope: !4027)
!4030 = !DILocation(line: 683, column: 33, scope: !4027)
!4031 = !DILocation(line: 683, column: 43, scope: !4027)
!4032 = !DILocation(line: 683, column: 52, scope: !4027)
!4033 = !DILocation(line: 683, column: 36, scope: !4027)
!4034 = !DILocation(line: 683, column: 13, scope: !4013)
!4035 = !DILocation(line: 684, column: 15, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4027, file: !421, line: 683, column: 57)
!4037 = !DILocation(line: 684, column: 13, scope: !4036)
!4038 = !DILocation(line: 685, column: 13, scope: !4036)
!4039 = !DILocation(line: 688, column: 2, scope: !4036)
!4040 = !DILocation(line: 688, column: 20, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4027, file: !421, line: 688, column: 13)
!4042 = !DILocation(line: 688, column: 29, scope: !4041)
!4043 = !DILocation(line: 688, column: 13, scope: !4041)
!4044 = !DILocation(line: 688, column: 33, scope: !4041)
!4045 = !DILocation(line: 688, column: 43, scope: !4041)
!4046 = !DILocation(line: 688, column: 52, scope: !4041)
!4047 = !DILocation(line: 688, column: 36, scope: !4041)
!4048 = !DILocation(line: 688, column: 13, scope: !4027)
!4049 = !DILocation(line: 689, column: 15, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4041, file: !421, line: 688, column: 57)
!4051 = !DILocation(line: 689, column: 13, scope: !4050)
!4052 = !DILocation(line: 690, column: 13, scope: !4050)
!4053 = !DILocation(line: 691, column: 2, scope: !4050)
!4054 = !DILocation(line: 693, column: 13, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !3818, file: !421, line: 693, column: 6)
!4056 = !DILocation(line: 693, column: 23, scope: !4055)
!4057 = !DILocation(line: 693, column: 6, scope: !4055)
!4058 = !DILocation(line: 693, column: 6, scope: !3818)
!4059 = !DILocation(line: 694, column: 18, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4055, file: !421, line: 693, column: 30)
!4061 = !DILocation(line: 695, column: 2, scope: !4060)
!4062 = !DILocation(line: 696, column: 13, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !3818, file: !421, line: 696, column: 6)
!4064 = !DILocation(line: 696, column: 23, scope: !4063)
!4065 = !DILocation(line: 696, column: 6, scope: !4063)
!4066 = !DILocation(line: 696, column: 6, scope: !3818)
!4067 = !DILocation(line: 697, column: 18, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4063, file: !421, line: 696, column: 30)
!4069 = !DILocation(line: 698, column: 2, scope: !4068)
!4070 = !DILocation(line: 699, column: 13, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !3818, file: !421, line: 699, column: 6)
!4072 = !DILocation(line: 699, column: 23, scope: !4071)
!4073 = !DILocation(line: 699, column: 6, scope: !4071)
!4074 = !DILocation(line: 699, column: 6, scope: !3818)
!4075 = !DILocation(line: 700, column: 18, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4071, file: !421, line: 699, column: 29)
!4077 = !DILocation(line: 701, column: 2, scope: !4076)
!4078 = !DILocation(line: 703, column: 12, scope: !3818)
!4079 = !DILocation(line: 705, column: 6, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !3818, file: !421, line: 705, column: 6)
!4081 = !DILocation(line: 705, column: 16, scope: !4080)
!4082 = !DILocation(line: 705, column: 6, scope: !3818)
!4083 = !DILocation(line: 706, column: 3, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4080, file: !421, line: 705, column: 22)
!4085 = !DILocation(line: 709, column: 9, scope: !3818)
!4086 = !DILocation(line: 709, column: 21, scope: !3818)
!4087 = !DILocation(line: 709, column: 19, scope: !3818)
!4088 = !DILocation(line: 709, column: 33, scope: !3818)
!4089 = !DILocation(line: 709, column: 31, scope: !3818)
!4090 = !DILocation(line: 709, column: 51, scope: !3818)
!4091 = !DILocation(line: 709, column: 61, scope: !3818)
!4092 = !DILocation(line: 709, column: 48, scope: !3818)
!4093 = !DILocation(line: 709, column: 2, scope: !3818)
!4094 = !DILocation(line: 710, column: 1, scope: !3818)
!4095 = distinct !DISubprogram(name: "muGetChordName", scope: !421, file: !421, line: 712, type: !3697, isLocal: false, isDefinition: true, scopeLine: 712, flags: DIFlagPrototyped, isOptimized: false, unit: !420, variables: !378)
!4096 = !DILocalVariable(name: "str", arg: 1, scope: !4095, file: !421, line: 712, type: !253)
!4097 = !DILocation(line: 712, column: 28, scope: !4095)
!4098 = !DILocalVariable(name: "chord", arg: 2, scope: !4095, file: !421, line: 712, type: !8)
!4099 = !DILocation(line: 712, column: 37, scope: !4095)
!4100 = !DILocalVariable(name: "root", scope: !4095, file: !421, line: 713, type: !8)
!4101 = !DILocation(line: 713, column: 6, scope: !4095)
!4102 = !DILocation(line: 713, column: 13, scope: !4095)
!4103 = !DILocation(line: 713, column: 19, scope: !4095)
!4104 = !DILocalVariable(name: "bass", scope: !4095, file: !421, line: 714, type: !8)
!4105 = !DILocation(line: 714, column: 6, scope: !4095)
!4106 = !DILocation(line: 714, column: 14, scope: !4095)
!4107 = !DILocation(line: 714, column: 20, scope: !4095)
!4108 = !DILocation(line: 714, column: 39, scope: !4095)
!4109 = !DILocation(line: 716, column: 6, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4095, file: !421, line: 716, column: 6)
!4111 = !DILocation(line: 716, column: 11, scope: !4110)
!4112 = !DILocation(line: 716, column: 15, scope: !4110)
!4113 = !DILocation(line: 716, column: 18, scope: !4110)
!4114 = !DILocation(line: 716, column: 23, scope: !4110)
!4115 = !DILocation(line: 716, column: 6, scope: !4095)
!4116 = !DILocation(line: 717, column: 8, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4110, file: !421, line: 716, column: 29)
!4118 = !DILocation(line: 718, column: 2, scope: !4117)
!4119 = !DILocation(line: 720, column: 6, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4095, file: !421, line: 720, column: 6)
!4121 = !DILocation(line: 720, column: 11, scope: !4120)
!4122 = !DILocation(line: 720, column: 15, scope: !4120)
!4123 = !DILocation(line: 720, column: 18, scope: !4120)
!4124 = !DILocation(line: 720, column: 23, scope: !4120)
!4125 = !DILocation(line: 720, column: 6, scope: !4095)
!4126 = !DILocation(line: 721, column: 8, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4120, file: !421, line: 720, column: 29)
!4128 = !DILocation(line: 722, column: 2, scope: !4127)
!4129 = !DILocation(line: 724, column: 9, scope: !4095)
!4130 = !DILocation(line: 724, column: 25, scope: !4095)
!4131 = !DILocation(line: 724, column: 14, scope: !4095)
!4132 = !DILocation(line: 724, column: 2, scope: !4095)
!4133 = !DILocation(line: 726, column: 9, scope: !4095)
!4134 = !DILocation(line: 726, column: 15, scope: !4095)
!4135 = !DILocation(line: 726, column: 2, scope: !4095)
!4136 = !DILocation(line: 728, column: 4, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4095, file: !421, line: 726, column: 34)
!4138 = !DILocation(line: 730, column: 11, scope: !4137)
!4139 = !DILocation(line: 730, column: 4, scope: !4137)
!4140 = !DILocation(line: 731, column: 4, scope: !4137)
!4141 = !DILocation(line: 733, column: 11, scope: !4137)
!4142 = !DILocation(line: 733, column: 4, scope: !4137)
!4143 = !DILocation(line: 734, column: 4, scope: !4137)
!4144 = !DILocation(line: 736, column: 11, scope: !4137)
!4145 = !DILocation(line: 736, column: 4, scope: !4137)
!4146 = !DILocation(line: 737, column: 4, scope: !4137)
!4147 = !DILocation(line: 740, column: 6, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4095, file: !421, line: 740, column: 6)
!4149 = !DILocation(line: 740, column: 12, scope: !4148)
!4150 = !DILocation(line: 740, column: 6, scope: !4095)
!4151 = !DILocation(line: 741, column: 10, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4148, file: !421, line: 740, column: 29)
!4153 = !DILocation(line: 741, column: 3, scope: !4152)
!4154 = !DILocation(line: 742, column: 2, scope: !4152)
!4155 = !DILocation(line: 743, column: 6, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4095, file: !421, line: 743, column: 6)
!4157 = !DILocation(line: 743, column: 12, scope: !4156)
!4158 = !DILocation(line: 743, column: 6, scope: !4095)
!4159 = !DILocation(line: 744, column: 10, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4156, file: !421, line: 743, column: 29)
!4161 = !DILocation(line: 744, column: 3, scope: !4160)
!4162 = !DILocation(line: 745, column: 2, scope: !4160)
!4163 = !DILocation(line: 746, column: 6, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4095, file: !421, line: 746, column: 6)
!4165 = !DILocation(line: 746, column: 12, scope: !4164)
!4166 = !DILocation(line: 746, column: 6, scope: !4095)
!4167 = !DILocation(line: 747, column: 10, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4164, file: !421, line: 746, column: 32)
!4169 = !DILocation(line: 747, column: 3, scope: !4168)
!4170 = !DILocation(line: 748, column: 2, scope: !4168)
!4171 = !DILocation(line: 750, column: 6, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4095, file: !421, line: 750, column: 6)
!4173 = !DILocation(line: 750, column: 14, scope: !4172)
!4174 = !DILocation(line: 750, column: 11, scope: !4172)
!4175 = !DILocation(line: 750, column: 6, scope: !4095)
!4176 = !DILocation(line: 751, column: 10, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4172, file: !421, line: 750, column: 20)
!4178 = !DILocation(line: 751, column: 3, scope: !4177)
!4179 = !DILocation(line: 752, column: 10, scope: !4177)
!4180 = !DILocation(line: 752, column: 26, scope: !4177)
!4181 = !DILocation(line: 752, column: 15, scope: !4177)
!4182 = !DILocation(line: 752, column: 3, scope: !4177)
!4183 = !DILocation(line: 753, column: 2, scope: !4177)
!4184 = !DILocation(line: 755, column: 9, scope: !4095)
!4185 = !DILocation(line: 755, column: 2, scope: !4095)
!4186 = distinct !DISubprogram(name: "InitPrefs", scope: !467, file: !467, line: 62, type: !4187, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !470, variables: !378)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{null, !479}
!4189 = !DILocalVariable(name: "pPrefs", arg: 1, scope: !4186, file: !467, line: 62, type: !479)
!4190 = !DILocation(line: 62, column: 31, scope: !4186)
!4191 = !DILocation(line: 64, column: 2, scope: !4186)
!4192 = !DILocation(line: 64, column: 10, scope: !4186)
!4193 = !DILocation(line: 64, column: 17, scope: !4186)
!4194 = !DILocation(line: 65, column: 2, scope: !4186)
!4195 = !DILocation(line: 65, column: 10, scope: !4186)
!4196 = !DILocation(line: 65, column: 22, scope: !4186)
!4197 = !DILocation(line: 66, column: 2, scope: !4186)
!4198 = !DILocation(line: 66, column: 10, scope: !4186)
!4199 = !DILocation(line: 66, column: 27, scope: !4186)
!4200 = !DILocation(line: 67, column: 2, scope: !4186)
!4201 = !DILocation(line: 67, column: 10, scope: !4186)
!4202 = !DILocation(line: 67, column: 19, scope: !4186)
!4203 = !DILocation(line: 68, column: 1, scope: !4186)
!4204 = !DILocalVariable(name: "curr", arg: 1, scope: !466, file: !467, line: 70, type: !8)
!4205 = !DILocation(line: 70, column: 30, scope: !466)
!4206 = !DILocalVariable(name: "iBest", scope: !466, file: !467, line: 75, type: !8)
!4207 = !DILocation(line: 75, column: 5, scope: !466)
!4208 = !DILocalVariable(name: "iDiff", scope: !466, file: !467, line: 75, type: !8)
!4209 = !DILocation(line: 75, column: 17, scope: !466)
!4210 = !DILocalVariable(name: "i", scope: !466, file: !467, line: 75, type: !8)
!4211 = !DILocation(line: 75, column: 24, scope: !466)
!4212 = !DILocalVariable(name: "iSetting", scope: !466, file: !467, line: 75, type: !8)
!4213 = !DILocation(line: 75, column: 27, scope: !466)
!4214 = !DILocation(line: 77, column: 7, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !466, file: !467, line: 77, column: 2)
!4216 = !DILocation(line: 77, column: 6, scope: !4215)
!4217 = !DILocation(line: 77, column: 10, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4215, file: !467, line: 77, column: 2)
!4219 = !DILocation(line: 77, column: 11, scope: !4218)
!4220 = !DILocation(line: 77, column: 2, scope: !4215)
!4221 = !DILocation(line: 79, column: 17, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4218, file: !467, line: 78, column: 3)
!4223 = !DILocation(line: 79, column: 11, scope: !4222)
!4224 = !DILocation(line: 79, column: 20, scope: !4222)
!4225 = !DILocation(line: 79, column: 19, scope: !4222)
!4226 = !DILocation(line: 79, column: 9, scope: !4222)
!4227 = !DILocation(line: 80, column: 7, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4222, file: !467, line: 80, column: 7)
!4229 = !DILocation(line: 80, column: 13, scope: !4228)
!4230 = !DILocation(line: 80, column: 7, scope: !4222)
!4231 = !DILocation(line: 80, column: 25, scope: !4228)
!4232 = !DILocation(line: 80, column: 24, scope: !4228)
!4233 = !DILocation(line: 80, column: 23, scope: !4228)
!4234 = !DILocation(line: 80, column: 18, scope: !4228)
!4235 = !DILocation(line: 81, column: 7, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4222, file: !467, line: 81, column: 7)
!4237 = !DILocation(line: 81, column: 15, scope: !4236)
!4238 = !DILocation(line: 81, column: 13, scope: !4236)
!4239 = !DILocation(line: 81, column: 7, scope: !4222)
!4240 = !DILocation(line: 83, column: 12, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4236, file: !467, line: 82, column: 4)
!4242 = !DILocation(line: 83, column: 10, scope: !4241)
!4243 = !DILocation(line: 84, column: 15, scope: !4241)
!4244 = !DILocation(line: 84, column: 13, scope: !4241)
!4245 = !DILocation(line: 85, column: 4, scope: !4241)
!4246 = !DILocation(line: 86, column: 3, scope: !4222)
!4247 = !DILocation(line: 77, column: 44, scope: !4218)
!4248 = !DILocation(line: 77, column: 2, scope: !4218)
!4249 = distinct !{!4249, !4220, !4250}
!4250 = !DILocation(line: 86, column: 3, scope: !4215)
!4251 = !DILocation(line: 87, column: 15, scope: !466)
!4252 = !DILocation(line: 87, column: 9, scope: !466)
!4253 = !DILocation(line: 87, column: 2, scope: !466)
!4254 = distinct !DISubprogram(name: "sndPlayBeep", scope: !467, file: !467, line: 90, type: !4255, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !470, variables: !378)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !463, !8, !479}
!4257 = !DILocalVariable(name: "freq", arg: 1, scope: !4254, file: !467, line: 90, type: !463)
!4258 = !DILocation(line: 90, column: 24, scope: !4254)
!4259 = !DILocalVariable(name: "ms", arg: 2, scope: !4254, file: !467, line: 90, type: !8)
!4260 = !DILocation(line: 90, column: 34, scope: !4254)
!4261 = !DILocalVariable(name: "pPrefs", arg: 3, scope: !4254, file: !467, line: 90, type: !479)
!4262 = !DILocation(line: 90, column: 53, scope: !4254)
!4263 = !DILocalVariable(name: "iInterNoteGap", scope: !4254, file: !467, line: 92, type: !3822)
!4264 = !DILocation(line: 92, column: 11, scope: !4254)
!4265 = !DILocation(line: 94, column: 6, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4254, file: !467, line: 94, column: 6)
!4267 = !DILocation(line: 94, column: 6, scope: !4254)
!4268 = !DILocation(line: 95, column: 21, scope: !4266)
!4269 = !DILocation(line: 95, column: 20, scope: !4266)
!4270 = !DILocation(line: 95, column: 8, scope: !4266)
!4271 = !DILocation(line: 95, column: 3, scope: !4266)
!4272 = !DILocation(line: 97, column: 8, scope: !4254)
!4273 = !DILocation(line: 97, column: 16, scope: !4254)
!4274 = !DILocation(line: 97, column: 42, scope: !4254)
!4275 = !DILocation(line: 97, column: 37, scope: !4254)
!4276 = !DILocation(line: 97, column: 2, scope: !4254)
!4277 = !DILocation(line: 98, column: 6, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4254, file: !467, line: 98, column: 6)
!4279 = !DILocation(line: 98, column: 9, scope: !4278)
!4280 = !DILocation(line: 98, column: 6, scope: !4254)
!4281 = !DILocation(line: 101, column: 6, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4278, file: !467, line: 99, column: 3)
!4283 = !DILocation(line: 102, column: 10, scope: !4282)
!4284 = !DILocation(line: 102, column: 12, scope: !4282)
!4285 = !DILocation(line: 102, column: 3, scope: !4282)
!4286 = !DILocation(line: 103, column: 9, scope: !4282)
!4287 = !DILocation(line: 103, column: 17, scope: !4282)
!4288 = !DILocation(line: 103, column: 3, scope: !4282)
!4289 = !DILocation(line: 104, column: 6, scope: !4282)
!4290 = !DILocation(line: 105, column: 3, scope: !4282)
!4291 = !DILocation(line: 106, column: 9, scope: !4254)
!4292 = !DILocation(line: 106, column: 11, scope: !4254)
!4293 = !DILocation(line: 106, column: 2, scope: !4254)
!4294 = !DILocation(line: 107, column: 1, scope: !4254)
!4295 = !DILocalVariable(name: "iNote", arg: 1, scope: !476, file: !467, line: 109, type: !8)
!4296 = !DILocation(line: 109, column: 20, scope: !476)
!4297 = !DILocalVariable(name: "iVol", arg: 2, scope: !476, file: !467, line: 109, type: !8)
!4298 = !DILocation(line: 109, column: 31, scope: !476)
!4299 = !DILocalVariable(name: "iDeltaTime", arg: 3, scope: !476, file: !467, line: 109, type: !8)
!4300 = !DILocation(line: 109, column: 41, scope: !476)
!4301 = !DILocalVariable(name: "pPrefs", arg: 4, scope: !476, file: !467, line: 109, type: !479)
!4302 = !DILocation(line: 109, column: 68, scope: !476)
!4303 = !DILocalVariable(name: "iLen", scope: !476, file: !467, line: 114, type: !8)
!4304 = !DILocation(line: 114, column: 5, scope: !476)
!4305 = !DILocation(line: 116, column: 6, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !476, file: !467, line: 116, column: 6)
!4307 = !DILocation(line: 116, column: 16, scope: !4306)
!4308 = !DILocation(line: 116, column: 6, scope: !476)
!4309 = !DILocation(line: 117, column: 3, scope: !4306)
!4310 = !DILocation(line: 119, column: 7, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !476, file: !467, line: 119, column: 6)
!4312 = !DILocation(line: 119, column: 15, scope: !4311)
!4313 = !DILocation(line: 119, column: 6, scope: !476)
!4314 = !DILocalVariable(name: "tempo", scope: !4315, file: !467, line: 121, type: !8)
!4315 = distinct !DILexicalBlock(scope: !4311, file: !467, line: 120, column: 3)
!4316 = !DILocation(line: 121, column: 7, scope: !4315)
!4317 = !DILocation(line: 121, column: 36, scope: !4315)
!4318 = !DILocation(line: 121, column: 44, scope: !4315)
!4319 = !DILocation(line: 121, column: 50, scope: !4315)
!4320 = !DILocation(line: 121, column: 15, scope: !4315)
!4321 = !DILocation(line: 122, column: 19, scope: !4315)
!4322 = !DILocation(line: 122, column: 3, scope: !4315)
!4323 = !DILocation(line: 123, column: 3, scope: !4315)
!4324 = !DILocation(line: 123, column: 11, scope: !4315)
!4325 = !DILocation(line: 123, column: 23, scope: !4315)
!4326 = !DILocation(line: 124, column: 3, scope: !4315)
!4327 = !DILocation(line: 126, column: 6, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !476, file: !467, line: 126, column: 6)
!4329 = !DILocation(line: 126, column: 14, scope: !4328)
!4330 = !DILocation(line: 126, column: 6, scope: !476)
!4331 = !DILocation(line: 127, column: 3, scope: !4328)
!4332 = !DILocation(line: 129, column: 18, scope: !476)
!4333 = !DILocation(line: 129, column: 17, scope: !476)
!4334 = !DILocation(line: 129, column: 7, scope: !476)
!4335 = !DILocation(line: 130, column: 19, scope: !476)
!4336 = !DILocation(line: 130, column: 36, scope: !476)
!4337 = !DILocation(line: 130, column: 41, scope: !476)
!4338 = !DILocation(line: 130, column: 25, scope: !476)
!4339 = !DILocation(line: 130, column: 48, scope: !476)
!4340 = !DILocation(line: 130, column: 53, scope: !476)
!4341 = !DILocation(line: 130, column: 57, scope: !476)
!4342 = !DILocation(line: 130, column: 2, scope: !476)
!4343 = !DILocation(line: 132, column: 2, scope: !476)
!4344 = !DILocation(line: 132, column: 10, scope: !476)
!4345 = !DILocation(line: 132, column: 27, scope: !476)
!4346 = !DILocation(line: 133, column: 1, scope: !476)
!4347 = distinct !DISubprogram(name: "outSMLCCode", scope: !467, file: !467, line: 135, type: !477, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !470, variables: !378)
!4348 = !DILocalVariable(name: "iNote", arg: 1, scope: !4347, file: !467, line: 135, type: !8)
!4349 = !DILocation(line: 135, column: 22, scope: !4347)
!4350 = !DILocalVariable(name: "iVol", arg: 2, scope: !4347, file: !467, line: 135, type: !8)
!4351 = !DILocation(line: 135, column: 33, scope: !4347)
!4352 = !DILocalVariable(name: "iDeltaTime", arg: 3, scope: !4347, file: !467, line: 135, type: !8)
!4353 = !DILocation(line: 135, column: 43, scope: !4347)
!4354 = !DILocalVariable(name: "pPrefs", arg: 4, scope: !4347, file: !467, line: 135, type: !479)
!4355 = !DILocation(line: 135, column: 70, scope: !4347)
!4356 = !DILocation(line: 138, column: 1, scope: !4347)
!4357 = distinct !DISubprogram(name: "outSpeaker", scope: !467, file: !467, line: 140, type: !477, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !470, variables: !378)
!4358 = !DILocalVariable(name: "iNote", arg: 1, scope: !4357, file: !467, line: 140, type: !8)
!4359 = !DILocation(line: 140, column: 21, scope: !4357)
!4360 = !DILocalVariable(name: "iVol", arg: 2, scope: !4357, file: !467, line: 140, type: !8)
!4361 = !DILocation(line: 140, column: 32, scope: !4357)
!4362 = !DILocalVariable(name: "iDeltaTime", arg: 3, scope: !4357, file: !467, line: 140, type: !8)
!4363 = !DILocation(line: 140, column: 42, scope: !4357)
!4364 = !DILocalVariable(name: "pPrefs", arg: 4, scope: !4357, file: !467, line: 140, type: !479)
!4365 = !DILocation(line: 140, column: 69, scope: !4357)
!4366 = !DILocalVariable(name: "ms", scope: !4357, file: !467, line: 142, type: !8)
!4367 = !DILocation(line: 142, column: 5, scope: !4357)
!4368 = !DILocation(line: 144, column: 14, scope: !4357)
!4369 = !DILocation(line: 144, column: 13, scope: !4357)
!4370 = !DILocation(line: 144, column: 29, scope: !4357)
!4371 = !DILocation(line: 144, column: 37, scope: !4357)
!4372 = !DILocation(line: 144, column: 28, scope: !4357)
!4373 = !DILocation(line: 144, column: 43, scope: !4357)
!4374 = !DILocation(line: 144, column: 25, scope: !4357)
!4375 = !DILocation(line: 144, column: 5, scope: !4357)
!4376 = !DILocation(line: 146, column: 6, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4357, file: !467, line: 146, column: 6)
!4378 = !DILocation(line: 146, column: 12, scope: !4377)
!4379 = !DILocation(line: 146, column: 6, scope: !4357)
!4380 = !DILocation(line: 147, column: 18, scope: !4377)
!4381 = !DILocation(line: 147, column: 22, scope: !4377)
!4382 = !DILocation(line: 147, column: 3, scope: !4377)
!4383 = !DILocation(line: 149, column: 33, scope: !4377)
!4384 = !DILocation(line: 149, column: 15, scope: !4377)
!4385 = !DILocation(line: 149, column: 41, scope: !4377)
!4386 = !DILocation(line: 149, column: 45, scope: !4377)
!4387 = !DILocation(line: 149, column: 3, scope: !4377)
!4388 = !DILocation(line: 150, column: 1, scope: !4357)
!4389 = distinct !DISubprogram(name: "ConvertMIDI", scope: !467, file: !467, line: 152, type: !4390, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !470, variables: !378)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !499, !4392, !8, !479}
!4392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4393)
!4393 = !DIDerivedType(tag: DW_TAG_typedef, name: "cb_Output", file: !467, line: 59, baseType: !4394)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 32)
!4395 = !DILocalVariable(name: "pFilename", arg: 1, scope: !4389, file: !467, line: 152, type: !499)
!4396 = !DILocation(line: 152, column: 30, scope: !4389)
!4397 = !DILocalVariable(name: "pAddNote", arg: 2, scope: !4389, file: !467, line: 152, type: !4392)
!4398 = !DILocation(line: 152, column: 57, scope: !4389)
!4399 = !DILocalVariable(name: "iChannel", arg: 3, scope: !4389, file: !467, line: 152, type: !8)
!4400 = !DILocation(line: 152, column: 71, scope: !4389)
!4401 = !DILocalVariable(name: "pPrefs", arg: 4, scope: !4389, file: !467, line: 152, type: !479)
!4402 = !DILocation(line: 152, column: 96, scope: !4389)
!4403 = !DILocalVariable(name: "mf", scope: !4389, file: !467, line: 154, type: !9)
!4404 = !DILocation(line: 154, column: 12, scope: !4389)
!4405 = !DILocation(line: 154, column: 30, scope: !4389)
!4406 = !DILocation(line: 154, column: 17, scope: !4389)
!4407 = !DILocalVariable(name: "iCurrPlayingNote", scope: !4389, file: !467, line: 155, type: !8)
!4408 = !DILocation(line: 155, column: 5, scope: !4389)
!4409 = !DILocalVariable(name: "iCurrPlayingVol", scope: !4389, file: !467, line: 155, type: !8)
!4410 = !DILocation(line: 155, column: 23, scope: !4389)
!4411 = !DILocalVariable(name: "iCurrPlayStart", scope: !4389, file: !467, line: 155, type: !8)
!4412 = !DILocation(line: 155, column: 40, scope: !4389)
!4413 = !DILocalVariable(name: "dtPos", scope: !4389, file: !467, line: 156, type: !8)
!4414 = !DILocation(line: 156, column: 5, scope: !4389)
!4415 = !DILocation(line: 158, column: 6, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4389, file: !467, line: 158, column: 6)
!4417 = !DILocation(line: 158, column: 6, scope: !4389)
!4418 = !DILocalVariable(name: "msg", scope: !4419, file: !467, line: 160, type: !4420)
!4419 = distinct !DILexicalBlock(scope: !4416, file: !467, line: 159, column: 3)
!4420 = !DIDerivedType(tag: DW_TAG_typedef, name: "MIDI_MSG", file: !7, line: 152, baseType: !4421)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 69, size: 512, elements: !4422)
!4422 = !{!4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4516, !4517}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "iType", scope: !4421, file: !7, line: 70, baseType: !362, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dt", scope: !4421, file: !7, line: 72, baseType: !315, size: 32, offset: 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "dwAbsPos", scope: !4421, file: !7, line: 73, baseType: !315, size: 32, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "iMsgSize", scope: !4421, file: !7, line: 74, baseType: !315, size: 32, offset: 96)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "bImpliedMsg", scope: !4421, file: !7, line: 76, baseType: !6, size: 32, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "iImpliedMsg", scope: !4421, file: !7, line: 77, baseType: !362, size: 32, offset: 160)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4421, file: !7, line: 80, baseType: !322, size: 32, offset: 192)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "data_sz", scope: !4421, file: !7, line: 81, baseType: !315, size: 32, offset: 224)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "MsgData", scope: !4421, file: !7, line: 146, baseType: !4432, size: 192, offset: 256)
!4432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4421, file: !7, line: 83, size: 192, elements: !4433)
!4433 = !{!4434, !4440, !4445, !4451, !4457, !4462, !4467, !4472, !4511}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "NoteOn", scope: !4432, file: !7, line: 88, baseType: !4435, size: 96)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !7, line: 84, size: 96, elements: !4436)
!4436 = !{!4437, !4438, !4439}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "iNote", scope: !4435, file: !7, line: 85, baseType: !8, size: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !4435, file: !7, line: 86, baseType: !8, size: 32, offset: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "iVolume", scope: !4435, file: !7, line: 87, baseType: !8, size: 32, offset: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "NoteOff", scope: !4432, file: !7, line: 92, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !7, line: 89, size: 64, elements: !4442)
!4442 = !{!4443, !4444}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "iNote", scope: !4441, file: !7, line: 90, baseType: !8, size: 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !4441, file: !7, line: 91, baseType: !8, size: 32, offset: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "NoteKeyPressure", scope: !4432, file: !7, line: 97, baseType: !4446, size: 96)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !7, line: 93, size: 96, elements: !4447)
!4447 = !{!4448, !4449, !4450}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "iNote", scope: !4446, file: !7, line: 94, baseType: !8, size: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !4446, file: !7, line: 95, baseType: !8, size: 32, offset: 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "iPressure", scope: !4446, file: !7, line: 96, baseType: !8, size: 32, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "NoteParameter", scope: !4432, file: !7, line: 102, baseType: !4452, size: 96)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !7, line: 98, size: 96, elements: !4453)
!4453 = !{!4454, !4455, !4456}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !4452, file: !7, line: 99, baseType: !8, size: 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "iControl", scope: !4452, file: !7, line: 100, baseType: !363, size: 32, offset: 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "iParam", scope: !4452, file: !7, line: 101, baseType: !8, size: 32, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "ChangeProgram", scope: !4432, file: !7, line: 106, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !7, line: 103, size: 64, elements: !4459)
!4459 = !{!4460, !4461}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !4458, file: !7, line: 104, baseType: !8, size: 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "iProgram", scope: !4458, file: !7, line: 105, baseType: !8, size: 32, offset: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "ChangePressure", scope: !4432, file: !7, line: 110, baseType: !4463, size: 64)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !7, line: 107, size: 64, elements: !4464)
!4464 = !{!4465, !4466}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !4463, file: !7, line: 108, baseType: !8, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "iPressure", scope: !4463, file: !7, line: 109, baseType: !8, size: 32, offset: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "PitchWheel", scope: !4432, file: !7, line: 114, baseType: !4468, size: 64)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !7, line: 111, size: 64, elements: !4469)
!4469 = !{!4470, !4471}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "iChannel", scope: !4468, file: !7, line: 112, baseType: !8, size: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "iPitch", scope: !4468, file: !7, line: 113, baseType: !8, size: 32, offset: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "MetaEvent", scope: !4432, file: !7, line: 141, baseType: !4473, size: 192)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !7, line: 115, size: 192, elements: !4474)
!4474 = !{!4475, !4476}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "iType", scope: !4473, file: !7, line: 116, baseType: !364, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !4473, file: !7, line: 140, baseType: !4477, size: 160, offset: 32)
!4477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4473, file: !7, line: 117, size: 160, elements: !4478)
!4478 = !{!4479, !4480, !4481, !4485, !4489, !4497, !4501, !4506}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "iMIDIPort", scope: !4477, file: !7, line: 118, baseType: !8, size: 32)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "iSequenceNumber", scope: !4477, file: !7, line: 119, baseType: !8, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "Text", scope: !4477, file: !7, line: 122, baseType: !4482, size: 32)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4477, file: !7, line: 120, size: 32, elements: !4483)
!4483 = !{!4484}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "pData", scope: !4482, file: !7, line: 121, baseType: !322, size: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "Tempo", scope: !4477, file: !7, line: 125, baseType: !4486, size: 32)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4477, file: !7, line: 123, size: 32, elements: !4487)
!4487 = !{!4488}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "iBPM", scope: !4486, file: !7, line: 124, baseType: !8, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "SMPTE", scope: !4477, file: !7, line: 129, baseType: !4490, size: 160)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4477, file: !7, line: 126, size: 160, elements: !4491)
!4491 = !{!4492, !4493, !4494, !4495, !4496}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "iHours", scope: !4490, file: !7, line: 127, baseType: !8, size: 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "iMins", scope: !4490, file: !7, line: 127, baseType: !8, size: 32, offset: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "iSecs", scope: !4490, file: !7, line: 128, baseType: !8, size: 32, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "iFrames", scope: !4490, file: !7, line: 128, baseType: !8, size: 32, offset: 96)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "iFF", scope: !4490, file: !7, line: 128, baseType: !8, size: 32, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "KeySig", scope: !4477, file: !7, line: 132, baseType: !4498, size: 32)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4477, file: !7, line: 130, size: 32, elements: !4499)
!4499 = !{!4500}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "iKey", scope: !4498, file: !7, line: 131, baseType: !365, size: 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "TimeSig", scope: !4477, file: !7, line: 135, baseType: !4502, size: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4477, file: !7, line: 133, size: 64, elements: !4503)
!4503 = !{!4504, !4505}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "iNom", scope: !4502, file: !7, line: 134, baseType: !8, size: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "iDenom", scope: !4502, file: !7, line: 134, baseType: !8, size: 32, offset: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "Sequencer", scope: !4477, file: !7, line: 139, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4477, file: !7, line: 136, size: 64, elements: !4508)
!4508 = !{!4509, !4510}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "pData", scope: !4507, file: !7, line: 137, baseType: !322, size: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "iSize", scope: !4507, file: !7, line: 138, baseType: !8, size: 32, offset: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "SysEx", scope: !4432, file: !7, line: 145, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4432, file: !7, line: 142, size: 64, elements: !4513)
!4513 = !{!4514, !4515}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "pData", scope: !4512, file: !7, line: 143, baseType: !322, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "iSize", scope: !4512, file: !7, line: 144, baseType: !8, size: 32, offset: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "iLastMsgType", scope: !4421, file: !7, line: 149, baseType: !362, size: 32, offset: 448)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "iLastMsgChnl", scope: !4421, file: !7, line: 150, baseType: !323, size: 8, offset: 480)
!4518 = !DILocation(line: 160, column: 12, scope: !4419)
!4519 = !DILocalVariable(name: "i", scope: !4419, file: !467, line: 161, type: !8)
!4520 = !DILocation(line: 161, column: 7, scope: !4419)
!4521 = !DILocalVariable(name: "iNum", scope: !4419, file: !467, line: 161, type: !8)
!4522 = !DILocation(line: 161, column: 10, scope: !4419)
!4523 = !DILocation(line: 163, column: 9, scope: !4419)
!4524 = !DILocation(line: 164, column: 20, scope: !4419)
!4525 = !DILocation(line: 165, column: 18, scope: !4419)
!4526 = !DILocation(line: 166, column: 19, scope: !4419)
!4527 = !DILocation(line: 167, column: 3, scope: !4419)
!4528 = !DILocation(line: 168, column: 31, scope: !4419)
!4529 = !DILocation(line: 168, column: 10, scope: !4419)
!4530 = !DILocation(line: 168, column: 8, scope: !4419)
!4531 = !DILocation(line: 170, column: 8, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4419, file: !467, line: 170, column: 3)
!4533 = !DILocation(line: 170, column: 7, scope: !4532)
!4534 = !DILocation(line: 170, column: 11, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4532, file: !467, line: 170, column: 3)
!4536 = !DILocation(line: 170, column: 13, scope: !4535)
!4537 = !DILocation(line: 170, column: 12, scope: !4535)
!4538 = !DILocation(line: 170, column: 3, scope: !4532)
!4539 = !DILocation(line: 172, column: 4, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4535, file: !467, line: 171, column: 4)
!4541 = !DILocation(line: 172, column: 33, scope: !4540)
!4542 = !DILocation(line: 172, column: 37, scope: !4540)
!4543 = !DILocation(line: 172, column: 10, scope: !4540)
!4544 = !DILocation(line: 174, column: 18, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4540, file: !467, line: 173, column: 5)
!4546 = !DILocation(line: 174, column: 29, scope: !4545)
!4547 = !DILocation(line: 174, column: 27, scope: !4545)
!4548 = !DILocation(line: 174, column: 11, scope: !4545)
!4549 = !DILocation(line: 176, column: 16, scope: !4545)
!4550 = !DILocation(line: 176, column: 5, scope: !4545)
!4551 = !DILocation(line: 179, column: 12, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !467, line: 179, column: 12)
!4553 = distinct !DILexicalBlock(scope: !4545, file: !467, line: 177, column: 6)
!4554 = !DILocation(line: 179, column: 28, scope: !4552)
!4555 = !DILocation(line: 179, column: 36, scope: !4552)
!4556 = !DILocation(line: 179, column: 44, scope: !4552)
!4557 = !DILocation(line: 179, column: 21, scope: !4552)
!4558 = !DILocation(line: 179, column: 12, scope: !4553)
!4559 = !DILocation(line: 181, column: 12, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !467, line: 181, column: 12)
!4561 = distinct !DILexicalBlock(scope: !4552, file: !467, line: 180, column: 8)
!4562 = !DILocation(line: 181, column: 34, scope: !4560)
!4563 = !DILocation(line: 181, column: 42, scope: !4560)
!4564 = !DILocation(line: 181, column: 50, scope: !4560)
!4565 = !DILocation(line: 181, column: 28, scope: !4560)
!4566 = !DILocation(line: 181, column: 12, scope: !4561)
!4567 = !DILocation(line: 183, column: 11, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4560, file: !467, line: 182, column: 9)
!4569 = !DILocation(line: 183, column: 21, scope: !4568)
!4570 = !DILocation(line: 183, column: 39, scope: !4568)
!4571 = !DILocation(line: 183, column: 56, scope: !4568)
!4572 = !DILocation(line: 183, column: 63, scope: !4568)
!4573 = !DILocation(line: 183, column: 9, scope: !4568)
!4574 = !DILocation(line: 184, column: 26, scope: !4568)
!4575 = !DILocation(line: 185, column: 30, scope: !4568)
!4576 = !DILocation(line: 185, column: 24, scope: !4568)
!4577 = !DILocation(line: 186, column: 9, scope: !4568)
!4578 = !DILocation(line: 187, column: 8, scope: !4561)
!4579 = !DILocation(line: 188, column: 8, scope: !4553)
!4580 = !DILocation(line: 191, column: 12, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4553, file: !467, line: 191, column: 12)
!4582 = !DILocation(line: 191, column: 28, scope: !4581)
!4583 = !DILocation(line: 191, column: 36, scope: !4581)
!4584 = !DILocation(line: 191, column: 43, scope: !4581)
!4585 = !DILocation(line: 191, column: 21, scope: !4581)
!4586 = !DILocation(line: 191, column: 12, scope: !4553)
!4587 = !DILocation(line: 193, column: 12, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4589, file: !467, line: 193, column: 12)
!4589 = distinct !DILexicalBlock(scope: !4581, file: !467, line: 192, column: 8)
!4590 = !DILocation(line: 193, column: 28, scope: !4588)
!4591 = !DILocation(line: 193, column: 12, scope: !4589)
!4592 = !DILocation(line: 195, column: 11, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4588, file: !467, line: 194, column: 9)
!4594 = !DILocation(line: 195, column: 27, scope: !4593)
!4595 = !DILocation(line: 195, column: 34, scope: !4593)
!4596 = !DILocation(line: 195, column: 9, scope: !4593)
!4597 = !DILocation(line: 196, column: 9, scope: !4593)
!4598 = !DILocation(line: 199, column: 11, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4588, file: !467, line: 198, column: 9)
!4600 = !DILocation(line: 199, column: 21, scope: !4599)
!4601 = !DILocation(line: 199, column: 39, scope: !4599)
!4602 = !DILocation(line: 199, column: 56, scope: !4599)
!4603 = !DILocation(line: 199, column: 63, scope: !4599)
!4604 = !DILocation(line: 199, column: 9, scope: !4599)
!4605 = !DILocation(line: 201, column: 31, scope: !4589)
!4606 = !DILocation(line: 201, column: 39, scope: !4589)
!4607 = !DILocation(line: 201, column: 46, scope: !4589)
!4608 = !DILocation(line: 201, column: 25, scope: !4589)
!4609 = !DILocation(line: 202, column: 30, scope: !4589)
!4610 = !DILocation(line: 202, column: 38, scope: !4589)
!4611 = !DILocation(line: 202, column: 45, scope: !4589)
!4612 = !DILocation(line: 202, column: 24, scope: !4589)
!4613 = !DILocation(line: 203, column: 29, scope: !4589)
!4614 = !DILocation(line: 203, column: 23, scope: !4589)
!4615 = !DILocation(line: 204, column: 8, scope: !4589)
!4616 = !DILocation(line: 205, column: 8, scope: !4553)
!4617 = !DILocation(line: 207, column: 19, scope: !4553)
!4618 = !DILocation(line: 207, column: 27, scope: !4553)
!4619 = !DILocation(line: 207, column: 37, scope: !4553)
!4620 = !DILocation(line: 207, column: 8, scope: !4553)
!4621 = !DILocation(line: 210, column: 31, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4553, file: !467, line: 208, column: 9)
!4623 = !DILocation(line: 210, column: 39, scope: !4622)
!4624 = !DILocation(line: 210, column: 49, scope: !4622)
!4625 = !DILocation(line: 210, column: 54, scope: !4622)
!4626 = !DILocation(line: 210, column: 60, scope: !4622)
!4627 = !DILocation(line: 210, column: 10, scope: !4622)
!4628 = !DILocation(line: 210, column: 18, scope: !4622)
!4629 = !DILocation(line: 210, column: 25, scope: !4622)
!4630 = !DILocation(line: 211, column: 10, scope: !4622)
!4631 = !DILocation(line: 214, column: 10, scope: !4622)
!4632 = !DILocation(line: 216, column: 8, scope: !4553)
!4633 = !DILocation(line: 219, column: 7, scope: !4553)
!4634 = distinct !{!4634, !4539, !4635}
!4635 = !DILocation(line: 221, column: 5, scope: !4540)
!4636 = !DILocation(line: 222, column: 4, scope: !4540)
!4637 = !DILocation(line: 170, column: 19, scope: !4535)
!4638 = !DILocation(line: 170, column: 3, scope: !4535)
!4639 = distinct !{!4639, !4538, !4640}
!4640 = !DILocation(line: 222, column: 4, scope: !4532)
!4641 = !DILocation(line: 224, column: 3, scope: !4419)
!4642 = !DILocation(line: 225, column: 17, scope: !4419)
!4643 = !DILocation(line: 225, column: 3, scope: !4419)
!4644 = !DILocation(line: 226, column: 3, scope: !4419)
!4645 = !DILocation(line: 227, column: 1, scope: !4389)
!4646 = distinct !DISubprogram(name: "Usage", scope: !467, file: !467, line: 229, type: !4647, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !470, variables: !378)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{null, !499}
!4649 = !DILocalVariable(name: "pProgName", arg: 1, scope: !4646, file: !467, line: 229, type: !499)
!4650 = !DILocation(line: 229, column: 24, scope: !4646)
!4651 = !DILocation(line: 231, column: 10, scope: !4646)
!4652 = !DILocation(line: 231, column: 67, scope: !4646)
!4653 = !DILocation(line: 231, column: 2, scope: !4646)
!4654 = !DILocation(line: 232, column: 1, scope: !4646)
!4655 = distinct !DISubprogram(name: "PrintHelp", scope: !467, file: !467, line: 234, type: !4656, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !470, variables: !378)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null}
!4658 = !DILocation(line: 236, column: 10, scope: !4655)
!4659 = !DILocation(line: 236, column: 2, scope: !4655)
!4660 = !DILocation(line: 237, column: 10, scope: !4655)
!4661 = !DILocation(line: 237, column: 2, scope: !4655)
!4662 = !DILocation(line: 238, column: 10, scope: !4655)
!4663 = !DILocation(line: 238, column: 2, scope: !4655)
!4664 = !DILocation(line: 239, column: 10, scope: !4655)
!4665 = !DILocation(line: 239, column: 2, scope: !4655)
!4666 = !DILocation(line: 240, column: 10, scope: !4655)
!4667 = !DILocation(line: 240, column: 2, scope: !4655)
!4668 = !DILocation(line: 241, column: 10, scope: !4655)
!4669 = !DILocation(line: 241, column: 2, scope: !4655)
!4670 = !DILocation(line: 242, column: 1, scope: !4655)
!4671 = distinct !DISubprogram(name: "main", scope: !467, file: !467, line: 244, type: !4672, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false, unit: !470, variables: !378)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!8, !8, !4674}
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 32)
!4675 = !DILocalVariable(name: "argc", arg: 1, scope: !4671, file: !467, line: 244, type: !8)
!4676 = !DILocation(line: 244, column: 14, scope: !4671)
!4677 = !DILocalVariable(name: "argv", arg: 2, scope: !4671, file: !467, line: 244, type: !4674)
!4678 = !DILocation(line: 244, column: 26, scope: !4671)
!4679 = !DILocalVariable(name: "c", scope: !4671, file: !467, line: 246, type: !8)
!4680 = !DILocation(line: 246, column: 5, scope: !4671)
!4681 = !DILocalVariable(name: "iChan", scope: !4671, file: !467, line: 247, type: !8)
!4682 = !DILocation(line: 247, column: 5, scope: !4671)
!4683 = !DILocalVariable(name: "bError", scope: !4671, file: !467, line: 248, type: !6)
!4684 = !DILocation(line: 248, column: 6, scope: !4671)
!4685 = !DILocalVariable(name: "bRTTTL", scope: !4671, file: !467, line: 249, type: !6)
!4686 = !DILocation(line: 249, column: 6, scope: !4671)
!4687 = !DILocalVariable(name: "bSpeaker", scope: !4671, file: !467, line: 249, type: !6)
!4688 = !DILocation(line: 249, column: 22, scope: !4671)
!4689 = !DILocalVariable(name: "prefs", scope: !4671, file: !467, line: 250, type: !480)
!4690 = !DILocation(line: 250, column: 15, scope: !4671)
!4691 = !DILocation(line: 252, column: 2, scope: !4671)
!4692 = !DILocation(line: 252, column: 18, scope: !4671)
!4693 = !DILocation(line: 252, column: 24, scope: !4671)
!4694 = !DILocation(line: 252, column: 11, scope: !4671)
!4695 = !DILocation(line: 252, column: 10, scope: !4671)
!4696 = !DILocation(line: 252, column: 43, scope: !4671)
!4697 = !DILocation(line: 254, column: 10, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4671, file: !467, line: 253, column: 3)
!4699 = !DILocation(line: 254, column: 3, scope: !4698)
!4700 = !DILocation(line: 258, column: 19, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4698, file: !467, line: 255, column: 4)
!4702 = !DILocation(line: 258, column: 14, scope: !4701)
!4703 = !DILocation(line: 258, column: 12, scope: !4701)
!4704 = !DILocation(line: 259, column: 6, scope: !4701)
!4705 = !DILocation(line: 263, column: 13, scope: !4701)
!4706 = !DILocation(line: 264, column: 6, scope: !4701)
!4707 = !DILocation(line: 268, column: 15, scope: !4701)
!4708 = !DILocation(line: 269, column: 6, scope: !4701)
!4709 = !DILocation(line: 273, column: 12, scope: !4701)
!4710 = !DILocation(line: 273, column: 6, scope: !4701)
!4711 = !DILocation(line: 274, column: 6, scope: !4701)
!4712 = !DILocation(line: 275, column: 6, scope: !4701)
!4713 = !DILocation(line: 278, column: 13, scope: !4701)
!4714 = !DILocation(line: 279, column: 6, scope: !4701)
!4715 = !DILocation(line: 281, column: 14, scope: !4701)
!4716 = !DILocation(line: 281, column: 62, scope: !4701)
!4717 = !DILocation(line: 281, column: 71, scope: !4701)
!4718 = !DILocation(line: 281, column: 6, scope: !4701)
!4719 = !DILocation(line: 282, column: 10, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4701, file: !467, line: 282, column: 10)
!4721 = !DILocation(line: 282, column: 17, scope: !4720)
!4722 = !DILocation(line: 282, column: 10, scope: !4701)
!4723 = !DILocation(line: 283, column: 15, scope: !4720)
!4724 = !DILocation(line: 283, column: 7, scope: !4720)
!4725 = !DILocation(line: 284, column: 6, scope: !4701)
!4726 = distinct !{!4726, !4691, !4727}
!4727 = !DILocation(line: 286, column: 3, scope: !4671)
!4728 = !DILocation(line: 288, column: 6, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4671, file: !467, line: 288, column: 6)
!4730 = !DILocation(line: 288, column: 16, scope: !4729)
!4731 = !DILocation(line: 288, column: 13, scope: !4729)
!4732 = !DILocation(line: 288, column: 25, scope: !4729)
!4733 = !DILocation(line: 288, column: 28, scope: !4729)
!4734 = !DILocation(line: 288, column: 37, scope: !4729)
!4735 = !DILocation(line: 288, column: 6, scope: !4671)
!4736 = !DILocation(line: 289, column: 10, scope: !4729)
!4737 = !DILocation(line: 289, column: 3, scope: !4729)
!4738 = !DILocation(line: 291, column: 6, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4671, file: !467, line: 291, column: 6)
!4740 = !DILocation(line: 291, column: 6, scope: !4671)
!4741 = !DILocation(line: 293, column: 9, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4739, file: !467, line: 292, column: 3)
!4743 = !DILocation(line: 293, column: 3, scope: !4742)
!4744 = !DILocation(line: 294, column: 3, scope: !4742)
!4745 = !DILocation(line: 298, column: 3, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4739, file: !467, line: 296, column: 3)
!4747 = !DILocation(line: 298, column: 9, scope: !4746)
!4748 = !DILocation(line: 298, column: 18, scope: !4746)
!4749 = !DILocation(line: 298, column: 16, scope: !4746)
!4750 = !DILocation(line: 300, column: 4, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4746, file: !467, line: 299, column: 4)
!4752 = !DILocation(line: 301, column: 8, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4751, file: !467, line: 301, column: 8)
!4754 = !DILocation(line: 301, column: 8, scope: !4751)
!4755 = !DILocation(line: 303, column: 5, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4753, file: !467, line: 302, column: 5)
!4757 = !DILocation(line: 304, column: 17, scope: !4756)
!4758 = !DILocation(line: 304, column: 22, scope: !4756)
!4759 = !DILocation(line: 304, column: 42, scope: !4756)
!4760 = !DILocation(line: 304, column: 5, scope: !4756)
!4761 = !DILocation(line: 305, column: 5, scope: !4756)
!4762 = !DILocation(line: 306, column: 5, scope: !4756)
!4763 = !DILocation(line: 308, column: 8, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4751, file: !467, line: 308, column: 8)
!4765 = !DILocation(line: 308, column: 8, scope: !4751)
!4766 = !DILocation(line: 310, column: 17, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4764, file: !467, line: 309, column: 5)
!4768 = !DILocation(line: 310, column: 22, scope: !4767)
!4769 = !DILocation(line: 310, column: 43, scope: !4767)
!4770 = !DILocation(line: 310, column: 5, scope: !4767)
!4771 = !DILocation(line: 311, column: 17, scope: !4767)
!4772 = !DILocation(line: 311, column: 5, scope: !4767)
!4773 = !DILocation(line: 312, column: 5, scope: !4767)
!4774 = !DILocation(line: 313, column: 4, scope: !4751)
!4775 = distinct !{!4775, !4745, !4776}
!4776 = !DILocation(line: 314, column: 4, scope: !4746)
!4777 = !DILocation(line: 317, column: 2, scope: !4671)

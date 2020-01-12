// Acquiring the Keep

REPLACE_STATE_TRIGGER NALIAJ 53 ~Dead("Torgal")
Global("NaliaKeepPlot","GLOBAL",0)
AreaCheck("AR1300")
Global("NaliaRaised","GLOBAL",0)
OR(7)
Class(Player1,FIGHTER)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)~

EXTEND_BOTTOM NALIAJ 165
IF ~~ THEN DO ~SetGlobal("PCKeepOwner","GLOBAL",1)
RevealAreaOnMap("AR1304")
HideAreaOnMap("AR1300")
StartCutSceneMode()
StartCutScene("Cut32a")~ EXIT
END

I_C_T NALIAJ 53 PGNaliaIntjThanks1
== NALIAJ IF ~Gender(Player1,MALE)
OR(4)
Race(Player1,HUMAN)
Race(Player1,ELF)
Race(Player1,HALF_ELF)
Race(Player1,DWARF)~ THEN @0
END

I_C_T KPROEN01 0 PGNaliaLordRoenallInt1
== KPROEN01 IF ~Dead("PGNALISA")~ THEN @1
END

INTERJECT NALIAJ 172 PGNaliaIntjNFKeep1
// This phrase is just her state 174
== NALIAJ IF ~Gender(Player1,MALE)
OR(4)
Race(Player1,HUMAN)
Race(Player1,ELF)
Race(Player1,HALF_ELF)
Race(Player1,DWARF)~ THEN @2 
END
++ @3 EXTERN NALIAJ kd1.nothingcando
+ ~CheckStatGT(Player1,13,CHR)~ + @4 EXTERN NALIAJ kd1.whatittakeshigh
+ ~CheckStatLT(Player1,14,CHR)~ + @4 EXTERN NALIAJ kd1.whatittakeslow
++ @5 EXTERN NALIAJ kd1.dealwithit
++ @6 EXTERN NALIAJ kd1.hereonout
++ @7 EXTERN NALIAJ 175
++ @8 EXTERN NALIAJ 176

APPEND NALIAJ 

IF ~~ kd1.nothingcando
SAY @9
IF ~~ + kd1.hereonout
END

IF ~~ kd1.hereonout
SAY @10
++ @11 + kd1.wontbeg
++ @12 + kd1.notcutout
++ @13 + kd1.talkyourself
END

IF ~~ kd1.wontbeg
SAY @14
IF ~~ + kd1.whatittakeshigh
END

IF ~~ kd1.notcutout
SAY @15
= @16
IF ~~ DO ~SetGlobal("RoenalControl","GLOBAL",1)
CreateCreature("QUINT",[3306.2412],14)~ EXIT
END

IF ~~ kd1.talkyourself
SAY @17
IF ~~ + kd1.whatittakeshigh
END

IF ~~ kd1.dealwithit
SAY @18
++ @19 + kd1.disgust
++ @20 + kd1.disgust
++ @21 + kd1.whatittakeslow
++ @12 + kd1.notcutout
END

IF ~~ kd1.whatittakeshigh
SAY @22
IF ~~ + kd1.accept
END

IF ~~ kd1.whatittakeslow
SAY @23
++ @24 + kd1.bestchance
++ @25 + kd1.orme
++ @26 + kd1.notcutout
++ @20 + kd1.disgust
END

IF ~~ kd1.bestchance
SAY @27
IF ~~ + kd1.accept
END

IF ~~ kd1.orme
SAY @28
IF ~~ + kd1.accept
END

IF ~~ kd1.disgust
SAY @29
IF ~~ DO ~SetGlobal("RoenalControl","GLOBAL",1)
CreateCreature("QUINT",[3306.2412],14)
LeaveParty() EscapeArea()~ EXIT
END

IF ~~ kd1.accept
SAY @30
= @31
= @32
= @33
= @34
= @35 
= @36
COPY_TRANS NALIAJ 69
END

END

// Quest

BEGIN PGNALTEO // Teodora, a servant
BEGIN PGNALBUR // Burwood, Nalia's old master
BEGIN PGNALWIV // Burwood's apprentice
BEGIN PGNALGHA // A female Cowled Wizard
BEGIN PGNALALY // Alynder, the guy who mends the talisman

CHAIN IF ~Global("PGNaliaQuest","GLOBAL",1)~ THEN PGNALTEO PGTeaComes1
@37
DO ~SetGlobal("PGNaliaQuest","GLOBAL",2)~
== NALIAJ @38
== PGNALTEO @39
== NALIAJ @40
== NALIAJ @41
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC2a")~
EXIT

EXTEND_BOTTOM KPCHAP01 7
IF ~Global("PGNaliaMatch","GLOBAL",1)~ DO ~SetGlobal("PGNaliaKeepHasPriest","GLOBAL",1)~ EXTERN KPDOMO01 67
END

EXTEND_BOTTOM KPCHAP01 15
IF ~Global("PGNaliaMatch","GLOBAL",1)~ DO ~SetGlobal("PGNaliaKeepHasPriest","GLOBAL",0) EscapeArea()~ EXIT
END

CHAIN IF ~Global("PGNaliaQuest","GLOBAL",3)~ THEN PGNALBUR Q1
@42
DO ~SetGlobal("PGNaliaQuest","GLOBAL",4)~
== PGNALTEO @43
== NALIAJ @44
== PGNALTEO @45
== PGNALTEO @46
== NALIAJ @47
== PGNALBUR @48
== PGNALTEO @49
== NALIAJ @50
END
+ ~Class(Player1,CLERIC_ALL)~ + @51 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC2b")~ EXIT
+ ~Global("PGNaliaKeepHasPriest","GLOBAL",1)~ + @52 EXTERN PGNALTEO Q1.cups
+ ~Global("PGNaliaKeepHasPriest","GLOBAL",1)~ + @53 EXTERN NALIAJ Q1.WherePriest
+ ~!Global("PGNaliaKeepHasPriest","GLOBAL",1)~ + @53 EXTERN PGNALBUR Q1.better

CHAIN NALIAJ Q1.WherePriest
@54
END
IF ~~ EXTERN PGNALTEO Q1.cups

CHAIN PGNALTEO Q1.cups
@55
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC2c")~ 
EXIT

CHAIN IF WEIGHT #-1 ~Global("PGNaliaBolumirSummoned","GLOBAL",1)~ THEN KPCHAP01 Q1.ClericSummoned
@56
DO ~SetGlobal("PGNaliaBolumirSummoned","GLOBAL",2)~
== NALIAJ @57
== KPCHAP01 @58
== PGNALTEO @59
== KPCHAP01 @60
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC2d")~ 
EXIT

CHAIN IF ~Global("PGNaliaQuest","GLOBAL",4)~ THEN PGNALBUR Q1.better
@61
DO ~SetGlobal("PGNaliaQuest","GLOBAL",5)~
== NALIAJ @62
== PGNALBUR @63 
== PGNALBUR @64
== NALIAJ @65
== NALIAJ @66
== PGNALBUR @67
== PGNALBUR @68
== PGNALBUR @69
== PGNALBUR @70
== NALIAJ @71
== PGNALBUR @72
== NALIAJ @73
== PGNALBUR @74
== NALIAJ @75
== PGNALBUR @76
== NALIAJ @77
== NALIAJ @78
== PGNALBUR @79
== NALIAJ @80
== PGNALBUR @81
== NALIAJ @82
== PGNALBUR @81
== NALIAJ @83
== PGNALBUR @74
== NALIAJ @84
== PGNALBUR @74
== NALIAJ @85
== PGNALBUR @86
== NALIAJ @87
== PGNALBUR @88
== PGNALBUR @89
== NALIAJ @90
== PGNALBUR @91
DO ~AddJournalEntry(@10002,QUEST)~
== NALIAJ @92
== NALIAJ @93
== PGNALBUR @94
== NALIAJ @95
== PGNALBUR @96
DO ~GiveItemCreate("PGNalTal",Player1,1,0,0) ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC2e")~ 
EXIT

CHAIN IF ~Global("PGNaliaQuest","GLOBAL",5)~ THEN PGNALTEO Q1.Dead
@97
DO ~SetGlobal("PGNaliaQuest","GLOBAL",6)~
== NALIAJ @98
END
++ @99 EXTERN NALIAJ Q1.Cry
++ @100 EXTERN NALIAJ Q1.Cry
++ @101 EXTERN NALIAJ Q1.Cry

CHAIN NALIAJ Q1.Cry
@102
= @103
= @104
END
++ @105 EXTERN NALIAJ Q1.tolose
++ @106 EXTERN NALIAJ Q1.tolose
++ @107 EXTERN NALIAJ Q1.tolose
++ @108 EXTERN NALIAJ Q1.force

CHAIN NALIAJ Q1.tolose
@109
DO ~ActionOverride("PGNALTEO",EscapeArea()) ActionOverride("KPCHAP01",JumpToPoint([568.527])) ActionOverride("KPCHAP01",Face(14))~
EXIT

CHAIN NALIAJ Q1.force
@110
END
IF ~~ EXTERN NALIAJ Q1.tolose

CHAIN IF ~Global("PGNaliaQuest","GLOBAL",7)~ THEN PGNALWIV Q2
@111
DO ~SetGlobal("PGNaliaQuest","GLOBAL",8)~
== PGNALGHA @112
== PGNALWIV @113
== PGNALGHA @114
== PGNALWIV @115
== PGNALGHA @116
== PGNALWIV @117
== PGNALWIV @118
== PGNALGHA @119
== PGNALGHA @120
END
++ @121 EXTERN NALIAJ Q2.naliano
++ @122 EXTERN PGNALGHA Q2.unhand
++ @123 EXTERN PGNALGHA Q2.tales
++ @124 EXTERN PGNALGHA Q2.important
++ @125 EXTERN PGNALGHA Q2.official

CHAIN PGNALGHA Q2.important
@126
END
++ @127 EXTERN PGNALGHA Q2.never
++ @128 EXTERN NALIAJ Q2.naliano
++ @129 EXTERN PGNALWIV Q2.imagination

CHAIN PGNALGHA Q2.official
@130
END
++ @127 EXTERN PGNALGHA Q2.never
++ @131 EXTERN NALIAJ Q2.naliano
++ @129 EXTERN PGNALWIV Q2.imagination
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + @132 EXTERN PGNALGHA Q2.liar
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) CheckStatLT(Player1,15,CHR)~ + @132 EXTERN PGNALGHA Q2.liar2
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) CheckStatGT(Player1,14,CHR)~ + @132 EXTERN PGNALGHA Q2.takehim

CHAIN PGNALGHA Q2.liar
@133
DO ~RealSetGlobalTimer("PGNaliaCowledTimer","GLOBAL",5000) SetGlobal("PGNaliaCowledAmbush","GLOBAL",1) EscapeArea()~
EXIT

CHAIN PGNALGHA Q2.liar2
@134
DO ~RealSetGlobalTimer("PGNaliaCowledTimer","GLOBAL",5000) SetGlobal("PGNaliaCowledAmbush","GLOBAL",1) EscapeArea()~
EXIT

CHAIN PGNALGHA Q2.takehim
@135
DO ~EscapeArea()~
EXIT

CHAIN NALIAJ Q2.naliano
@136
== PGNALGHA @137
== NALIAJ @138
== PGNALWIV @139
== NALIAJ @140
== PGNALGHA @141
DO ~EscapeArea()~
EXIT

CHAIN PGNALGHA Q2.unhand
@142
END
++ @127 EXTERN PGNALGHA Q2.never
++ @143 EXTERN PGNALGHA Q2.tales
++ @128 EXTERN NALIAJ Q2.naliano

CHAIN PGNALGHA Q2.tales
@144
END
++ @127 EXTERN PGNALGHA Q2.never
++ @128 EXTERN NALIAJ Q2.naliano
++ @129 EXTERN PGNALWIV Q2.imagination

CHAIN PGNALWIV Q2.imagination
@139
== NALIAJ @145
== PGNALGHA @146
END
++ @147 EXTERN PGNALGHA Q2.slopboy
++ @148 EXTERN PGNALGHA Q2.never
++ @149 EXTERN PGNALGHA Q2.never

CHAIN PGNALGHA Q2.slopboy
@150
DO ~EscapeArea()~
EXIT

CHAIN PGNALGHA Q2.never
@151
DO ~RealSetGlobalTimer("PGNaliaCowledTimer","GLOBAL",5000) SetGlobal("PGNaliaCowledAmbush","GLOBAL",1) EscapeArea()~
EXIT

CHAIN IF ~Global("PGNaliaQuest","GLOBAL",8)~ THEN PGNALWIV Q2.main2
@152
DO ~SetGlobal("PGNaliaQuest","GLOBAL",9)~
== NALIAJ @153
== PGNALWIV @154
== NALIAJ @155
== PGNALWIV @156
== NALIAJ @157
== PGNALWIV @158
== NALIAJ @159
== PGNALWIV @160
== PGNALWIV @161
== NALIAJ @162
== NALIAJ @163
== PGNALWIV @164
== NALIAJ @165
== PGNALWIV @166
DO ~EscapeArea()~
EXIT

CHAIN IF ~Global("PGNaliaWivCom","GLOBAL",1)~ THEN NALIAJ Q2.mustgo
@167
DO ~AddJournalEntry(@10003,QUEST) SetGlobal("PGNaliaWivCom","GLOBAL",2)~
EXIT

CHAIN IF ~!PartyHasItem("PGNalTal")~ THEN PGNALALY Q3.notalisman
@168
EXIT

CHAIN IF ~Global("PGexplain","LOCALS",1) PartyHasItem("PGNalTal")~ THEN PGNALALY Q3.fix3
@169
END
+ ~NumItemsPartyGT("misc42",1)~ + @170 DO ~TakePartyItem("misc42") TakePartyItem("misc42") DestroyItem("misc42")~ EXTERN PGNALALY Q3.fix2
+ ~PartyGoldGT(1799)~ + @171 DO ~TakePartyGold(1800)~ EXTERN PGNALALY Q3.fix2
++ @172 DO ~AddJournalEntry(@10004,QUEST)~ EXIT
++ @173 EXTERN PGNALALY Q3.smack

CHAIN IF ~Global("PGNaliaAlynder","GLOBAL",2) Global("PGexplain","LOCALS",0) PartyHasItem("PGNalTal")~ THEN PGNALALY Q3.back
@174
END
++ @175 EXTERN PGNALALY Q3.manhelp
++ @176 EXTERN PGNALALY Q3.alynder
++ @177 EXTERN PGNALALY Q3.odd
++ @178 EXTERN PGNALALY Q3.illask
++ @179 DO ~SetGlobal("PGexplain","LOCALS",1)~ EXTERN PGNALALY Q3.fix
++ @180 DO ~SetGlobal("PGexplain","LOCALS",1)~ EXTERN PGNALALY Q3.naliapleasehelp

CHAIN PGNALALY Q3.odd
@181 
EXIT

CHAIN IF ~Global("PGNaliaAlynder","GLOBAL",1) PartyHasItem("PGNalTal")~ THEN PGNALALY Q3
@182
DO ~SetGlobal("PGNaliaAlynder","GLOBAL",2)~
END
++ @175 EXTERN PGNALALY Q3.manhelp
++ @183 EXTERN PGNALALY Q3.strange
++ @176 EXTERN PGNALALY Q3.alynder
++ @178 EXTERN PGNALALY Q3.illask

CHAIN PGNALALY Q3.manhelp
@184
END
++ @185 EXTERN PGNALALY Q3.contest
++ @186 EXTERN PGNALALY Q3.require
++ @187 DO ~SetGlobal("PGexplain","LOCALS",1)~ EXTERN PGNALALY Q3.pleasehelp
++ @188 DO ~SetGlobal("PGexplain","LOCALS",1)~ EXTERN PGNALALY Q3.naliapleasehelp
++ @189 EXTERN PGNALALY Q3.alynder

CHAIN PGNALALY Q3.contest
@190 
END
++ @186 EXTERN PGNALALY Q3.require
++ @187 DO ~SetGlobal("PGexplain","LOCALS",1)~ EXTERN PGNALALY Q3.fix
++ @188 DO ~SetGlobal("PGexplain","LOCALS",1)~ EXTERN PGNALALY Q3.pleasehelp
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ EXTERN NALIAJ Q3.nalianotime

CHAIN PGNALALY Q3.require
@191
= @192
END
IF ~~ EXIT
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ EXTERN NALIAJ Q3.nalianotime

CHAIN PGNALALY Q3.strange
@193
= @194
END
++ @195 EXTERN PGNALALY Q3.glug
++ @175 EXTERN PGNALALY Q3.manhelp
++ @176 EXTERN PGNALALY Q3.alynder
++ @178 EXTERN PGNALALY Q3.illask
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ EXTERN NALIAJ Q3.naliastrange

CHAIN PGNALALY Q3.glug
@196
EXIT

CHAIN PGNALALY Q3.illask
@197
END
++ @175 EXTERN PGNALALY Q3.manhelp
++ @176 EXTERN PGNALALY Q3.alynder
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ EXTERN NALIAJ Q3.nalianotime

CHAIN PGNALALY Q3.pleasehelp
@198
END
IF ~~ EXTERN PGNALALY Q3.fix

CHAIN PGNALALY Q3.naliapleasehelp
@199
END
IF ~~ EXTERN PGNALALY Q3.fix
 CHAIN NALIAJ Q3.nalianotime
@200
END
IF ~~ EXTERN NALIAJ Q3.naliamain

CHAIN NALIAJ Q3.naliastrange
@201
END
IF ~~ EXTERN NALIAJ Q3.naliamain

CHAIN PGNALALY Q3.alynder
@202
= @203
END
+ ~Global("PGexplain","LOCALS",1)~ + @204 EXTERN PGNALALY Q3.fix
+ ~Global("PGexplain","LOCALS",0)~ + @204 EXTERN PGNALALY Q3.manhelp
++ @205 EXTERN PGNALALY Q3.lack
++ @206 EXTERN PGNALALY Q3.tendto

CHAIN PGNALALY Q3.lack
@207
END
++ @208 EXTERN PGNALALY Q3.crimes
++ @209 EXTERN PGNALALY Q3.manhelp
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ EXTERN NALIAJ Q3.nalianotime

CHAIN PGNALALY Q3.crimes
@210
END
IF ~~ EXIT
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ EXTERN NALIAJ Q3.nalianotime

CHAIN PGNALALY Q3.tendto
@211
EXIT

CHAIN PGNALALY Q3.fix
@212
END
IF ~~ EXTERN PGNALALY Q3.fixa

CHAIN PGNALALY Q3.fixa
@213
END
+ ~NumItemsPartyGT("misc42",1)~ + @170 DO ~TakePartyItem("misc42") TakePartyItem("misc42") DestroyItem("misc42")~ EXTERN PGNALALY Q3.fix2
+ ~PartyGoldGT(1799)~ + @171 DO ~TakePartyGold(1800)~ EXTERN PGNALALY Q3.fix2
++ @172 DO ~AddJournalEntry(@10004,QUEST)~ EXIT
++ @173 EXTERN PGNALALY Q3.smack

CHAIN PGNALALY Q3.smack
@214
END
IF ~~ DO ~AddJournalEntry(@10004,QUEST)~ EXIT
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ EXTERN NALIAJ Q3.naliasmack

CHAIN NALIAJ Q3.naliasmack
@215
DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~
END
IF ~PartyGoldLT(1800)~ DO ~AddJournalEntry(@10004,QUEST)~ EXTERN NALIAJ Q3.nalianoitems
IF ~NumItemsPartyGT("misc42",1)~ DO ~TakePartyItem("misc42") TakePartyItem("misc42") DestroyItem("misc42")~ EXTERN NALIAJ Q3.naliahasitems
IF ~PartyGoldGT(1799)~ DO ~TakePartyGold(1800) DestroyGold(1800)~ EXTERN NALIAJ Q3.naliahasitems

CHAIN NALIAJ Q3.naliahasitems
@216
END
IF ~~ EXTERN PGNALALY Q3.fix2

CHAIN NALIAJ Q3.nalianoitems
@217
EXIT

CHAIN NALIAJ Q3.naliamain
@218
== PGNALALY @219
= @220
== NALIAJ @221
= @222 
= @223
== PGNALALY @224
DO ~SetGlobal("PGexplain","LOCALS",1)~ 
END
IF ~~ EXTERN PGNALALY Q3.fixa

CHAIN PGNALALY Q3.fix2
@225
= @226
= @227
= @228
= @229
= @230
= @231
== NALIAJ @232
== PGNALALY @233
DO ~SetGlobal("PGNaliaTalsimanRepaired","GLOBAL",1)~
END
++ @234 EXTERN PGNALALY Q3.thought
++ @235 EXTERN PGNALALY Q3.thankyou
++ @236 EXTERN PGNALALY Q3.seem

CHAIN PGNALALY Q3.thought
@237
DO ~AddJournalEntry(@10005,QUEST) EscapeArea()~
EXIT

CHAIN PGNALALY Q3.thankyou
@238
DO ~AddJournalEntry(@10005,QUEST) EscapeArea()~
EXIT

CHAIN PGNALALY Q3.seem
@239
DO ~AddJournalEntry(@10005,QUEST) EscapeArea()~
EXIT

BEGIN PGNALISA // Isaea
BEGIN PGNALTER // Tereen: Fighter-type, Isaea's old sgt-at-arms/keeper/common father/etc.
BEGIN PGNALGEL // Gellester: Pyromancer, wizard who should have tons of fire spells ready
BEGIN PGNALLEM 
BEGIN PGNALPOC // Lemmish and Pockney: thugs 

BEGIN PGNALTAL

// Talisman

CHAIN IF ~Global("PGNaliaTalsimanRepaired","GLOBAL",0)~ THEN PGNALTAL tal00
@240
EXIT

CHAIN IF ~Global("PGNaliaQuestTeleported","GLOBAL",0) Global("PGNaliaTalsimanRepaired","GLOBAL",1)~ THEN PGNALTAL tal1
@241
END
IF ~InParty("Nalia")~ EXTERN PGNALTAL tal1.1
IF ~!InParty("Nalia")~ EXTERN PGNALTAL tal1.2

CHAIN PGNALTAL tal1.1
@242
END
++ @243 EXTERN PGNALTAL tal1.do
++ @244 EXIT

CHAIN PGNALTAL tal1.2
@245
EXIT

CHAIN PGNALTAL tal1.do
@246
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC2f")~
EXIT

CHAIN IF ~GlobalGT("PGNaliaQuestTeleported","GLOBAL",0) !Dead("PGNALISA")~ THEN PGNALTAL tal2
@247
EXIT

CHAIN IF ~Global("PGNaliaAmuletDead","GLOBAL",1)~ THEN PGNALTAL tal4
@248
EXIT

CHAIN IF ~GlobalGT("PGNaliaQuestTeleported","GLOBAL",0) Dead("PGNALISA")~ THEN PGNALTAL tal3
@241
= @242
END
++ @249 EXTERN PGNALTAL tal3.do
++ @244 EXIT

CHAIN PGNALTAL tal3.do
@250
DO ~SetGlobal("PGNaliaAmuletDead","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC2g")~
EXIT

CHAIN IF ~Global("PGNaliaQuestTeleported","GLOBAL",1)~ THEN PGNALGEL i1
@251
DO ~SetGlobal("PGNaliaQuestTeleported","GLOBAL",2)~
== PGNALTER @252
== PGNALISA @253
== PGNALTER @254
= @255
== PGNALISA @256
== PGNALLEM @257
== PGNALPOC @258
== PGNALTER @259
= @260
== PGNALISA @261
== PGNALTER IF ~!Dead("KPOEN01")~ THEN @262
== PGNALTER IF ~Dead("KPOEN01")~ THEN @263
== PGNALTER @264
== PGNALISA @265
EXIT

CHAIN IF ~Global("PGNaliaQuestTeleported","GLOBAL",3)~ THEN PGNALISA i2
@266
DO ~SetGlobal("PGNaliaQuestTeleported","GLOBAL",4)~
= @267
= @268
== NALIAJ @269
== PGNALISA @270 
= @271
END
++ @272 EXTERN PGNALISA i2.somehonor
++ @273 EXTERN PGNALISA i2.allalong
++ @274 EXTERN PGNALISA i2.diefast
++ @275 EXTERN NALIAJ i2.consideroffer
++ @276 EXTERN NALIAJ i2.freedom
++ @277 EXTERN PGNALISA i2.insult

CHAIN PGNALISA i2.somehonor
@278
END
IF ~~ EXTERN PGNALISA i2.isaeamain

CHAIN PGNALISA i2.allalong
@279
= @280
= @281
END
IF ~~ EXTERN PGNALISA i2.isaeamain

CHAIN PGNALISA i2.diefast
@282 END
IF ~~ EXTERN PGNALISA i2.isaeamain

CHAIN NALIAJ i2.consideroffer
@283
END
IF ~~ EXTERN PGNALISA i2.allalong

CHAIN NALIAJ i2.freedom
@284
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~
== PGNALISA @285
END
IF ~~ EXTERN PGNALISA i2.isaeamain

CHAIN PGNALISA i2.insult
@286
= @287
END
++ @288 EXTERN PGNALISA i2.isaeamain
++ @289 EXTERN NALIAJ i2.freedom
++ @290 EXTERN PGNALISA i2.slimy

CHAIN PGNALISA i2.slimy
@291
END
IF ~~ EXTERN PGNALISA i2.isaeamain

CHAIN PGNALISA i2.isaeamain
@292
= @293
= @294
= @295
== NALIAJ @296
DO ~AddJournalEntry(@10006,QUEST)
ActionOverride("PGNALISA",Enemy()) 
ActionOverride("PGNALTER",Enemy()) 
ActionOverride("PGNALGEL",Enemy()) 
ActionOverride("PGNALLEM",Enemy()) 
ActionOverride("PGNALPOC",Enemy())~
EXIT

APPEND NALIAJ 

IF WEIGHT #-51 ~Global("PGNaliaIsaeaOffed","GLOBAL",1)~ i3
SAY @297
IF ~~ DO ~SetGlobal("PGNaliaIsaeaOffed","GLOBAL",2) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + i3.1
END

IF ~~ i3.1
SAY @298
= @299
++ @300 + i3.savor
++ @301 + i3.spleen
++ @302 + i3.stopped
++ @303 + i3.marry
++ @304 + i3.kiss
END

IF ~~ i3.kiss
SAY @305
= @306
IF ~~ + i3.stopped2
END

IF ~~ i3.savor
SAY @307
= @308
IF ~~ + i3.isaeaend
END

IF ~~ i3.marry
SAY @309
IF ~~ + i3.stopped2
END

IF ~~ i3.stopped
SAY @310
IF ~~ + i3.stopped2
END

IF ~~ i3.stopped2
SAY @311
IF ~~ + i3.isaeaend
END

IF ~~ i3.spleen
SAY @312
++ @313 + i3.smile
++ @314 + i3.stomp
++ @302 + i3.stopped
++ @303 + i3.marry
++ @300 + i3.savor
END

IF ~~ i3.stomp
SAY @315
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + i3.isaeaend
END

IF ~~ i3.smile
SAY @316
= @317
IF ~~ + i3.isaeaend
END

IF ~~ i3.isaeaend
SAY @318
IF ~~ DO ~AddJournalEntry(@10007,QUEST_DONE)
EraseJournalEntry(@10002)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)~ EXIT
END

END


// Tree of Life

INTERJECT PLAYER1 33 PGNaliaToL
== PLAYER1 IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN @319
END
++ @320 EXTERN NALIAJ PGNaliaToL1

CHAIN NALIAJ PGNaliaToL1
@321
= @322
= @323
= @324
END
IF ~~ EXTERN NALIAJ PGNaliaToL2

CHAIN NALIAJ PGNaliaToL2
@325
END
COPY_TRANS PLAYER1 33

A_T_T PLAYER1 33 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10
A_T_T IMOEN2J 38 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10
A_T_T MINSCJ 209 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10
A_T_T VALYGARJ 106 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10
A_T_T MAZZYJ 199 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10
A_T_T JANJ 181 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10
A_T_T EDWINJ 160 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10
A_T_T HAERDAJ 149 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10
A_T_T KELDORJ 248 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10
A_T_T KORGANJ 187 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10
A_T_T NALIAJ PGNaliaToL2 ~!Global("PGNaliaRomanceActive","GLOBAL",2)~ DO 10

// Phaere innuendo

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("NaliaRomanceActive","GLOBAL",1)
Global("NaliaRomanceActive","GLOBAL",2)~ + @326 + 110
END

APPEND NALIAJ 

IF WEIGHT #-50 ~Global("PGNaliaMad1","LOCALS",1)~ phaereflirted
SAY @327
++ @328 DO ~SetGlobal("PGNaliaMad1","LOCALS",2)~ + pf1working
++ @329 DO ~SetGlobal("PGNaliaMad1","LOCALS",2)~ + pf1understand
+ ~Global("PGNaliaRomanceActive","GLOBAL",1)~ + @330 DO ~SetGlobal("PGNaliaMad1","LOCALS",2)~ + pf1jealous1
+ ~Global("PGNaliaRomanceActive","GLOBAL",2)~ + @330 DO ~SetGlobal("PGNaliaMad1","LOCALS",2)~ + pf1jealous2
++ @331 DO ~SetGlobal("PGNaliaMad1","LOCALS",2)~ + pf1real
END

IF ~~ pf1working
SAY @332
IF ~~ EXIT
END

IF ~~ pf1understand
SAY @333
IF ~~ EXIT
END

IF ~~ pf1jealous1
SAY @334
= @335
IF ~~ EXIT
END

IF ~~ pf1jealous2
SAY @336
IF ~~ EXIT
END

IF ~~ pf1real
SAY @337
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF WEIGHT #-49 ~Global("PGNaliaMad2","LOCALS",1)~ phaeredidit
SAY @338
+ ~OR(2) ReputationLT(Player1,14) GlobalGT("PGNaliaPCSucks","GLOBAL",3)~ + @339 DO ~SetGlobal("PGNaliaMad2","LOCALS",2)~ + pf2nochoice1
+ ~ReputationGT(Player1,13) GlobalLT("PGNaliaPCSucks","GLOBAL",4)~ + @339 DO ~SetGlobal("PGNaliaMad2","LOCALS",2)~ + pf2inform
++ @340 DO ~SetGlobal("PGNaliaMad2","LOCALS",2)~ + pf2inform
++ @341 DO ~SetGlobal("PGNaliaMad2","LOCALS",2)~ + pf2inform
++ @342 DO ~SetGlobal("PGNaliaMad2","LOCALS",2)~ + pf2notyours
END

IF ~~ pf2nochoice1
SAY @343
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ pf2inform
SAY @344
= @345
= @346
IF ~~ DO ~SetGlobal("PGNaliaNotSpeaking","GLOBAL",1)~ EXIT
END 

IF ~~ pf2notyours
SAY @347
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF WEIGHT #-48 ~Global("PGNaliaMad3","LOCALS",1)~ phaereleft
SAY @348
= @349
IF ~~ DO ~SetGlobal("PGNaliaMad3","LOCALS",2)~ EXIT
END

// After Phaere

IF WEIGHT #-47 ~Global("PGNaliaTalkAgain","GLOBAL",2)~ p1
SAY @350
IF ~~ DO ~SetGlobal("PGNaliaNotSpeaking","GLOBAL",0) SetGlobal("PGNaliaTalkAgain","GLOBAL",3)~ + p1.1
END

IF ~~ p1.1
SAY @351
= @352
++ @353 + p1.relish
++ @354 + p1.meaningless
++ @355 + p1.carouser
++ @356 + p1.either
END

IF ~~ p1.relish
SAY @357
IF ~~ EXIT
END

IF ~~ p1.meaningless
SAY @358
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ p1.carouser
SAY @359
IF ~~ EXIT
END

IF ~~ p1.either
SAY @360
++ @361 + p1.notalk
++ @362 + p1.relish
++ @363 + p1.queen
++ @364 + p1.condemn
END

IF ~~ p1.condemn
SAY @365
IF ~~ EXIT
END

IF ~~ p1.queen
SAY @366
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ p1.notalk
SAY @367
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

END

// Bhaal transformation

EXTEND_BOTTOM PLAYER1 3
IF ~OR(2)
Global("PGNaliaRomanceActive","GLOBAL",1)
Global("PGNaliaRomanceActive","GLOBAL",2)
IsValidForPartyDialogue("Nalia")~ EXTERN NALIAJ PGNaliaBhaal0
END

CHAIN NALIAJ PGNaliaBhaal0
@368
END
++ @369 DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN NALIAJ PGNaliaBhaal0.nothing
++ @370 DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN NALIAJ PGNaliaBhaal0.alone
++ @371 DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN NALIAJ PGNaliaBhaal0.body

CHAIN NALIAJ PGNaliaBhaal0.nothing
@372
EXIT

CHAIN NALIAJ PGNaliaBhaal0.alone
@373
EXIT 

CHAIN NALIAJ PGNaliaBhaal0.body
@374
EXIT

EXTEND_BOTTOM PLAYER1 7
IF ~OR(2)
Global("PGNaliaRomanceActive","GLOBAL",1)
Global("PGNaliaRomanceActive","GLOBAL",2)
IsValidForPartyDialogue("Nalia")~ EXTERN NALIAJ PGNaliaBhaal1
END

CHAIN NALIAJ PGNaliaBhaal1
@375
END
++ @376 DO ~SetGlobal("PGEndangerNalia","GLOBAL",1)~ EXTERN NALIAJ PGNaliaBhaal1.control
++ @377 DO ~SetGlobal("PGEndangerNalia","GLOBAL",1)~ EXTERN NALIAJ PGNaliaBhaal1.control
++ @378 DO ~SetGlobal("PGEndangerNalia","GLOBAL",1)~ EXTERN NALIAJ PGNaliaBhaal1.control

CHAIN NALIAJ PGNaliaBhaal1.control
@379
DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

EXTEND_BOTTOM PLAYER1 10
IF ~Global("PGEndangerNalia","GLOBAL",1)
!Detect("Nalia")~ DO ~SetGlobal("DrowTalk","GLOBAL",5)~ GOTO 12
IF ~Global("PGEndangerNalia","GLOBAL",1)
Detect("Nalia")~ DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXTERN NALIAJ PGNaliaBhaal2
END

CHAIN NALIAJ PGNaliaBhaal2
@380
= @381
EXIT

// Bodhi's ambush

BEGIN PGVAMNAL 

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB PGNaliaKidnap
END

CHAIN BODHIAMB PGNaliaKidnap
@382
= @383
== NALIAJ @384
== BODHIAMB @385
END
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGNalC53")~ UNSOLVED_JOURNAL @10000 EXIT

A_T_T C6bodhi 21 ~!Global("PGNaliaVampire","GLOBAL",2)~ DO 0

EXTEND_BOTTOM C6BODHI 21
IF ~Global("PGNaliaVampire","GLOBAL",2)~ + 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("PGNaliaVampire","GLOBAL",2)~ + @386 EXTERN C6BODHI PGNaliaAb
+ ~Global("PGNaliaVampire","GLOBAL",2)~ + @387 EXTERN C6BODHI PGNaliaAb
+ ~Global("PGNaliaVampire","GLOBAL",2)~ + @388 EXTERN C6BODHI PGNaliaAb
+ ~Global("PGNaliaVampire","GLOBAL",2)~ + @389 EXTERN C6BODHI PGNaliaAbConf
END

CHAIN C6BODHI PGNaliaAbConf
@390
END
IF ~~ EXTERN C6BODHI PGNaliaAb

CHAIN C6BODHI PGNaliaAb
@391
== PGVAMNAL @392
== C6BODHI @393
END
IF ~~ EXTERN C6BODHI 28

EXTEND_BOTTOM WARSAGE 0
+ ~!Dead("C6BODHI") Global("PGNaliaVampire","GLOBAL",2)~ + @394 EXTERN WARSAGE 6
+ ~PartyHasItem("PGNalBod")~ + @395 EXTERN WARSAGE 5
END

EXTEND_BOTTOM DOGHMA 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("PGNalBod")~ + @396 EXTERN DOGHMA 10
END

EXTEND_BOTTOM IMNBOOK1 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("PGNalBod")~ + @397 EXTERN IMNBOOK1 4
END

APPEND NALIAP

IF WEIGHT #-1 ~Global("PGNaliaVampire","GLOBAL",5)~ v1
SAY @398
IF ~~ DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
EraseJournalEntry(@10000)
SetGlobal("PGNaliaVampire","GLOBAL",6)~ SOLVED_JOURNAL @10001 + v1.1
END

IF ~~ v1.1
SAY @399
= @400
= @401
++ @402 DO ~SetGlobal("PGPCLovesNalia","GLOBAL",1)~ + v1.apart
++ @403 + v1.without
++ @404 + v1.normal
END

IF ~~ v1.apart
SAY @405
IF ~~ + v1.main2
END

IF ~~ v1.without
SAY @406
IF ~~ + v1.main2
END

IF ~~ v1.normal
SAY @407
IF ~~ + v1.main2
END

IF ~~ v1.main2
SAY @408
= @409
++ @410 DO ~ActionOverride("Nalia",JoinParty())~ EXIT
++ @411 + v1.break
END

IF ~~ v1.break
SAY @412
= @413
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR1306",1136,905,0)~ EXIT
END

END

// Madame Nin

CHAIN IF WEIGHT #-1 ~!Global("MadamUpset","GLOBAL",1) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(2) Global("PGNaliaRomanceActive","GLOBAL",1) Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN MADAM mn1
@414
== NALIAJ @415
END
IF ~~ DO ~SetGlobal("MadamUpset","GLOBAL",1)~ EXTERN MADAM 17
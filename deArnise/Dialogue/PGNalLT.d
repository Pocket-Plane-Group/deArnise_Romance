// NALIA LOVETALKS

APPEND NALIAJ

// LT 2

IF WEIGHT #-99 ~Global("PGNaliaLoveTalk","GLOBAL",2) Global("PGNaliaRomanceActive","GLOBAL",1)~ t1
SAY @0 
= @1 
++ @2 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",3)~ + t1.rebuild
++ @3 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",3)~ + t1.brat
++ @4 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",3)~ + t1.bury
++ @5 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",3)~ + t1.road
END

IF ~~ t1.brat
SAY @6
IF ~~ EXIT
END

IF ~~ t1.bury
SAY @7
IF ~~ + t1.main
END

IF ~~ t1.road
SAY @8
= @9
IF ~~ + t1.main
END
 
IF ~~ t1.rebuild
SAY @10
IF ~~ + t1.main
END

IF ~~ t1.main
SAY @11
= @12
++ @13 + t1.met
++ @14 + t1.sooner
++ @15 + t1.time
++ @16 + t1.remember
++ @17 + t1.alive
END

IF ~~ t1.alive
SAY @18
IF ~~ EXIT
END

IF ~~ t1.time
SAY @19
IF ~~ + t1.catastrophe
END

IF ~~ t1.met
SAY @20
IF ~~ + t1.catastrophe
END

IF ~~ t1.remember
SAY @21 
IF ~~ + t1.catastrophe
END

IF ~~ t1.sooner
SAY @22
IF ~~ + t1.catastrophe
END

IF ~~ t1.catastrophe
SAY @23
= @24
IF ~~ EXIT
END

// LT4

IF WEIGHT #-98 ~Global("PGNaliaLoveTalk","GLOBAL",4) Global("PGNaliaRomanceActive","GLOBAL",1)~ t2
SAY @25 
++ @26 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",5) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~
+ t2.respects
++ @27 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",5) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t2.grave
++ @28 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",5) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t2.friend
++ @29 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",5) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t2.cry
END

IF ~~ t2.cry
SAY @30
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t2.grave
SAY @31
= @32
IF ~~ + t2.main
END

IF ~~ t2.friend
SAY @33
IF ~~ + t2.main
END
 
IF ~~ t2.respects
SAY @34
IF ~~ + t2.main
END

IF ~~ t2.main
SAY @35
= @36
= @37
++ @38 + t2.accident
++ @39 + t2.inyourplace
++ @40 + t2.heartset
++ @41 + t2.needy
++ @42 + t2.shout
END

IF ~~ t2.inyourplace
SAY @43
IF ~~ EXIT
END

IF ~~ t2.shout
SAY @44 
IF ~~ EXIT
END

IF ~~ t2.accident
SAY @45
= @46
IF ~~ + t2.remember
END

IF ~~ t2.heartset
SAY @47
IF ~~ + t2.remember
END

IF ~~ t2.needy
SAY @48
= @49
IF ~~ EXIT
END

IF ~~ t2.remember
SAY @50
IF ~~ EXIT
END

// LT6

IF WEIGHT #-97 ~Global("PGNaliaLoveTalk","GLOBAL",6) Global("PGNaliaRomanceActive","GLOBAL",1)~ t3
SAY @51 
= @52 
= @53 
++ @54 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",7) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t3.nobelong
++ @55 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",7) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t3.dnd
++ @56 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",7) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t3.painful
++ @57 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",7) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t3.irenicus
++ @58 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",7) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t3.visitkeep
++ @59 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",7) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t3.business
END

IF ~~ t3.dnd
SAY @60
IF ~~ EXIT
END

IF ~~ t3.nobelong
SAY @61
IF ~~ + t3.main
END

IF ~~ t3.painful
SAY @62
IF ~~ + t3.main
END

IF ~~ t3.irenicus
SAY @63
IF ~~ + t3.main
END

IF ~~ t3.visitkeep
SAY @64
IF ~~ + t3.main
END

IF ~~ t3.business
SAY @65
IF ~~ + t3.main
END

IF ~~ t3.main
SAY @66
= @67
= @68
++ @69 + t3.affairs
++ @70 + t3.reallybelieve
++ @71 + t3.lifehard
++ @72 + t3.verysweet
END

IF ~~ t3.affairs
SAY @73
IF ~~ + t3.accomplish
END

IF ~~ t3.accomplish
SAY @74
IF ~~ EXIT
END

IF ~~ t3.reallybelieve
SAY @75
= @76
IF ~~ + t3.accomplish
END

IF ~~ t3.lifehard
SAY @77
IF ~~ EXIT
END

IF ~~ t3.verysweet
SAY @78
IF ~~ EXIT
END

// LT8

IF WEIGHT #-96 ~Global("PGNaliaLoveTalk","GLOBAL",8) Global("PGNaliaRomanceActive","GLOBAL",1)~ t4
SAY @79 
IF ~NumInPartyGT(2)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",9)~ + t4.numg2
IF ~!NumInPartyGT(2)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",9)~ + t4.num2
END

IF ~~ t4.numg2
SAY @80
IF ~~ + t4.alwaystrue
END

IF ~~ t4.num2
SAY @81
IF ~~ + t4.alwaystrue
END

IF ~~ t4.alwaystrue
SAY @82
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @83 + t4.street
+ ~NumInPartyGT(2) GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @84 + t4.profession
+ ~NumInPartyGT(2) GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @85 + t4.profession
+ ~!NumInPartyGT(2)~ + @86 + t4.closequarters
++ @87 + t4.nearme
++ @88 + t4.quitecivil
++ @89 + t4.solitude
++ @90 + t4.speakonly
IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",1)~ EXTERN VICONIJ t4.vic
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",1)~ EXTERN JAHEIRAJ t4.jae
END

IF ~~ t4.interrupt
SAY @91
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @83 + t4.street
+ ~NumInPartyGT(2) GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @84 + t4.profession
+ ~NumInPartyGT(2) GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @85 + t4.profession
+ ~!NumInPartyGT(2)~ + @86 + t4.closequarters
++ @87 + t4.nearme
++ @88 + t4.quitecivil
++ @89 + t4.solitude
++ @90 + t4.speakonly
END

IF ~~ t4.speakonly
SAY @92
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t4.street
SAY @93
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t4.closequarters
SAY @94
IF ~~ + t4.main
END

IF ~~ t4.nearme
SAY @95
IF ~~ + t4.main
END

IF ~~ t4.quitecivil
SAY @96
IF ~~ + t4.main
END

IF ~~ t4.profession
SAY @97 
IF ~~ + t4.main
END

IF ~~ t4.solitude
SAY @98
IF ~~ + t4.main
END

IF ~~ t4.main
SAY @99
= @100
= @101
= @102
++ @103 + t4.alliances
++ @104 + t4.pleasure
++ @105 + t4.sanity
+ ~!InParty("Imoen2")~ + @106 + t4.imogood
+ ~!InParty("Imoen2")~ + @107 + t4.imobad
END

IF ~~ t4.imobad
SAY @108
IF ~~ EXIT
END

IF ~~ t4.imogood
SAY @109
= @110
IF ~~ EXIT
END

IF ~~ t4.pleasure
SAY @111 
= @112
IF ~~ + t4.alliances
END

IF ~~ t4.alliances
SAY @113
= @114 IF ~~ EXIT
END

IF ~~ t4.sanity
SAY @115
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

// LT10

IF WEIGHT #-95 ~Global("PGNaliaLoveTalk","GLOBAL",10) Global("PGNaliaRomanceActive","GLOBAL",1)~ t5
SAY @116 
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",11) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t5.always
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",11) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ EXTERN JAHEIRAJ t5.jae
IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",1)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",11) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ EXTERN AERIEJ t5.aer
END

IF ~~ t5.always
SAY @117 
IF ~~ + t5.always2
IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",1)~ EXTERN VICONIJ t5.vic
END

IF ~~ t5.always2
SAY @118
++ @119 + t5.flogged
++ @120 + t5.sleep
++ @121 + t5.what
++ @122 + t5.driven
++ @123 + t5.light
END

IF ~~ t5.what
SAY @124
IF ~~ + t5.main
END

IF ~~ t5.light
SAY @125
IF ~~ + t5.main
END

IF ~~ t5.driven
SAY @126
IF ~~ + t5.main
END

IF ~~ t5.flogged
SAY @127
IF ~~ + t5.main
END

IF ~~ t5.sleep
SAY @128
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t5.main
SAY @129
= @130
++ @131 + t5.rules
++ @132 + t5.bore
++ @133 + t5.tutor
END

IF ~~ t5.bore
SAY @134
IF ~~ + t5.main2
END

IF ~~ t5.rules
SAY @135
IF ~~ + t5.main2
END

IF ~~ t5.tutor
SAY @136
IF ~~ + t5.main2
END

IF ~~ t5.main2
SAY @137
= @138 
= @139
= @140 
= @141
= @142
++ @143 + t5.sleep2
++ @144 + t5.dedication
++ @145 + t5.talented
++ @146 + t5.pay
++ @147 + t5.relationship
END

IF ~~ t5.talented
SAY @148
IF ~~ + t5.restnow
END

IF ~~ t5.sleep2
SAY @149
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5.pay
SAY @150
= @151
IF ~~ + t5.restnow
END

IF ~~ t5.relationship
SAY @152
IF ~~ + t5.restnow
END

IF ~~ t5.dedication
SAY @153
IF ~~ + t5.restnow
END

IF ~~ t5.restnow
SAY @154 
IF ~~ DO ~RestParty()~ EXIT
END
 
// LT12

IF WEIGHT #-94 ~Global("PGNaliaLoveTalk","GLOBAL",12) Global("PGNaliaRomanceActive","GLOBAL",1)~ t6
SAY @155 
= @156 
= @157 
= @158 
++ @159 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",13) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t6.wake
++ @160 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",13) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t6.wake
++ @161 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",13) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t6.wake
++ @162 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",13) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t6.allright
END

IF ~~ t6.allright
SAY @163
IF ~~ + t6.main
END

IF ~~ t6.wake
SAY @164
IF ~~ + t6.main
END

IF ~~ t6.main
SAY @165
= @166
= @167
= @168
= @169
= @170
++ @171 + t6.gorion
++ @172 + t6.overrun
++ @173 + t6.tasks
++ @174 + t6.threat
++ @175 + t6.anything
END

IF ~~ t6.gorion
SAY @176
IF ~~ + t6.thanks
END

IF ~~ t6.overrun
SAY @177
IF ~~ + t6.thanks
END

IF ~~ t6.tasks
SAY @178
IF ~~ + t6.thanks
END

IF ~~ t6.anything
SAY @179
IF ~~ + t6.thanks
END

IF ~~ t6.threat
SAY @180 
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t6.thanks
SAY @181
= @182
IF ~~ EXIT
END

// LT14

IF WEIGHT #-93 ~Global("PGNaliaLoveTalk","GLOBAL",14) Global("PGNaliaRomanceActive","GLOBAL",1)~ t7
SAY @183 
++ @184 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",15) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t7.short
++ @185 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",15) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t7.damsel
++ @186 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",15) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t7.escape
++ @187 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",15) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t7.harmed
++ @188 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",15) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t7.costyou
IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",1)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",15) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ EXTERN VICONIJ t7.vic
IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",1)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",15) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ EXTERN AERIEJ t7.aer
END

IF ~~ t7.costyou
SAY @189
++ @190 + t7.bluff
++ @191 + t7.laugh
++ @192 + t7.gold
++ @193 + t7.handshake
END

IF ~~ t7.bluff
SAY @194
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t7.gold
SAY @195
= @196
IF ~~ DO ~ActionOverride(Player1,GiveGoldForce(250)) SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t7.handshake
SAY @197
IF ~~ + t7.main
END

IF ~~ t7.laugh
SAY @198
IF ~~ + t7.main
END

IF ~~ t7.short
SAY @199
IF ~~ + t7.main
END

IF ~~ t7.damsel
SAY @200
IF ~~ + t7.main
END

IF ~~ t7.escape
SAY @201
IF ~~ + t7.main
END

IF ~~ t7.harmed
SAY @202
IF ~~ + t7.main
END

IF ~~ t7.main
SAY @203
= @204
= @205
= @206
= @207
= @208
++ @209 + t7.irons
++ @210 + t7.hurtyou
++ @211 + t7.head
++ @212 + t7.missed
END

IF ~~ t7.missed
SAY @213
= @214
IF ~~ EXIT
END

IF ~~ t7.irons
SAY @215
IF ~~ + t7.lastthing
END

IF ~~ t7.head
SAY @216
IF ~~ + t7.lastthing
END

IF ~~ t7.hurtyou
SAY @217
= @218
IF ~~ + t7.lastthing
END

IF ~~ t7.lastthing
SAY @219
IF ~~ EXIT
END

// LT16

IF WEIGHT #-92 ~Global("PGNaliaLoveTalk","GLOBAL",16) Global("PGNaliaRomanceActive","GLOBAL",1)~ t8
SAY @220 
= @221
++ @222 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",17) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t8.driven
++ @223 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",17) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t8.everyman
++ @224 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",17) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t8.passive
++ @225 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",17) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t8.justice
++ @226 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",17) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t8.careabout
++ @227 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",17) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t8.crossme
++ @228 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",17) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t8.whatyouthink
END

IF ~~ t8.careabout
SAY @229
= @230
++ @231 + t8.everyman
++ @232 + t8.letyoudown
++ @233 + t8.appreciated
++ @234 + t8.example
++ @235 + t8.sensitive
++ @236 + t8.tonsils
END

IF ~~ t8.letyoudown
SAY @237
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",-1)~ + t8.wellcutoff
END

IF ~~ t8.crossme
SAY @238
= @239
++ @240 + t8.indeed
++ @234 + t8.example
++ @231 + t8.everyman
++ @235 + t8.sensitive
++ @241 + t8.enemies
++ @236 + t8.tonsils
END

IF ~~ t8.indeed
SAY @242
IF ~~ + t8.wellcutoff
END

IF ~~ t8.enemies
SAY @243
IF ~~ EXIT
END

IF ~~ t8.justice
SAY @244
IF ~~ + t8.justice2
END

IF ~~ t8.justice2
SAY @245
++ @231 + t8.everyman
++ @233 + t8.appreciated
++ @234 + t8.example
++ @235 + t8.sensitive
++ @236 + t8.tonsils
END

IF ~~ t8.passive
SAY @246
= @247
++ @248 + t8.wink
++ @231 + t8.everyman
++ @233 + t8.appreciated
++ @234 + t8.example
++ @235 + t8.sensitive
END

IF ~~ t8.wink
SAY @249
IF ~~ EXIT
END

IF ~~ t8.appreciated
SAY @250 
= @251
IF ~~ EXIT
END

IF ~~ t8.example
SAY @252
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",-1)~ EXIT
END

IF ~~ t8.driven
SAY @253
+ ~Class(Player1,PALADIN_ALL)~ + @254 + t8.imply
+ ~Class(Player1,CLERIC_ALL) !Alignment(Player1,MASK_EVIL)~ + @255 + t8.imply
++ @256 + t8.everyman
++ @235 + t8.sensitive
++ @257 + t8.inline
+ ~ReputationGT(Player1,12)~ + @258 + t8.notdisappointhigh
+ ~ReputationLT(Player1,13)~ + @258 + t8.notdisappointlow
++ @236 + t8.tonsils
END

IF ~~ t8.sensitive
SAY @259
IF ~~ + t8.thereigo
END

IF ~~ t8.tonsils
SAY @260
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END
 
IF ~~ t8.imply
SAY @261
IF ~~ + t8.thereigo
END

IF ~~ t8.inline
SAY @262
++ @263 + t8.wellcutoff
++ @264 + t8.wellcutoff
++ @265 + t8.wellcutoff
END

IF ~~ t8.wellcutoff
SAY @266
IF ~~ EXIT
END

IF ~~ t8.notdisappointhigh
SAY @267
IF ~~ + t8.thereigo
END

IF ~~ t8.notdisappointlow
SAY @268
IF ~~ + t8.thereigo
END

IF ~~ t8.thereigo
SAY @269
IF ~~ EXIT
END

IF ~~ t8.everyman
SAY @270
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ EXIT
END

IF ~~ t8.whatyouthink
SAY @271
IF ~ReputationGT(Player1,14)~ + t8.highrep
IF ~ReputationGT(Player1,8) ReputationLT(Player1,15) !Alignment(Player1,MASK_EVIL)~ + t8.midrep_nonevil
IF ~ReputationGT(Player1,8) ReputationLT(Player1,15) Alignment(Player1,MASK_EVIL)~ + t8.midrep_evil
IF ~ReputationLT(Player1,9)~ + t8.lowrep
END

IF ~~ t8.highrep
SAY @272
++ @273 + t8.blush
++ @274 + t8.inline
++ @275 + t8.everyman
+ ~ReputationGT(Player1,12)~ + @258 + t8.notdisappointhigh
+ ~ReputationLT(Player1,13)~ + @258 + t8.notdisappointlow
++ @236 + t8.tonsils
END

IF ~~ t8.blush
SAY @276
IF ~~ + t8.wellcutoff
END

IF ~~ t8.midrep_nonevil
SAY @277
+ ~Class(Player1,PALADIN_ALL)~ + @254 + t8.imply
+ ~Class(Player1,CLERIC_ALL) !Alignment(Player1,MASK_EVIL)~ + @255 + t8.imply
++ @257 + t8.inline
+ ~ReputationGT(Player1,12)~ + @258 + t8.notdisappointhigh
+ ~ReputationLT(Player1,13)~ + @258 + t8.notdisappointlow
++ @236 + t8.tonsils
++ @273 + t8.blush
++ @275 + t8.everyman
END

IF ~~ t8.midrep_evil
SAY @278
++ @256 + t8.everyman
++ @257 + t8.inline
+ ~ReputationGT(Player1,12)~ + @258 + t8.notdisappointhigh
+ ~ReputationLT(Player1,13)~ + @258 + t8.notdisappointlow
++ @236 + t8.tonsils
++ @279 + t8.everyman
++ @280 + t8.novillain
END

IF ~~ t8.novillain
SAY @281
IF ~~ EXIT
END

IF ~~ t8.lowrep
SAY @282
++ @283 + t8.careabout2
++ @236 + t8.tonsils
++ @279 + t8.everyman
++ @280 + t8.novillain
END

IF ~~ t8.careabout2
SAY @284
IF ~~ EXIT
END

// LT18

IF WEIGHT #-91 ~Global("PGNaliaLoveTalk","GLOBAL",18) Global("PGNaliaRomanceActive","GLOBAL",1)~ t9
SAY @285 
= @286 
++ @287 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",19) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t9.wearingbefore
++ @288 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",19) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t9.errandboy
++ @289 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",19) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t9.worth
++ @290 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",19) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t9.where
END

IF ~~ t9.errandboy
SAY @291
= @292
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ EXIT
END

IF ~~ t9.worth
SAY @293
= @294
+ ~NumInParty(2)~ + @295 + t9.smallkiss
+ ~NumInPartyGT(2)~ + @295 + t9.nokiss
++ @288 + t9.errandboy
++ @296 + t9.wearingbefore
++ @297 + t9.toughluck
END

IF ~~ t9.toughluck
SAY @298
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ t9.nokiss
SAY @299
IF ~~ + t9.nokiss2
END

IF ~~ t9.nokiss2
SAY @300
IF ~~ EXIT
END

IF ~~ t9.smallkiss
SAY @301
IF ~~ + t9.nokiss
IF ~HasItemEquiped("Ring30",Player1)~ + t9.ringkiss
IF ~GlobalLT("PGNaliaPCSucks","GLOBAL",1)~ + t9.smallkiss2
END

IF ~~ t9.ringkiss
SAY @302
= @303
IF ~~ + t9.nokiss2
END

IF ~~ t9.smallkiss2
SAY @304
= @305
= @306
IF ~~ EXIT
END

IF ~~ t9.wearingbefore
SAY @307 
= @308
= @309
++ @310 + t9.where0
++ @311 + t9.sentimental
++ @312 + t9.more
++ @313 + t9.thankyou
END

IF ~~ t9.more
SAY @314
IF ~~ + t9.thankyou
END

IF ~~ t9.sentimental
SAY @315
IF ~~ + t9.thankyou
END

IF ~~ t9.thankyou
SAY @316
IF ~~ EXIT
END

IF ~~ t9.where0
SAY @317
= @318
++ @319 + t9.where
++ @320 + t9.wherebeen
END

IF ~~ t9.wherebeen
SAY @321
IF ~~ + t9.thankyou
END

IF ~~ t9.where
SAY @322
= @323
++ @324 + t9.believe
++ @325 + t9.jaded
++ @326 + t9.magical
++ @327 + t9.beautiful
END

IF ~~ t9.believe
SAY @328
= @329
IF ~~ + t9.thankyou
END

IF ~~ t9.jaded
SAY @330
IF ~~ + t9.thankyou
END

IF ~~ t9.beautiful
SAY @331
IF ~~ + t9.thankyou
END

IF ~~ t9.magical
SAY @332
IF ~~ + t9.thankyou
END

// LT20

IF WEIGHT #-90 ~Global("PGNaliaLoveTalk","GLOBAL",20) Global("PGNaliaRomanceActive","GLOBAL",1)~ t10
SAY @333 
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",21) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t10.main
IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",1)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",21) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ EXTERN AERIEJ t10.aer
IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",1)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",21) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ EXTERN VICONIJ t10.vic
END

IF ~~ t10.main
SAY @334
= @335
= @336
++ @337 + t10.enditall
++ @338 + t10.dodge
++ @339 + t10.stupidest
++ @340 + t10.desperation
++ @341 + t10.calluses
END

IF ~~ t10.desperation
SAY @342
IF ~~ + t10.dodge2
END

IF ~~ t10.dodge
SAY @343
IF ~~ + t10.dodge2
END

IF ~~ t10.dodge2
SAY @344
++ @345 + t10.harden
++ @346 + t10.asking
++ @347 + t10.revolution
++ @348 + t10.betterfuture
++ @349 + t10.misery
END

IF ~~ t10.harden
SAY @350
IF ~~ EXIT
END

IF ~~ t10.asking
SAY @351
= @352
IF ~~ EXIT
END

IF ~~ t10.revolution
SAY @353
IF ~~ + t10.betterfuture
END

IF ~~ t10.betterfuture
SAY @354 
= @355
IF ~~ EXIT
END

IF ~~ t10.misery
SAY @356
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t10.enditall
SAY @357
= @358
= @359
++ @360 + t10.care
++ @361 + t10.deadspace
++ @362 + t10.remarkable
++ @363 + t10.care
END

IF ~~ t10.care
SAY @364 
= @365
IF ~~ EXIT
END

IF ~~ t10.deadspace
SAY @366 
= @367
IF ~~ EXIT
END
 
IF ~~ t10.remarkable
SAY @368
= @369
= @370
IF ~~ EXIT
END

IF ~~ t10.stupidest
SAY @371
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t10.calluses
SAY @372 
= @373
++ @345 + t10.harden
++ @346 + t10.asking
++ @347 + t10.revolution
++ @348 + t10.betterfuture
++ @349 + t10.misery
END

// LT22

IF WEIGHT #-89 ~Global("PGNaliaLoveTalk","GLOBAL",22) Global("PGNaliaRomanceActive","GLOBAL",1)~ t11
SAY @374 
= @375 
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",23) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t11.always
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",23) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ EXTERN JAHEIRAJ t11.jae
END

IF ~~ t11.always
SAY @376
++ @377 + t11.sogreat
+ ~ReputationGT(Player1,14)~ + @378 + t11.gorionwantedhigh
+ ~ReputationLT(Player1,15)~ + @378 + t11.gorionwantedlow
++ @379 DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",1)~ + t11.tellmefirst
++ @380 + t11.clothes
++ @381 + t11.glorious
++ @382 + t11.betterman
++ @383 + t11.madscheme
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%) !Dead("Imoen2")~ + @384 + t11.imoen
+ ~Dead("Firkra02")~ + @385 + t11.firkraag
+ ~Class(Player1,PALADIN_ALL)~ + @386 + t11.paladin
+ ~Class(Player1,CLERIC_ALL)~ + @387 + t11.cleric
+ ~Class(Player1,MONK)~ + @388 + t11.monk
+ ~Class(Player1,THIEF_ALL)~ + @389 + t11.thief
+ ~Class(Player1,MAGE_ALL)~ + @390 + t11.mage
END

IF ~~ t11.paladin
SAY @391 
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.cleric
SAY @392 
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.monk
SAY @393 
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.thief
SAY @394 
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.mage
SAY @395 
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.imoen
SAY @396
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ EXTERN IMOEN2J t11.im
END

IF ~~ t11.firkraag
SAY @397 
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.clothes
SAY @398 
= @399
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1) SetGlobal("PGspiedNalia","GLOBAL",1)~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1) SetGlobal("PGspiedNalia","GLOBAL",1)~ EXIT
END

IF ~~ t11.glorious
SAY @400
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ EXIT
END

IF ~~ t11.betterman
SAY @401 
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.madscheme
SAY @402
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.sogreat
SAY @403
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.gorionwantedhigh
SAY @404
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END
 
IF ~~ t11.gorionwantedlow
SAY @405
IF ~~ + t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.tellmefirst
SAY @406
= @407
 = @408
++ @409 + t11.washer
++ @410 + t11.soul
++ @411 + t11.sap
++ @412 + t11.better
++ @413 + t11.epiphany
++ @414 + t11.soul
END

IF ~~ t11.washer
SAY @415
IF ~~ EXIT
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",1)~ DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",2)~ + t11.nowtellme
END

IF ~~ t11.soul
SAY @416
IF ~~ EXIT
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",1)~ DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",2)~ + t11.nowtellme
END

IF ~~ t11.sap
SAY @417
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ EXIT
END

IF ~~ t11.better
SAY @418
IF ~~ EXIT
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",1)~ DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",2)~ + t11.nowtellme
END

IF ~~ t11.epiphany
SAY @419
IF ~~ EXIT
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",1)~ DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",2)~ + t11.nowtellme
END

IF ~~ t11.main
SAY @420
++ @421 + t11.commons
++ @422 + t11.cannotchange
++ @423 + t11.pureheart
++ @424 + t11.brilliant
++ @425 + t11.yourtone
END

IF ~~ t11.commons
SAY @426
+ ~Global("PGNaliaTellMeFirstLT22","LOCALS",0)~ + @427 DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",2)~ + t11.tellmefirst
+ ~Global("PGNaliaTellMeFirstLT22","LOCALS",0)~ + @428 EXIT
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.brilliant
SAY @429
+ ~Global("PGNaliaTellMeFirstLT22","LOCALS",0)~ + @427 DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",2)~ + t11.tellmefirst
+ ~Global("PGNaliaTellMeFirstLT22","LOCALS",0)~ + @428 EXIT
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.cannotchange
SAY @430
+ ~Global("PGNaliaTellMeFirstLT22","LOCALS",0)~ + @427 DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",2)~ + t11.tellmefirst
+ ~Global("PGNaliaTellMeFirstLT22","LOCALS",0)~ + @428 EXIT
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.pureheart
SAY @431
+ ~Global("PGNaliaTellMeFirstLT22","LOCALS",0)~ + @427 DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",2)~ + t11.tellmefirst
+ ~Global("PGNaliaTellMeFirstLT22","LOCALS",0)~ + @428 EXIT
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END

IF ~~ t11.yourtone
SAY @432
+ ~Global("PGNaliaTellMeFirstLT22","LOCALS",0)~ + @427 DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",2)~ + t11.tellmefirst
+ ~Global("PGNaliaTellMeFirstLT22","LOCALS",0)~ + @428 EXIT
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT
END
 
IF ~~ t11.nowtellme
SAY @433
++ @377 + t11.sogreat
+ ~ReputationGT(Player1,14)~ + @378 + t11.gorionwantedhigh
+ ~ReputationLT(Player1,15)~ + @378 + t11.gorionwantedlow
++ @379 DO ~SetGlobal("PGNaliaTellMeFirstLT22","LOCALS",1)~ + t11.tellmefirst
++ @380 + t11.clothes
++ @381 + t11.glorious
++ @382 + t11.betterman
++ @383 + t11.madscheme
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%) !Dead("Imoen2")~ + @384 + t11.imoen
+ ~Dead("Firkra02")~ + @385 + t11.firkraag
+ ~Class(Player1,PALADIN_ALL)~ + @386 + t11.paladin
+ ~Class(Player1,CLERIC_ALL)~ + @387 + t11.cleric
+ ~Class(Player1,MONK)~ + @388 + t11.monk
+ ~Class(Player1,THIEF_ALL)~ + @389 + t11.thief
+ ~Class(Player1,MAGE_ALL)~ + @390 + t11.mage
END

// LT24

IF WEIGHT #-88 ~Global("PGNaliaLoveTalk","GLOBAL",24) Global("PGNaliaRomanceActive","GLOBAL",1)~ t12
SAY @434 
++ @435 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",25) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t12.main
++ @436 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",25) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t12.ignoring
++ @437 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",25) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t12.rude
++ @438 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",25) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t12.willanswer
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",25) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ EXTERN JAHEIRAJ t12.jae
END

IF ~~ t12.ignoring
SAY @439
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t12.rude
SAY @440
IF ~~ + t12.main
END

IF ~~ t12.willanswer
SAY @441
IF ~~ + t12.main
END

IF ~~ t12.main
SAY @442 
= @443
= @444
++ @445 + t12.oldhabits
++ @446 + t12.oldhabits
+ ~Class(Player1,PALADIN_ALL)~ + @447 + t12.servepaladin
+ ~!Class(Player1,PALADIN_ALL)~ + @447 + t12.servenon
++ @448 + t12.earned
++ @449 + t12.couldnot
END

IF ~~ t12.oldhabits
SAY @450 
= @451
IF ~~ + t12.couldnot2
END

IF ~~ t12.earned
SAY @452
IF ~ReputationGT(Player1,15)~ + t12.earnedhighrep
IF ~ReputationLT(Player1,16)~ + t12.earnedlowrep
END

IF ~~ t12.earnedhighrep
SAY @453
IF ~~ + t12.couldnot2
END

IF ~~ t12.earnedlowrep
SAY @454
IF ~~ + t12.couldnot2
END

IF ~~ t12.servenon
SAY @455
IF ~~ + t12.couldnot2
END

IF ~~ t12.servepaladin
SAY @456
= @457
++ @458 + t12.couldnot
++ @459 + t12.haveat
++ @460 + t12.amnot
++ @461 + t12.haveat
END

IF ~~ t12.amnot
SAY @462
IF ~~ + t12.couldnot2
END

IF ~~ t12.haveat
SAY @463
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() ApplySpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ t12.couldnot
SAY @464
IF ~~ + t12.couldnot2
END

IF ~~ t12.couldnot2
SAY @465
++ @466 + t12.mistress
++ @467 + t12.trap
++ @468 + t12.formal
++ @469 + t12.anytime
END

IF ~~ t12.mistress
SAY @470
IF ~~ EXIT
END

IF ~~ t12.trap
SAY @471
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ t12.formal
SAY @472
IF ~~ EXIT
END

IF ~~ t12.anytime
SAY @473
IF ~~ EXIT
END

// LT26

IF WEIGHT #-87 ~Global("PGNaliaLoveTalk","GLOBAL",26) Global("PGNaliaRomanceActive","GLOBAL",1)~ t13
SAY @474 
= @475
= @476
++ @477 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",27) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t13.drunken
++ @478 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",27) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t13.commoner
++ @479 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",27) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t13.ghost
++ @480 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",27) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t13.aunt
++ @481 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",27) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t13.splendid
++ @482 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",27) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t13.bore
END

IF ~~ t13.bore
SAY @483
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t13.drunken
SAY @484 
= @485
IF ~~ + t13.main
END

IF ~~ t13.ghost
SAY @486
IF ~~ + t13.main
END

IF ~~ t13.aunt
SAY @487
IF ~~ + t13.main
END

IF ~~ t13.commoner
SAY @488
IF ~~ + t13.main
END

IF ~~ t13.splendid
SAY @489
IF ~~ + t13.main
END

IF ~~ t13.main
SAY @490
= @491
= @492
= @493
++ @494 + t13.gorion
++ @495 + t13.waste
++ @496 + t13.surprised
++ @497 + t13.deadly
++ @498 + t13.finewoman
END

IF ~~ t13.gorion
SAY @499
IF ~~ + t13.main2
END

IF ~~ t13.waste
SAY @500
IF ~~ + t13.main2
END

IF ~~ t13.surprised
SAY @501 
IF ~~ + t13.main2
END

IF ~~ t13.deadly
SAY @502
IF ~~ + t13.main2
END

IF ~~ t13.finewoman
SAY @503
IF ~~ + t13.main2
END

IF ~~ t13.main2
SAY @504
= @505
= @506
= @507 
= @508
= @509
= @510
++ @511 + t13.rebellious
++ @512 + t13.furious
++ @513 + t13.commonmen
++ @514 + t13.wouldthink
++ @515 + t13.sodifferent
END

IF ~~ t13.rebellious
SAY @516
IF ~~ EXIT
END

IF ~~ t13.furious
SAY @517
IF ~~ EXIT
END

IF ~~ t13.commonmen
SAY @518
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ EXIT
END

IF ~~ t13.wouldthink
SAY @519
= @520
IF ~~ EXIT
END
 
IF ~~ t13.sodifferent
SAY @521
IF ~~ EXIT
END

// LT28

IF WEIGHT #-86 ~Global("PGNaliaLoveTalk","GLOBAL",28) Global("PGNaliaRomanceActive","GLOBAL",1)~ t14
SAY @522 
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",29) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t14.1
END

IF ~~ t14.1
SAY @523 
++ @524 + t14.noregrets
++ @525 + t14.skip
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @526 + t14.imoen
++ @527 + t14.wring
++ @528 + t14.gorion
++ @529 + t14.gagged
++ @530 + t14.learningmore
++ @531 + t14.savingmore
END

IF ~~ t14.noregrets
SAY @532
IF ~~ + t14.main
END

IF ~~ t14.skip
SAY @533
IF ~~ + t14.main
END

IF ~~ t14.imoen
SAY @534
IF ~~ + t14.main
END

IF ~~ t14.wring
SAY @535
IF ~~ + t14.main
END

IF ~~ t14.gorion
SAY @536
IF ~~ + t14.main
END

IF ~~ t14.gagged
SAY @537
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t14.learningmore
SAY @538
IF ~~ + t14.main
END

IF ~~ t14.savingmore
SAY @539
IF ~~ + t14.main
END

IF ~~ t14.main
SAY @540
= @541
= @542
++ @543 + t14.obvious
++ @544 + t14.grudge
++ @545 + t14.obvious
END

IF ~~ t14.obvious
SAY @546
IF ~~ + t14.goon
END

IF ~~ t14.grudge
SAY @547
IF ~~ + t14.goon
END

IF ~~ t14.goon
SAY @548
= @549
++ @550 + t14.goon2
++ @551 + t14.goon2
++ @552 + t14.goon2
++ @553 + t14.goon2
END

IF ~~ t14.goon2
SAY @554
= @555 
= @556
++ @557 + t14.knowall
++ @558 + t14.dubious
++ @559 + t14.couldhave
++ @560 + t14.brilliant
++ @561 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t14.despicable
++ @562 + t14.knowall
END

IF ~~ t14.knowall
SAY @563
= @564
IF ~~ + t14.ending
END

IF ~~ t14.ending
SAY @565
IF ~~ EXIT
END

IF ~~ t14.dubious
SAY @566
= @567 
IF ~~ + t14.knowall
END

IF ~~ t14.couldhave
SAY @568
IF ~~ + t14.knowall
END

IF ~~ t14.brilliant
SAY @569
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t14.despicable
SAY @570
= @571
IF ~~ EXIT
END

// LT30

IF WEIGHT #-85 ~Global("PGNaliaLoveTalk","GLOBAL",30) Global("PGNaliaRomanceActive","GLOBAL",1)~ t15
SAY @572
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",31) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t15.1
END

IF ~~ t15.1
SAY @573
= @574
= @575
+ ~GlobalGT("FWGirlsInParty","GLOBAL",0)~ + @576 + t15.lookaround
+ ~Global("FWGirlsInParty","GLOBAL",0)~ + @577 + t15.exception
++ @578 + t15.uncomfortable
++ @579 + t15.silent
++ @580 + t15.veryspecial
++ @581 + t15.yesno
++ @582 + t15.delcia
END

IF ~~ t15.silent
SAY @583
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t15.uncomfortable
SAY @584
IF ~~ + t15.main
END

IF ~~ t15.veryspecial
SAY @585
IF ~~ + t15.main
END

IF ~~ t15.yesno
SAY @586
= @587
IF ~~ + t15.main
END

IF ~~ t15.exception
SAY @588
IF ~~ + t15.main
END

IF ~~ t15.lookaround
SAY @589
+ ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @590 EXTERN JAHEIRAJ t15.jaheira
++ @591 + t15.isee
++ @592 + t15.losttime
++ @593 + t15.donotchoose
++ @594 + t15.losttime
END

IF ~~ t15.isee
SAY @595
IF ~~ + t15.delcia
END

IF ~~ t15.delcia
SAY @596
IF ~~ + t15.main
END

IF ~~ t15.losttime
SAY @597
IF ~~ + t15.main
END

IF ~~ t15.donotchoose
SAY @598
IF ~~ + t15.main
END

IF ~~ t15.main
SAY @599
+ ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ + @600 EXTERN IMOEN2J t15.imoenhey
+ ~OR(2) !InParty("Imoen2") InMyArea("Imoen2")~ + @600 + t15.main2
++ @601 + t15.badperson
++ @602 + t15.main2
++ @603 + t15.painfully
END

IF ~~ t15.badperson
SAY @604
IF ~~ + t15.main2
END

IF ~~ t15.painfully
SAY @605
IF ~~ + t15.main2
END

IF ~~ t15.main2
SAY @606
= @607
= @608
= @609
++ @610 + t15.speechless
++ @611 + t15.frighten
++ @612 + t15.quarters
++ @613 + t15.morethan
END

IF ~~ t15.speechless
SAY @614
IF ~~ + t15.not
END

IF ~~ t15.not
SAY @615
IF ~~ EXIT
END

IF ~~ t15.frighten
SAY @616
IF ~~ + t15.shouldreally
END

IF ~~ t15.shouldreally
SAY @617
IF ~~ + t15.not
END

IF ~~ t15.quarters
SAY @618
IF ~~ EXIT
END

IF ~~ t15.morethan
SAY @619
IF ~~ + t15.shouldreally
END

// LT32

IF WEIGHT #-84 ~Global("PGNaliaLoveTalk","GLOBAL",32) Global("PGNaliaRomanceActive","GLOBAL",1)~ t16
SAY @620
++ @621 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",33) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t16.blazing
++ @622 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",33) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t16.jest
++ @623 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",33) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t16.main2
++ @624 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",33) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t16.main2
++ @625 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",33) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t16.crowded
++ @626 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",33) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t16.unfair
END

IF ~~ t16.blazing
SAY @627
IF ~~ + t16.main2
END

IF ~~ t16.jest
SAY @628
IF ~~ + t16.main2
END

IF ~~ t16.crowded
SAY @629
IF ~~ + t16.main2
END

IF ~~ t16.main2
SAY @630
= @631
= @632
++ @633 + t16.forever
++ @634 + t16.trust
++ @635 + t16.careafter
++ @636 + t16.gorion
++ @637 + t16.anything
END

IF ~~ t16.forever
SAY @638
IF ~~ + t16.main3
END

IF ~~ t16.trust
SAY @639
IF ~~ + t16.main3
END

IF ~~ t16.careafter
SAY @640
IF ~~ + t16.main3
END

IF ~~ t16.gorion
SAY @641 
IF ~~ + t16.main3
END

IF ~~ t16.anything
SAY @642
IF ~~ + t16.main3
END

IF ~~ t16.main3
SAY @643
= @644
= @645
= @646 
= @647 
= @648
++ @649 + t16.morespecial
++ @650 + t16.beingyourself
++ @651 + t16.morethan
++ @652 + t16.askhand
END

IF ~~ t16.morespecial
SAY @653
IF ~~ + t16.thinking
END

IF ~~ t16.thinking
SAY @654
IF ~~ EXIT
END

IF ~~ t16.beingyourself
SAY @655 
= @656
IF ~~ EXIT
END

IF ~~ t16.morethan
SAY @657
= @658
IF ~~ + t16.thinking
END

IF ~~ t16.askhand
SAY @659
IF ~~ EXIT
END

IF ~~ t16.unfair
SAY @660
++ @661 + t16.main2
++ @662 + t16.main2
++ @663 + t16.shameful
END

IF ~~ t16.shameful
SAY @664 
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

// LT34

IF WEIGHT #-83 ~Global("PGNaliaLoveTalk","GLOBAL",34) Global("PGNaliaRomanceActive","GLOBAL",1)~ t17
SAY @665
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",35) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t17.1
END

IF ~~ t17.1
SAY @666
++ @667 + t17.neveragain
++ @668 + t17.meantme
++ @669 + t17.courage
++ @670 + t17.bemoan
END

IF ~~ t17.bemoan
SAY @671
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",3)~ EXIT
END

IF ~~ t17.neveragain
SAY @672
IF ~~ + t17.main
END

IF ~~ t17.meantme
SAY @673
= @674
IF ~~ + t17.main
END

IF ~~ t17.courage
SAY @675
= @676
= @677
IF ~~ + t17.main
END

IF ~~ t17.main
SAY @678
= @679
= @680
= @681
++ @682 + t17.tradition
++ @683 + t17.pontificate
++ @684 + t17.obligation
++ @685 + t17.play
END

IF ~~ t17.tradition
SAY @686
IF ~~ EXIT
END

IF ~~ t17.pontificate
SAY @687
= @688
IF ~~ EXIT
END

IF ~~ t17.obligation
SAY @689
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ EXIT
END

IF ~~ t17.play
SAY @690
IF ~~ EXIT
END

// LT36

IF WEIGHT #-82 ~Global("PGNaliaLoveTalk","GLOBAL",36) Global("PGNaliaRomanceActive","GLOBAL",1)~ t18
SAY @691 // [defensive voicing]
++ @692 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",37) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t18.main
++ @693 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",37) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t18.backoff
++ @694 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",37) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t18.defensive
++ @695 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",37) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t18.convinced
END

IF ~~ t18.convinced
SAY @696
IF ~~ + t18.main
END

IF ~~ t18.backoff
SAY @697
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",2)~ EXIT
END

IF ~~ t18.defensive
SAY @698
IF ~~ + t18.main
END

IF ~~ t18.main
SAY @699
= @700
= @701
= @702
= @703
++ @704 + t18.beautiful
++ @705 + t18.rebel
++ @706 + t18.isitlove
++ @707 + t18.rebel
++ @708 DO ~IncrementGlobal("PGPCProposedNalia","GLOBAL",1)~ + t18.rightnow 
END

IF ~~ t18.beautiful
SAY @709 
= @710
IF ~~ + t18.main2
END

IF ~~ t18.rebel
SAY @711
IF ~~ + t18.main2
END

IF ~~ t18.isitlove
SAY @712
IF ~~ + t18.main2
END

IF ~~ t18.rightnow
SAY @713
= @714
IF ~~ + t18.main2
END

IF ~~ t18.main2
SAY @715
= @716
= @717 
IF ~~ EXIT
END

// LT38

IF WEIGHT #-81 ~Global("PGNaliaLoveTalk","GLOBAL",38) Global("PGNaliaRomanceActive","GLOBAL",1)~ t19
SAY @718
++ @719 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",39) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t19.insult
++ @720 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",39) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t19.soonerdie
++ @721 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",39) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t19.didpledge
++ @722 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",39) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t19.duel
++ @723 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",39) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t19.pawn
++ @724 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",39) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t19.overdone
END

IF ~~ t19.duel
SAY @725
++ @726 + t19.quiet
++ @727 + t19.nolonger
++ @724 + t19.overdone
END

IF ~~ t19.pawn
SAY @728
++ @729 + t19.didpledge
+ ~OR(2) !Alignment(Player1,MASK_GOOD) ReputationLT(Player1,15)~ + @730 + t19.wiseup1
+ ~Alignment(Player1,MASK_GOOD) ReputationGT(Player1,14)~ + @730 + t19.wiseup2
++ @726 + t19.quiet
END

IF ~~ t19.nolonger
SAY @731
IF ~~ + t19.insult
END

IF ~~ t19.quiet
SAY @732
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ t19.wiseup1
SAY @733
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t19.wiseup2
SAY @734
IF ~~ + t19.insult
END

IF ~~ t19.soonerdie
SAY @735
IF ~~ + t19.insult
END

IF ~~ t19.overdone
SAY @736
IF ~~ + t19.insult
END

IF ~~ t19.insult
SAY @737
++ @738 + t19.trust
++ @739 + t19.didpledge
++ @740 + t19.ownmind
++ @741 + t19.wouldnot
++ @742 + t19.moveon
END

IF ~~ t19.ownmind
SAY @743
IF ~~ + t19.end
END

IF ~~ t19.didpledge
SAY @744 
= @745
++ @746 + t19.trust
++ @747 + t19.acquiesced
++ @748 + t19.wouldnot
++ @742 + t19.moveon
END

IF ~~ t19.trust
SAY @749
IF ~~ + t19.trust2
END

IF ~~ t19.trust2
SAY @750
IF ~~ + t19.end
END

IF ~~ t19.wouldnot
SAY @751
++ @752 + t19.seal
++ @753 + t19.ownmind
++ @754 + t19.relax
++ @755 + t19.acquiesced
END

IF ~~ t19.seal
SAY @756
= @757
IF ~~ EXIT
END

IF ~~ t19.relax
SAY @758
IF ~~ + t19.trust2
END

IF ~~ t19.acquiesced
SAY @759 
= @760
IF ~~ + t19.end
END

IF ~~ t19.end
SAY @761
IF ~~ EXIT
END

IF ~~ t19.moveon
SAY @762
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ EXIT
END

// LT40

IF WEIGHT #-81 ~Global("PGNaliaLoveTalk","GLOBAL",40) Global("PGNaliaRomanceActive","GLOBAL",1)~ t20
SAY @763
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",41) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t20.1
END

IF ~~ t20.1
SAY @764 
= @765
++ @766 + t20.together
++ @767 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",2)~ + t20.lottolearn
++ @768 + t20.serve
++ @769 + t20.neededfriend
++ @770 + t20.believein
END

IF ~~ t20.together
SAY @771
IF ~~ + t20.main
END

IF ~~ t20.lottolearn
SAY @772
++ @773 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",-1)~ + t20.wink
++ @774 + t20.painfully
++ @775 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",-1)~ + t20.main
END

IF ~~ t20.serve
SAY @776
IF ~~ + t20.main
END

IF ~~ t20.neededfriend
SAY @777
IF ~~ + t20.main
END

IF ~~ t20.believein
SAY @778 
= @779
IF ~~ + t20.main
END

IF ~~ t20.wink
SAY @780
IF ~~ + t20.main
END

IF ~~ t20.painfully
SAY @781
IF ~~ EXIT
END

IF ~~ t20.main
SAY @782
IF ~~ + t20.3
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%) ~ + t20.2
END

IF ~~ t20.2
SAY @783
IF ~~ + t20.3
END

IF ~~ t20.3
SAY @784 
= @785
++ @786 + t20.plainly
++ @787 + t20.wonder
++ @788 + t20.socialclasses
+ ~GlobalLT("PGNaliaFlirtCount","GLOBAL",6)~ + @789 + t20.understand
+ ~GlobalGT("PGNaliaFlirtCount","GLOBAL",5)~ + @789 + t20.nounderstand
++ @790 + t20.brighter
++ @791 + t20.changes
END

IF ~~ t20.plainly
SAY @792 
IF ~~ + t20.plainly2
END

IF ~~ t20.plainly2
SAY @793
IF ~~ EXIT
END

IF ~~ t20.wonder
SAY @794
IF ~~ + t20.plainly2
END

IF ~~ t20.socialclasses
SAY @795
IF ~~ + t20.plainly2
END

IF ~~ t20.understand
SAY @796
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t20.nounderstand
SAY @797
= @798
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t20.brighter
SAY @799
IF ~~ + t20.plainly2
END

IF ~~ t20.changes
SAY @800
IF ~~ + t20.plainly2
END

// LT42

IF WEIGHT #-79 ~Global("PGNaliaLoveTalk","GLOBAL",42) Global("PGNaliaRomanceActive","GLOBAL",1)~ t21
SAY @801
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",43) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t21.human
IF ~Race(Player1,HALF_ELF)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",43) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t21.halfelf
IF ~Race(Player1,ELF)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",43) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t21.elf
IF ~Race(Player1,DWARF)~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",43) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t21.dwarf
END

IF ~~ t21.human
SAY @802
 ++ @803 + t21.destiny
++ @804 + t21.glue
++ @805 + t21.shorttime
++ @806 + t21.blight
++ @807 + t21.unique
END

IF ~~ t21.destiny
SAY @808
IF ~~ + t21.main2
END

IF ~~ t21.glue
SAY @809
IF ~~ + t21.main2
END

IF ~~ t21.shorttime
SAY @810
IF ~~ + t21.main2
END

IF ~~ t21.blight
SAY @811
IF ~~ + t21.main2
END

IF ~~ t21.unique
SAY @812
IF ~~ + t21.main2
END

IF ~~ t21.main2
SAY @813 
= @814 
= @815
++ @816 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t21.hopeless
++ @817 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",-1)~ + t21.legacy
++ @818 + t21.onepeople
++ @819 + t21.toophil
++ @820 + t21.conflict
END

IF ~~ t21.hopeless
SAY @821
IF ~~ EXIT
END

IF ~~ t21.legacy
SAY @822
IF ~~ EXIT
END

IF ~~ t21.onepeople
SAY @823
= @824
IF ~~ EXIT
END

IF ~~ t21.conflict
SAY @825
= @826
IF ~~ EXIT
END

IF ~~ t21.toophil
SAY @827
IF ~~ EXIT
END

IF ~~ t21.halfelf
SAY @828 
= @829
++ @830 + t21.human2
++ @831 + t21.elven
++ @832 + t21.neither
++ @833 + t21.why
++ @834 + t21.leaveme
END

IF ~~ t21.why
SAY @835 
= @836
++ @837 + t21.thebest
++ @838 + t21.mostdifficult
++ @839 + t21.respect
++ @840 + t21.pig
++ @841 + t21.gorion
END

IF ~~ t21.thebest
SAY @842
IF ~~ + t21.doubt2
END

IF ~~ t21.mostdifficult
SAY @843
IF ~~ EXIT
END

IF ~~ t21.leaveme
SAY @844
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t21.neither
SAY @845
++ @839 + t21.respect
++ @846 + t21.perhaps
++ @847 + t21.havetime
END

IF ~~ t21.elven
SAY @848 
++ @849 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t21.understood
++ @850 + t21.doubt
++ @840 + t21.pig
++ @851 + t21.likethat
END

IF ~~ t21.understood
SAY @852
IF ~~ EXIT
END

IF ~~ t21.doubt
SAY @853
IF ~~ + t21.doubt2
END

IF ~~ t21.doubt2
SAY @854
IF ~~ EXIT
END

IF ~~ t21.pig
SAY @855
= @856
IF ~~ EXIT
END

IF ~~ t21.likethat
SAY @857
IF ~~ + t21.doubt2
END

IF ~~ t21.human2
SAY @858
++ @839 + t21.respect
++ @859 + t21.perhaps
++ @847 + t21.havetime
++ @841 + t21.gorion
END

IF ~~ t21.respect
SAY @860
= @861
IF ~~ EXIT
END

IF ~~ t21.perhaps
SAY @862
IF ~~ EXIT
END

IF ~~ t21.havetime
SAY @863
IF ~~ EXIT
END

IF ~~ t21.gorion
SAY @864
= @861
IF ~~ EXIT
END

IF ~~ t21.dwarf
SAY @865
= @866
++ @867 + t21.monks
++ @868 + t21.claps
++ @869 + t21.paranoid
++ @870 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",2)~ + t21.stupid
END

IF ~~ t21.monks
SAY @871
IF ~~ + t21.main3
END

IF ~~ t21.paranoid
SAY @872
IF ~~ + t21.main3
END

IF ~~ t21.stupid
SAY @873
IF ~~ EXIT
END

IF ~~ t21.claps
SAY @874
= @875
= @876
++ @877 + t21.special
++ @878 + t21.ale
++ @879 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t21.stupid
++ @880 + t21.blow
END

IF ~~ t21.special
SAY @881
IF ~~ + t21.main3
END

IF ~~ t21.blow
SAY @882
= @883
IF ~~ EXIT
END

IF ~~ t21.main3
SAY @884
++ @885 + t21.ale
++ @886 + t21.barely
++ @887 + t21.damn
++ @888 + t21.prepared
END

IF ~~ t21.prepared
SAY @889
IF ~~ EXIT
END

IF ~~ t21.damn
SAY @890
= @891
IF ~~ EXIT
END

IF ~~ t21.barely
SAY @892
= @861
IF ~~ EXIT
END

IF ~~ t21.ale
SAY @893
= @894
IF ~~ EXIT
END

IF ~~ t21.elf
SAY @895
= @896
++ @849 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t21.understood
++ @859 + t21.perhaps
++ @830 + t21.human
++ @831 + t21.elven
++ @897 + t21.neither2
++ @833 + t21.why
++ @898 + t21.respect2
END

IF ~~ t21.neither2
SAY @899
= @900
++ @901 + t21.enjoyed
++ @902 + t21.disconnection
++ @898 + t21.respect2
++ @859 + t21.perhaps
++ @847 + t21.havetime
++ @841 + t21.gorion
END

IF ~~ t21.enjoyed
SAY @903
= @904
IF ~~ EXIT
END

IF ~~ t21.disconnection
SAY @905
IF ~~ EXIT
END

IF ~~ t21.respect2
SAY @860
= @906
IF ~~ EXIT
END

// LT44

IF WEIGHT #-78 ~Global("PGNaliaLoveTalk","GLOBAL",44) Global("PGNaliaRomanceActive","GLOBAL",1)~ t22
SAY @907
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",45) SetGlobal("PGNaliaRomanceActive","GLOBAL",2)
RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t22.1
END

IF ~~ t22.1
SAY @908 
= @909
++ @910 + t22.otherwise
++ @911 + t22.another
++ @912 + t22.somethingelse
++ @913 + t22.lasts
++ @914 + t22.destiny
++ @915 + t22.toyou
END

IF ~~ t22.otherwise
SAY @916
IF ~~ + t22.entice
END

IF ~~ t22.another
SAY @917
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3) SetGlobal("PCKeepOwner","GLOBAL",0)~ EXIT
END

IF ~~ t22.lasts
SAY @918
= @919
IF ~~ + t22.entice
END

IF ~~ t22.toyou
SAY @920
= @921
++ @922 DO ~SetGlobal("PGPCLovesNalia","GLOBAL",1)~ + t22.loveyou
++ @923 + t22.nonono
++ @924 + t22.nicegirl
++ @925 + t22.sensibleman
END

IF ~~ t22.sensibleman
SAY @926
= @927
= @928
IF ~~ + t22.whatnow
END

IF ~~ t22.destiny
SAY @929 
= @930
= @931
= @932
++ @933 + t22.somethingelse
++ @922 DO ~SetGlobal("PGPCLovesNalia","GLOBAL",1)~ + t22.loveyou
++ @934 + t22.somethingelse1
++ @935 + t22.nonono
++ @936 + t22.nicegirl
++ @937 + t22.predictions
END

IF ~~ t22.entice
SAY @938
++ @933 + t22.somethingelse
++ @922 DO ~SetGlobal("PGPCLovesNalia","GLOBAL",1)~ + t22.loveyou
++ @934 + t22.somethingelse1
++ @935 + t22.nonono
++ @936 + t22.nicegirl
++ @937 + t22.predictions
END

IF ~~ t22.predictions
SAY @939
= @940
IF ~~ EXIT
END

IF ~~ t22.nonono
SAY @941 
= @942
= @943
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",4)~ EXIT
END

IF ~~ t22.nicegirl
SAY @944
= @945 
IF ~~ + t22.whatnow
END

IF ~~ t22.somethingelse1
SAY @946
IF ~~ + t22.somethingelse
END

IF ~~ t22.somethingelse
SAY @947 
= @948 
= @949
IF ~~ + t22.whatnow
END

IF ~~ t22.loveyou
SAY @950 
= @951 
= @952
IF ~~ + t22.whatnow
END

IF ~~ t22.whatnow
SAY @953 
++ @954 + t22.thinking
++ @955 + t22.breezes
++ @956 + t22.thatsall
++ @957 + t22.else
END

IF ~~ t22.else
SAY @958 
IF ~~ + t22.thatsall
END

IF ~~ t22.thinking
SAY @959
IF ~~ EXIT
END

IF ~~ t22.breezes
SAY @960
IF ~~ EXIT
END

IF ~~ t22.thatsall
SAY @961
IF ~~ EXIT
END

// LT46

IF WEIGHT #-77 ~Global("PGNaliaLoveTalk","GLOBAL",46) Global("PGNaliaRomanceActive","GLOBAL",2)~ t23
SAY @962
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",47) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t23.1
END

IF ~~ t23.1
SAY @963
= @964
+ ~Class(Player1,PALADIN_ALL)~ + @965 + t23.paladin
+ ~!Class(Player1,PALADIN_ALL)~ + @966 + t23.youandme // + t23.noleader
++ @967 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",2)~ + t23.surprised
++ @968 + t23.pleaseyou
++ @969 + t23.asleep
++ @970 + t23.study
++ @971 + t23.hardway
+ ~NumInParty(2)~ + @972 + t23.youandme
END

IF ~~ t23.surprised
SAY @973
IF ~~ + t23.main2
END

IF ~~ t23.paladin
SAY @974
IF ~~ + t23.main2
END

IF ~~ t23.youandme
SAY @975
IF ~~ + t23.main2
END

IF ~~ t23.pleaseyou
SAY @976
IF ~~ + t23.main2
END

IF ~~ t23.asleep
SAY @977
IF ~~ + t23.main2
END

IF ~~ t23.study
SAY @978 IF ~~ + t23.main2
END

IF ~~ t23.hardway
SAY @979
IF ~~ + t23.main2
END

IF ~~ t23.main2
SAY @980
= @981
= @982
= @983 
= @984 
= @985
++ @986 + t23.needy
++ @987 + t23.sweet
++ @988 + t23.looked
++ @989 + t23.justaman
++ @990 + t23.tingling
++ @991 + t23.main3
END

IF ~~ t23.tingling
SAY @992
IF ~~ + t23.main3
END

IF ~~ t23.needy
SAY @993
IF ~~ + t23.main3
END

IF ~~ t23.sweet
SAY @994
IF ~~ + t23.main3
END

IF ~~ t23.looked
SAY @995
IF ~~ + t23.main3
END

IF ~~ t23.justaman
SAY @996
IF ~~ + t23.main3
END

IF ~~ t23.main3
SAY @997
= @998
++ @999 DO ~SetGlobal("PGPCLovesNalia","GLOBAL",1)~ + t23.love
++ @1000 + t23.contagious
++ @1001 + t23.short
++ @1002 + t23.comewhat
++ @1003 + t23.magic
END

IF ~~ t23.love
SAY @1004
IF ~~ EXIT
END

IF ~~ t23.contagious
SAY @1005 
IF ~~ EXIT
END

IF ~~ t23.short
SAY @1006 
IF ~~ EXIT
END

IF ~~ t23.comewhat
SAY @1007
= @709
IF ~~ EXIT
END

IF ~~ t23.magic
SAY @1008
= @1009
IF ~~ EXIT
END

// LT48

IF WEIGHT #-76 ~Global("PGNaliaLoveTalk","GLOBAL",48) Global("PGNaliaRomanceActive","GLOBAL",2)~ t24
SAY @1010
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",49) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t24.1
END

IF ~~ t24.1
SAY @1011
= @1012
= @1013
++ @1014 + t24.never
+ ~Global("PGPCLovesNalia","GLOBAL",1)~ + @1015 + t24.forgotten
++ @1016 + t24.temporary
++ @1017 + t24.cannot
++ @1018 + t24.natural
END

IF ~~ t24.never
SAY @1019 
= @1020
IF ~~ + t24.main2
END

IF ~~ t24.forgotten
SAY @1021
IF ~~ + t24.main2
END

IF ~~ t24.natural
SAY @1022
IF ~~ + t24.main2
END

IF ~~ t24.temporary
SAY @1023
= @1024
++ @1025 + t24.main2
++ @1026 + t24.main2
++ @1027 + t24.wounds
++ @1028 + t24.complicate
END

IF ~~ t24.wounds
SAY @1029
= @1030
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t24.complicate
SAY @1031
IF ~~ + t24.main2
END

IF ~~ t24.cannot
SAY @1032
= @1033
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t24.main2
SAY @1034 
= @1035
= @1036 
++ @1037 + t24.dangerous
++ @1038 + t24.complete
++ @1039 DO ~SetGlobal("PGPCLovesNalia","GLOBAL",1)~ + t24.main3
+ ~!Global("PGPCLovesNalia","GLOBAL",1)~ + @1040 + t24.cannot
+ ~!Global("PGPCLovesNalia","GLOBAL",1)~ + @1041 + t24.dontknow
END

IF ~~ t24.dangerous
SAY @1042
IF ~~ + t24.main3
END

IF ~~ t24.complete
SAY @1043
IF ~~ + t24.main3
END

IF ~~ t24.dontknow
SAY @1044
IF ~~ + t24.main3
END

IF ~~ t24.main3
SAY @1045 
= @1046
++ @1047 + t24.theirloss
++ @1048 + t24.soulmatetoo
++ @1049 + t24.change
++ @1050 + t24.constancy
END

IF ~~ t24.soulmatetoo
SAY @1051
= @1052
IF ~~ EXIT
END

IF ~~ t24.theirloss
SAY @1053
IF ~~ EXIT
END

IF ~~ t24.change
SAY @1054 IF ~~ EXIT
END

IF ~~ t24.constancy
SAY @1055
IF ~~ EXIT
END

// LT50

IF WEIGHT #-75 ~Global("PGNaliaLoveTalk","GLOBAL",50) Global("PGNaliaRomanceActive","GLOBAL",2)~ t25
SAY @1056
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",51) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t25.1
END

IF ~~ t25.1
SAY @1057
++ @1058 + t25.today
++ @1059 + t25.allspecial
++ @1060 + t25.fuel
++ @1061 + t25.old
++ @1062 + t25.future
END

IF ~~ t25.today
SAY @1063 
= @1064
IF ~~ + t25.main2
END

IF ~~ t25.allspecial
SAY @1065
IF ~~ + t25.main2
END

IF ~~ t25.fuel
SAY @1066
IF ~~ + t25.main2
END

IF ~~ t25.old
SAY @1067
IF ~~ + t25.main2
END

IF ~~ t25.future
SAY @1068
IF ~~ + t25.main2
END

IF ~~ t25.main2
SAY @1069
= @1070
= @1071
= @1072
= @1073
= @1074
++ @1075 + t25.different
++ @1076 + t25.understand
++ @1077 + t25.stick
++ @1078 + t25.inside
++ @1079 + t25.mostimportant
++ @1080 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t25.getover
END

IF ~~ t25.different
SAY @1081 
IF ~~ + t25.main3
END

IF ~~ t25.understand
SAY @1082 
= @1083
IF ~~ + t25.main3
END

IF ~~ t25.stick
SAY @1084
IF ~~ + t25.main3
END

IF ~~ t25.inside
SAY @1085
IF ~~ + t25.main3
END

IF ~~ t25.getover
SAY @1086
IF ~~ + t25.main3
END

IF ~~ t25.main3
SAY @1087
++ @1088 + t25.fondly
++ @1089 + t25.letsnot
++ @1090 + t25.tragedy
++ @1091 + t25.mostimportant
++ @1092 + t25.clearly
END

IF ~~ t25.fondly
SAY @1093
IF ~~ + t25.main4
END

IF ~~ t25.letsnot
SAY @1094
= @1095
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t25.mostimportant
SAY @1096
= @1097
IF ~~ + t25.main4
END

IF ~~ t25.tragedy
SAY @1098
IF ~~ + t25.main4
END

IF ~~ t25.main4
SAY @1099
IF ~~ EXIT
END

IF ~~ t25.clearly
SAY @1100
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

// LT52

IF WEIGHT #-74 ~Global("PGNaliaLoveTalk","GLOBAL",52) Global("PGNaliaRomanceActive","GLOBAL",2)~ t26
SAY @1101
++ @1102 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",53)~ + t26.main2
++ @1103 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",53)~ + t26.wake
++ @1104 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",53)~ + t26.main2
++ @1105 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",53)~ + t26.pale
END

IF ~~ t26.wake
SAY @1106
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t26.pale
SAY @1107
IF ~~ + t26.main2
END

IF ~~ t26.main2
SAY @1108 
= @1109
= @1110
++ @1111 + t26.verygood
++ @1112 + t26.verygood
++ @1113 + t26.knowbest
++ @1114 + t26.called
++ @1115 + t26.trembling
END

IF ~~ t26.knowbest
SAY @1116
IF ~~ + t26.night
END

IF ~~ t26.verygood
SAY @1117
IF ~~ + t26.night
END

IF ~~ t26.called
SAY @1118
IF ~~ + t26.night
END

IF ~~ t26.trembling
SAY @1119
IF ~~ + t26.night
END

IF ~~ t26.night
SAY @1120
IF ~~ DO ~RestParty()~ EXIT
END

// LT54

IF WEIGHT #-73 ~Global("PGNaliaLoveTalk","GLOBAL",54) Global("PGNaliaRomanceActive","GLOBAL",2)~ t27
SAY @1121
++ @1122 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",55)~ + t27.main2
++ @1123 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",55)~ + t27.attack
++ @1124 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",55)~ + t27.main2
++ @1125 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",55)~ + t27.main2
END

IF ~~ t27.attack
SAY @1126
IF ~~ + t27.main2
END

IF ~~ t27.main2
SAY @1127 
++ @1128 + t27.immediately
++ @1129 + t27.here
++ @1130 + t27.collect
++ @1131 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t27.collect
++ @1132 + t27.immediately2
END

IF ~~ t27.immediately
SAY @709
IF ~~ + t27.immediately2
END

IF ~~ t27.immediately2
SAY @1133
IF ~~ EXIT
END

IF ~~ t27.here
SAY @1134
IF ~~ + t27.immediately2
END

IF ~~ t27.collect
SAY @1135
++ @1136 + t27.here
++ @1137 + t27.forget
++ @1138 + t27.understand
END

IF ~~ t27.understand
SAY @1139
IF ~~ EXIT
END

IF ~~ t27.forget
SAY @1140 
= @1141
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ EXIT
END

// LT56

IF WEIGHT #-72 ~Global("PGNaliaLoveTalk","GLOBAL",56) Global("PGNaliaRomanceActive","GLOBAL",2)~ t28
SAY @1142
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",59) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t28.1
END

IF ~~ t28.1
SAY @1143
= @1144
++ @1145 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC1a")~ EXIT
++ @1146 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC1a")~ EXIT
++ @1147 + t28.important
++ @1148 + t28.important
END

IF ~~ t28.important
SAY @1149
= @1150
++ @1151 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC1a")~ EXIT
++ @1152 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",3)~ + t28.anywhere
++ @1153 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",2)~ + t28.games
++ @1154 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",-1) ClearAllActions() StartCutSceneMode() StartCutScene("PGNalC1a")~ EXIT
END

IF ~~ t28.games
SAY @1155
IF ~~ EXIT
END

// LT56a

IF WEIGHT #-71 ~Global("PGNaliaLT65Nookie","GLOBAL",1)~ t28a
SAY @1156
IF ~~ DO ~SetGlobal("PGNaliaLT65Nookie","GLOBAL",2)~ + t28a.1
END

IF ~~ t28a.1
SAY @1157
= @1158
= @1159
++ @1160 + t28a.come
++ @1161 + t28a.courtship
++ @1162 + t28a.evil
++ @1163 + t28a.comfortable
END

IF ~~ t28a.courtship
SAY @1164
= @1165
++ @1166 + t28a.come
++ @1167 + t28a.come
++ @1168 + t28a.comfortable
END

IF ~~ t28a.evil
SAY @1169 
= @1170
++ @1171 + t28a.rend
++ @1172 + t28a.come
++ @1173 + t28a.rend
++ @1174 + t28a.come
END

IF ~~ t28a.rend
SAY @1175 
= @1176
= @1177
++ @1167 + t28a.come
++ @1168 + t28a.comfortable
END

IF ~~ t28a.comfortable
SAY @1178
IF ~~ DO ~SetGlobal("PGNaliaLT65Nookie","GLOBAL",4)~ EXIT
END

IF ~~ t28a.come
SAY @1179
IF ~~ DO ~SetGlobal("PGNaliaNookie","GLOBAL",1) RestParty()~ EXIT
END

// LT56b

IF WEIGHT #-70 ~Global("PGNaliaLT65Nookie","GLOBAL",3)~ t28b
SAY @1180
++ @1181 DO ~SetGlobal("PGNaliaLT65Nookie","GLOBAL",4)~ + t28b.looking
++ @1182 DO ~SetGlobal("PGNaliaLT65Nookie","GLOBAL",4)~ + t28b.gown
++ @1183 DO ~SetGlobal("PGNaliaLT65Nookie","GLOBAL",4)~ + t28b.coronet
++ @1184 DO ~SetGlobal("PGNaliaLT65Nookie","GLOBAL",4)~ + t28b.races
++ @1185 DO ~SetGlobal("PGNaliaLT65Nookie","GLOBAL",4)~ + t28b.wore
++ @1186 DO ~SetGlobal("PGNaliaLT65Nookie","GLOBAL",4)~ + t28b.yes
END

IF ~~ t28b.looking
SAY @1187 
= @1188
IF ~~ + t28b.main2
END

IF ~~ t28b.verywell
SAY @1189
IF ~~ EXIT
END

IF ~~ t28b.gown
SAY @1190 
= @1191
= @1192
IF ~~ + t28b.main2
END

IF ~~ t28b.coronet
SAY @1193 
= @1194
IF ~~ + t28b.main2
END

IF ~~ t28b.races
SAY @1195
++ @1196 + t28b.anyone
++ @1197 + t28b.ashamed
++ @1198 + t28b.seconds
++ @1199 + t28b.somuch
END

IF ~~ t28b.anyone
SAY @1200
IF ~~ + t28b.now
END

IF ~~ t28b.somuch
SAY @1201 
= @1202
IF ~~ + t28b.main2
END

IF ~~ t28b.wore
SAY @1203
IF ~~ + t28b.main2
END

IF ~~ t28b.yes
SAY @1204
++ @1205 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t28b.verywell
++ @1206 + t28b.comfortable
++ @1207 DO ~SetGlobal("PGPCLovesNalia","GLOBAL",1)~ + t28b.love
++ @1208 + t28b.seconds
++ @1197 + t28b.ashamed
END

IF ~~ t28b.main2
SAY @1209
++ @1206 + t28b.comfortable
++ @1207 DO ~SetGlobal("PGPCLovesNalia","GLOBAL",1)~ + t28b.love
++ @1208 + t28b.seconds
++ @1197 + t28b.ashamed
END

IF ~~ t28b.seconds
SAY @1210
= @1211
= @1212
IF ~~ EXIT
END

IF ~~ t28b.comfortable
SAY @1213 
= @1214
IF ~~ + t28b.now
END

IF ~~ t28b.love
SAY @1215
IF ~~ + t28b.now
END

IF ~~ t28b.ashamed
SAY @1216
= @1217
++ @1218 + t28b.carefor
++ @1219 + t28b.aunty
++ @1220 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t28b.leadme
++ @1221 + t28b.notright
END

IF ~~ t28b.carefor
SAY @1222
= @1223
IF ~~ + t28b.now
END

IF ~~ t28b.leadme
SAY @1224
IF ~~ EXIT
END

IF ~~ t28b.aunty
SAY @1225
= @1226 
IF ~~ EXIT
END

IF ~~ t28b.notright
SAY @1227 
= @1228
IF ~~ DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t28b.now
SAY @1229
IF ~~ EXIT
END

// LT60

IF WEIGHT #-69 ~Global("PGNaliaLoveTalk","GLOBAL",60) Global("PGNaliaRomanceActive","GLOBAL",2)~ t30
SAY @1230
IF ~~ DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",61) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t30.1
END

IF ~~ t30.1
SAY @1231
++ @1232 + t30.answered
++ @1233 + t30.free
++ @1234 + t30.survive
++ @1235 + t30.smarter
++ @1236 + t30.eachother
END

IF ~~ t30.answered
SAY @1237
IF ~~ + t30.main2
END

IF ~~ t30.free
SAY @1238
= @1239
IF ~~ + t30.main2
END

IF ~~ t30.survive
SAY @1240
IF ~~ + t30.main2
END

IF ~~ t30.smarter
SAY @1241
IF ~~ + t30.main2
END

IF ~~ t30.eachother
SAY @1242
IF ~~ + t30.main2
END

IF ~~ t30.main2
SAY @1243
= @1244
= @1245
= @1246
= @1247
++ @1248 + t30.butme
++ @1249 + t30.feltlove
+ ~Global("PGNaliaNookie","GLOBAL",1)~ + @1250 + t30.newlovenookie
+ ~Global("PGNaliaNookie","GLOBAL",0)~ + @1250 + t30.main3
++ @1251 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",3)~ + t30.learn
++ @1252 + t30.charming
END

IF ~~ t30.butme
SAY @1253
= @1254
IF ~~ + t30.main3
END

IF ~~ t30.feltlove
SAY @1255
IF ~~ + t30.main3
END

IF ~~ t30.learn
SAY @1256
IF ~~ EXIT
END

IF ~~ t30.charming
SAY @1257
IF ~~ + t30.main3
END

IF ~~ t30.newlovenookie
SAY @1258
IF ~~ + t30.main3
END

IF ~~ t30.main3
SAY @1259
= @1260
= @1261
++ @1262 + t30.goodbyes
++ @1263 + t30.ofcourse
++ @1264 + t30.eachother2
++ @1265 + t30.guarantee
++ @1266 + t30.alone
END

IF ~~ t30.goodbyes
SAY @1267 
= @1268
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ EXIT
END

IF ~~ t30.ofcourse
SAY @1269
= @1270
IF ~~ EXIT
END

IF ~~ t30.eachother2
SAY @1271
= @1272
IF ~~ EXIT
END

IF ~~ t30.guarantee
SAY @1273
IF ~~ EXIT
END

IF ~~ t30.alone
SAY @1274
IF ~~ EXIT
END

// LT62

IF WEIGHT #-68 ~Global("PGNaliaLoveTalk","GLOBAL",62) Global("PGNaliaRomanceActive","GLOBAL",2)~ t31
SAY @1275
++ @1276 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",63) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t31.sweep
++ @1277 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",63) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t31.phil
++ @1278 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",63) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t31.fellfor
++ @1279 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",63) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t31.freewheeling
++ @1280 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",63) RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",2700)~ + t31.caresabout
END

IF ~~ t31.caresabout
SAY @1281
IF ~~ + t31.mainno
END

IF ~~ t31.freewheeling
SAY @1282
++ @1283 + t31.trouble
++ @1284 + t31.isaea
++ @1285 + t31.stoptalking
+ ~Global("PGNaliaNookie","GLOBAL",0)~ + @1286 + t31.timeright
+ ~Global("PGNaliaNookie","GLOBAL",1)~ + @1287 + t31.canttell2
END

IF ~~ t31.canttell2
SAY @1288
= @1289
++ @1290 + t31.onesided
++ @1291 + t31.stoptalking
++ @1292 + t31.wekiss
END

IF ~~ t31.wekiss
SAY @1293
IF ~~ EXIT
END

IF ~~ t31.timeright
SAY @1294
IF ~~ EXIT
END

IF ~~ t31.phil
SAY @1295
= @1296
++ @1297 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t31.notopen
+ ~Global("PGNaliaNookie","GLOBAL",0)~ + @1298 + t31.afraid
+ ~Global("PGNaliaNookie","GLOBAL",1)~ + @1299 + t31.canttell
++ @1284 + t31.isaea
++ @1300 + t31.notime
++ @1301 + t31.trouble
END

IF ~~ t31.fellfor
SAY @1302 = @1303
IF ~~ + t31.mainno
END

IF ~~ t31.sweep
SAY @1304
IF ~~ + t31.mainno
END

IF ~~ t31.mainno
SAY @1305
= @1306
++ @1297 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t31.notopen
+ ~Global("PGNaliaNookie","GLOBAL",0)~ + @1298 + t31.afraid
+ ~Global("PGNaliaNookie","GLOBAL",1)~ + @1299 + t31.canttell
++ @1284 + t31.isaea
++ @1300 + t31.notime
++ @1301 + t31.trouble
END

IF ~~ t31.trouble
SAY @1307
++ @1308 + t31.troubled2
++ @1309 + t31.natural
++ @1310 + t31.compare
++ @1311 + t31.jealousy
++ @1312 + t31.good
END

IF ~~ t31.compare
SAY @1313
= @1314
IF ~~ EXIT
END

IF ~~ t31.troubled2
SAY @1315
++ @1285 + t31.stoptalking
+ ~Global("PGNaliaNookie","GLOBAL",1)~ + @1316 + t31.first
+ ~Global("PGNaliaNookie","GLOBAL",0)~ + @1317 + t31.first
++ @1318 + t31.onesided
END

IF ~~ t31.natural
SAY @1319
IF ~~ + t31.never
END

IF ~~ t31.jealousy
SAY @1320
++ @1321 + t31.good
++ @1322 + t31.jealous3
++ @1323 + t31.wekiss
++ @1324 + t31.natural
END

IF ~~ t31.jealous3
SAY @1325
= @1326
IF ~~ EXIT
END

IF ~~ t31.good
SAY @1327
= @1328
IF ~~ EXIT
END

IF ~~ t31.notime
SAY @1329
= @1330
= @1331
= @1332
++ @1333 + t31.aswell
++ @1334 + t31.ballroom
++ @1335 + t31.prigs
++ @1336 + t31.journal
END

IF ~~ t31.aswell
SAY @1337
IF ~~ EXIT
END

IF ~~ t31.ballroom
SAY @1338
= @1339
IF ~~ EXIT
END

IF ~~ t31.prigs
SAY @1340
= @1341
= @1342
= @1339
IF ~~ EXIT
END

IF ~~ t31.journal
SAY @1343
IF ~~ EXIT
END

IF ~~ t31.isaea
SAY @1344
= @1345
IF ~~ + t31.never
END

IF ~~ t31.notopen
SAY @1346
IF ~~ EXIT
END

IF ~~ t31.afraid
SAY @1347
= @1348
++ @1285 + t31.stoptalking
+ ~Global("PGNaliaNookie","GLOBAL",1)~ + @1316 + t31.first
+ ~Global("PGNaliaNookie","GLOBAL",0)~ + @1317 + t31.first
++ @1349 + t31.onesided
END

IF ~~ t31.unready
SAY @1350
IF ~~ EXIT
END

IF ~~ t31.first
SAY @1351
IF ~~ + t31.never
END

IF ~~ t31.onesided
SAY @1352
IF ~~ + t31.first
END

IF ~~ t31.canttell
SAY @1353
++ @1290 + t31.onesided
++ @1291 + t31.stoptalking
++ @1354 + t31.disappointed
END

IF ~~ t31.never
SAY @1355
= @1356 
++ @1357 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",2)~ + t31.arms
++ @1358 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t31.sound
++ @1359 + t31.forget
++ @1360 + t31.together
END

IF ~~ t31.together
SAY @1361
= @1362
IF ~~ EXIT
END

IF ~~ t31.sound
SAY @1363
= @1364
IF ~~ EXIT
END

IF ~~ t31.forget
SAY @1365
IF ~~ EXIT
END

IF ~~ t31.arms
SAY @1366
IF ~~ + t31.sound
END

IF ~~ t31.disappointed
SAY @1367
= @1368
++ @1369 + t31.cute
++ @1370 + t31.details
++ @1371 + t31.exhilarating
END

IF ~~ t31.exhilarating
SAY @1372
IF ~~ EXIT
END

IF ~~ t31.cute
SAY @1373
IF ~~ EXIT
END

IF ~~ t31.details
SAY @1374
IF ~~ EXIT
END

IF ~~ t31.unready
SAY @1375
= @1376
IF ~~ EXIT
END

IF ~~ t31.stoptalking
SAY @1377
IF ~~ EXIT
END

// LT64

IF WEIGHT #-67 ~Global("PGNaliaLoveTalk","GLOBAL",64) Global("PGNaliaRomanceActive","GLOBAL",2)~ t32
SAY @1378
++ @1379 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",65)~ + t32.win
++ @1380 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",65)~ + t32.color
++ @1381 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",65)~ + t32.chance
++ @1382 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",65)~ + t32.playtowin
++ @1383 DO ~SetGlobal("PGNaliaLoveTalk","GLOBAL",65)~ + t32.main2
END

IF ~~ t32.playtowin
SAY @1384
++ @1385 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",2)~ + t32.main2
++ @1386 + t32.understand
++ @1387 + t32.understand
++ @1388 + t32.main2
END

IF ~~ t32.understand
SAY @1389
IF ~~ + t32.main2
END

IF ~~ t32.chance
SAY @1390
++ @1391 + t32.fate
++ @1392 + t32.howitis
++ @1393 + t32.keepusalive
END

IF ~~ t32.fate
SAY @1394
IF ~~ + t32.main2
END

IF ~~ t32.keepusalive
SAY @1395
IF ~~ + t32.main2
END

IF ~~ t32.howitis
SAY @1396
IF ~~ + t32.main2
END

IF ~~ t32.win
SAY @1397
++ @1398 + t32.strategic
++ @1399 + t32.main2
++ @1400 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ + t32.strong
END

IF ~~ t32.strategic
SAY @1401
IF ~~ + t32.main2
END

IF ~~ t32.strong
SAY @1402
IF ~~ + t32.main2
END

IF ~~ t32.color
SAY @1403
++ @1404 + t32.main2
++ @1405 + t32.purple
++ @1406 + t32.hazel
++ @1407 + t32.black
++ @1408 + t32.lighten
END

IF ~~ t32.hazel
SAY @1409
= @1410
IF ~~ + t32.main2
END

IF ~~ t32.lighten
SAY @1411
IF ~~ + t32.main2
END

IF ~~ t32.black
SAY @1412
= @1413
IF ~~ + t32.main2
END

IF ~~ t32.purple
SAY @1414
IF ~~ + t32.main2
END

IF ~~ t32.main2
SAY @1415
= @1416
= @1417
= @1418
= @1419
++ @1420 + t32.counton
++ @1421 + t32.nogetting
++ @1422 + t32.thankyou
++ @1423 + t32.goodtimes
END

IF ~~ t32.counton
SAY @1424
IF ~~ + t32.main3
END

IF ~~ t32.thankyou
SAY @1425
IF ~~ + t32.main3
END

IF ~~ t32.goodtimes
SAY @1426
IF ~~ + t32.main3
END

IF ~~ t32.nogetting
SAY @1427
IF ~~ + t32.main3
END

IF ~~ t32.main3
SAY @1428
= @1429
IF ~Global("PCKEEPOWNER","GLOBAL",1) GlobalLT("KPREVOLT","GLOBAL",3)~ + t32.X
IF ~Global("PCKEEPOWNER","GLOBAL",1) GlobalGT("KPREVOLT","GLOBAL",2)~ + t32.Y
END

IF ~~ t32.X
SAY @1430
IF ~~ + t32.z
END

IF ~~ t32.Y
SAY @1431
IF ~~ + t32.z
END

IF ~~ t32.z
SAY @1432
++ @1433 + t32.forever
++ @1434 + t32.roll
++ @1435 + t32.forever
++ @1436 + t32.lucky
END

IF ~~ t32.forever
SAY @1437
IF ~~ EXIT
END

IF ~~ t32.roll
SAY @1438
IF ~~ EXIT
END

IF ~~ t32.lucky
SAY @1439
IF ~~ EXIT
END

END




// NALIA ROMANCE CONFLICTS

// NALIA IS INTERRUPTED

// 4. 

CHAIN JAHEIRAJ t4.jae
@1440
== NALIAJ @1441 
== JAHEIRAJ @1442
== NALIAJ @1443
END
IF ~~ EXTERN NALIAJ t4.interrupt

CHAIN VICONIJ t4.vic
@1444 
== VICONIJ @1445
== NALIAJ @1446 
== VICONIJ @1447
== NALIAJ @1448
END
IF ~~ EXTERN NALIAJ t4.interrupt

// 5.

CHAIN AERIEJ t5.aer
@1449
== NALIAJ @1450 
== AERIEJ @1451
== NALIAJ @1452
END
IF ~~ EXTERN NALIAJ t5.always

CHAIN JAHEIRAJ t5.jae
@1453
== NALIAJ @1454 
== JAHEIRAJ @1455
== NALIAJ @1456
END
IF ~~ EXTERN NALIAJ t5.always

CHAIN VICONIJ t5.vic
@1457
== NALIAJ @1458 
== VICONIJ @1459
== NALIAJ @1460
END
IF ~~ EXTERN NALIAJ t5.always2

// 7.

CHAIN AERIEJ t7.aer
@1461
== NALIAJ @1462 
== AERIEJ @1463 
== NALIAJ @1464
END
++ @184 EXTERN NALIAJ t7.short
++ @185 EXTERN NALIAJ t7.damsel
++ @186 EXTERN NALIAJ t7.escape
++ @187 EXTERN NALIAJ t7.harmed
++ @188 EXTERN NALIAJ t7.costyou

CHAIN VICONIJ t7.vic
@1465 
== VICONIJ @1466
== NALIAJ @1467 
== NALIAJ @1468
== VICONIJ @1469
== NALIAJ @1470
END
++ @184 EXTERN NALIAJ t7.short
++ @185 EXTERN NALIAJ t7.damsel
++ @186 EXTERN NALIAJ t7.escape
++ @187 EXTERN NALIAJ t7.harmed
++ @188 EXTERN NALIAJ t7.costyou

// 10.

CHAIN VICONIJ t10.vic
@1471
== NALIAJ @1472 
== VICONIJ @1473
== NALIAJ @1474
== VICONIJ @1475
== NALIAJ @1476
END
IF ~~ EXTERN NALIAJ t10.main

CHAIN AERIEJ t10.aer
@1477
== NALIAJ @1478 
== AERIEJ @1479
== NALIAJ @1480
== AERIEJ @1481
== NALIAJ @1482
== NALIAJ @1483
END
IF ~~ EXTERN NALIAJ t10.main

// 11.

CHAIN JAHEIRAJ t11.jae
@1484 
= @1485
== NALIAJ @1486 
== NALIAJ @1487
== JAHEIRAJ @1488
== NALIAJ @1489
== JAHEIRAJ @1490
== NALIAJ @1491
END
IF ~~ EXTERN NALIAJ t11.always

CHAIN IMOEN2J t11.im
@1492
== NALIAJ @1493
END
IF ~~ EXTERN NALIAJ t11.main
IF ~Global("PGNaliaTellMeFirstLT22","LOCALS",2)~ EXIT

// 12.

CHAIN JAHEIRAJ t12.jae
@1494
== NALIAJ @1495 
== NALIAJ @1496
== JAHEIRAJ @1497
== NALIAJ @1498
== JAHEIRAJ @1499
== NALIAJ @1500
END
++ @1501 EXTERN JAHEIRAJ t12.jaheira-choose
++ @1502 EXTERN JAHEIRAJ t12.jaheira-suffocate
++ @1503 EXTERN NALIAJ t12.nalia-clingy
++ @1504 EXTERN NALIAJ t12.nalia-have

CHAIN JAHEIRAJ t12.jaheira-choose
@1505 
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ 
END
IF ~~ EXTERN NALIAJ t12.nalia-2

CHAIN JAHEIRAJ t12.jaheira-suffocate
@1506 
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ 
END
IF ~~ EXTERN NALIAJ t12.nalia-2

CHAIN NALIAJ t12.nalia-clingy
@1507
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ 
EXIT

CHAIN NALIAJ t12.nalia-have
@1508 
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ 
EXIT

CHAIN NALIAJ t12.nalia-2
@1509
END
++ @435 EXTERN NALIAJ t12.main
++ @436 EXTERN NALIAJ t12.ignoring
++ @437 EXTERN NALIAJ t12.rude
++ @438 EXTERN NALIAJ t12.willanswer



// NALIA INTERRUPTS

// Viconia 1

EXTEND_BOTTOM BVICONI 31
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN EXTERN NALIAJ vic1
END

CHAIN NALIAJ vic1
@1510
== BVICONI @1511
== NALIAJ @1512
== BVICONI @1513
== BVICONI @1514
END
COPY_TRANS BVICONI 31 

// Viconia 2

EXTEND_BOTTOM BVICONI 32
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN EXTERN NALIAJ vic2
END

CHAIN NALIAJ vic2
@1515
== BVICONI @1516
== NALIAJ @1517
== BVICONI @1518
END
++ @1519 EXTERN BVICONI 178 
++ #56347 EXTERN BVICONI 179

// Viconia 3

EXTEND_BOTTOM BVICONI 62
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN EXTERN NALIAJ vic3
END

CHAIN NALIAJ vic3
@1520
== BVICONI @1521
== NALIAJ @1522 
== NALIAJ @1523
== BVICONI @1524
== NALIAJ @1525
== BVICONI @1526
END
++ #56354 /* ~You treat everyone else like dirt, why should I be any different?~ */ EXTERN BVICONI 209
++ #56355 /* ~Don't worry about it, Viconia.~ */ EXTERN BVICONI 209
++ #56356 /* ~Don't make me laugh. You're a bitch, plain and simple. Now get lost.~ */ EXTERN BVICONI 211

// Viconia 4, final

EXTEND_BOTTOM BVICONI 93
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN EXTERN NALIAJ vic4
END

CHAIN NALIAJ vic4
@1527
= @1528
== NALIAJ @1529
== BVICONI @1530
== BVICONI @1531
== NALIAJ @1532
== BVICONI @1533
== NALIAJ @1534
== BVICONI @1535
END
++ @1536 EXTERN NALIAJ vic4.nalia-back
++ @1537 EXTERN NALIAJ vic4.nalia-understand
++ @1538 EXTERN BVICONI vic4.viconia-poodle
++ @1539 EXTERN BVICONI vic4.viconia-poodle 

CHAIN BVICONI vic4.viconia-poodle
@1540
DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ 
EXIT

CHAIN NALIAJ vic4.nalia-back
@1541
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ 
END
IF ~~ EXTERN BVICONI 566

CHAIN NALIAJ vic4.nalia-understand
@1542
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~ 
END
IF ~~ EXTERN BVICONI 566

// Jaheira 1

EXTEND_BOTTOM BJAHEIR 162
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN EXTERN NALIAJ jae1
END

CHAIN NALIAJ jae1
@1543
== BJAHEIR @1544
== NALIAJ @1545
== BJAHEIR @1546
== BJAHEIR @1547
END
COPY_TRANS BJAHEIR 162

// Jaheira 2

EXTEND_BOTTOM BJAHEIR 188
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN EXTERN NALIAJ jae2
END

CHAIN NALIAJ jae2
@1548
== BJAHEIR @1549
== NALIAJ @1550
== BJAHEIR @1551
END
IF ~~ EXTERN BJAHEIR 189

// Aerie 1

EXTEND_BOTTOM BAERIE 130
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN EXTERN NALIAJ aer1
END

CHAIN NALIAJ aer1
@1552
== BAERIE @1553
== NALIAJ @1554
== BAERIE @1555
== NALIAJ @1556
== BAERIE @1557
END
++ #56260 /* ~I don't think your scars make you ugly, Aerie. Far from it.~ */ EXTERN BAERIE 131
++ #56262 /* ~It would take far more than a couple of scars to hide all the other beauty you possess, Aerie.~ */ EXTERN BAERIE 131
++ #56263 /* ~I have no time to discuss your vanity, Aerie.~ */ EXTERN BAERIE 135
++ @1558 EXTERN BAERIE 421

// Aerie 2

EXTEND_BOTTOM BAERIE 167
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN EXTERN NALIAJ aer2
END

CHAIN NALIAJ aer2
@1559
== BAERIE @1560
== NALIAJ @1561
== BAERIE @1562
END
++ #56279 /* ~I have been traveling since I left Candlekeep many, many months ago.~ */ EXTERN BAERIE 168
++ #56280 /* ~I am not interested in discussing my travels, Aerie.~ */ EXTERN BAERIE 172
++ #56281 /* ~Listen, Aerie... if you want to whine about your difficulties, do it somewhere else.~ */ EXTERN BAERIE 173

// Aerie 3

EXTEND_BOTTOM BAERIE 201
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN EXTERN NALIAJ aer3
END

CHAIN NALIAJ aer3
@1563
== BAERIE @1564
== NALIAJ @1565
== NALIAJ @1566
== BAERIE @1567
== BAERIE @1568
END
++ #56288 /* ~Life down here isn't so wretched, Aerie.~ */ EXTERN BAERIE 202
++ #56289 /* ~Well, you're going to have to accept it, Aerie. You're going to have to find the strength to face up to it.~ */ EXTERN BAERIE 203
++ #56290 /* ~Don't say that...we'll find some way to restore your wings, I promise!~ */ EXTERN BAERIE 206
++ #56291 /* ~If you continue to act so weak and maudlin, then I agree...you'll never survive.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXTERN BAERIE 210

// Aerie 4, final

EXTEND_BOTTOM BAERIE 233
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("PGNaliaRomanceActive","GLOBAL",1)~ THEN EXTERN NALIAJ aer4
END

CHAIN NALIAJ aer4
@1569
== BAERIE @1570
== NALIAJ @1571
== BAERIE @1572
== BAERIE @1573
== NALIAJ @1574
== BAERIE @1575
== NALIAJ @1576 
== NALIAJ @1577 
END
++ @1578 EXTERN NALIAJ aer4.nalia-stops
++ @1579 EXTERN NALIAJ aer4.nalia-wants
++ @1580 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",2)~ EXTERN BAERIE aer4.aerie-hysterical
++ @1581 EXTERN BAERIE aer4.aerie-hear

CHAIN NALIAJ aer4.nalia-stops
@1582
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~
END
IF ~~ EXTERN BAERIE 434

CHAIN NALIAJ aer4.nalia-wants
@1583
DO ~SetGlobal("PGNaliaRomanceActive","GLOBAL",3)~
END
IF ~~ EXTERN BAERIE 434

CHAIN BAERIE aer4.aerie-hysterical
@1584
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
Wait(2)
RestParty()~
EXIT

CHAIN BAERIE aer4.aerie-hear
@1585
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
RestParty()~
EXIT



// LT15: interjections

CHAIN JAHEIRAJ t15.jaheira
@1586
END
IF ~~ EXTERN NALIAJ t15.isee

CHAIN IMOEN2J t15.imoenhey
@1587
END
IF ~~ EXTERN NALIAJ t15.main2

// LT26: beggar

BEGIN PGNALBEG

CHAIN IF ~Global("PGNaliaBeggarLT26","GLOBAL",1)~ THEN PGNALBEG beggar1
@1588
== NALIAJ @1589 
== NALIAJ @1590
== PGNALBEG @1591 
== PGNALBEG @1592
DO ~SetGlobal("PGNaliaBeggarLT26","GLOBAL",2) EscapeArea()~
EXIT

// LT28: nookie reactions

CHAIN NALIAJ t28.anywhere
@1593
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @1594
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @1595
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @1596
== KORGANJ IF ~Race(Player1,DWARF) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @1597
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @1598
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @1599
== NALIAJ @1600
EXIT
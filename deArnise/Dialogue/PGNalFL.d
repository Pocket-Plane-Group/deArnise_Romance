APPEND NALIAJ

// Spying sequence

IF WEIGHT #-1 ~Global("PGNaliaSpyingReaction","GLOBAL",1)~ undress
SAY @0
++ @1 + u.main
++ @2 + u.main
++ @3 + u.company
END

IF ~~ u.company
SAY @4
IF ~~ + u.main
END

IF ~~ u.main
SAY @5
++ @6 + u.hey
+ ~Class(Player1,MAGE_ALL)~ + @7 + u.magehand
++ @8 + u.main2
++ @9 + u.away
END

IF ~~ u.hey
SAY @10
IF ~~ DO ~SetGlobal("PGNaliaSpyingReaction","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ u.magehand
SAY @11
IF ~~ DO ~SetGlobal("PGNaliaSpyingReaction","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ u.away
SAY @12
IF ~~ DO ~SetGlobal("PGNaliaSpyingReaction","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ u.main2
SAY @13
= @14
= @15
= @16
= @17
IF ~~ DO ~SetGlobal("PGNaliaSpyingReaction","GLOBAL",3) RestParty()~ EXIT
END



// Active=1 initiated flirts

IF WEIGHT #-1 ~Global("PGNaliaStartFlirtSOA","GLOBAL",1)
GlobalGT("PGNaliaLoveTalk","GLOBAL",12)
!GlobalGT("PGNaliaLoveTalk","GLOBAL",47)~ naliainitflirtbase1
SAY @18

 IF ~~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + naliathanks
IF ~RandomNum(22,1)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + naliaeyeing1
IF ~RandomNum(22,2)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + naliacomfort
IF ~RandomNum(22,3)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + naliadirt
IF ~RandomNum(22,4)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + nalialint
IF ~RandomNum(22,5) HPPercentLT("Nalia",50) ~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + mylowhp1
IF ~RandomNum(22,6)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + stopshort
IF ~RandomNum(22,7)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + veryfast
IF ~RandomNum(22,8)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + reminder
IF ~RandomNum(22,9) AreaType(DUNGEON)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + dungeon1
IF ~RandomNum(22,10)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + naliathanks
IF ~RandomNum(22,11)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + following1
IF ~RandomNum(22,12)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + yawn1
IF ~RandomNum(22,13)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + pain1
IF ~RandomNum(22,14)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + humming1
IF ~RandomNum(22,15) CheckStatGT(Player1,12,INT)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + highint1
IF ~RandomNum(22,16) HPPercentLT(Player1,75)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + pclowish_hp1
IF ~RandomNum(22,17) AreaType(FOREST)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + forest1
IF ~RandomNum(22,18) AreaType(CITY)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + city1
IF ~RandomNum(22,19) TimeOfDay(NIGHT)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + night1
IF ~RandomNum(22,20)
 OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + bar1
IF ~RandomNum(22,21)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + doubts1
IF ~RandomNum(22,22) GlobalGT("PGNaliaLoveTalk","GLOBAL",40)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + ward1

IF ~HPPercentLT(Player1,50) Global("PGNaliaDidPCLowHP","LOCALS",0)~ DO ~SetGlobal("PGNaliaDidPCLowHP","LOCALS",1) IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + pclowhp1
IF ~HPPercentLT("Nalia",50) Global("PGNaliaDidMyLowHP","LOCALS",0)~ DO ~SetGlobal("PGNaliaDidMyLowHP","LOCALS",1) IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + mylowhp1

IF ~GlobalGT("PGNaliaLoveTalk","GLOBAL",34) Global("PGNaliaDidPostIsaea","LOCALS",0)~ DO ~SetGlobal("PGNaliaDidPostIsaea","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + postisaea

IF ~Global("PGNaliaSpyingReaction","GLOBAL",3)~ DO ~SetGlobal("PGNaliaSpyingReaction","GLOBAL",4) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + postspying

// IF ~HPLT(Player1,15)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + lowhp1

END




// "Level 2" flirts

IF WEIGHT #-1
~Global("PGNaliaStartFlirtSOA","GLOBAL",1) 
GlobalGT("PGNaliaLoveTalk","GLOBAL",47)~ naliainitflirtbase2
SAY @19

IF ~~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + naliaeyeing2
IF ~RandomNum(22,1)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + naliaeyeing2
IF ~RandomNum(22,2)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + naliacomfort
IF ~RandomNum(22,3)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + naliabed
IF ~RandomNum(22,4)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + naliaring
IF ~RandomNum(22,5) HPPercentLT("Nalia",50) ~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + mylowhp1
IF ~RandomNum(22,6)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + stopshort
IF ~RandomNum(22,7)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + veryfast
IF ~RandomNum(22,8)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + flowerspell
IF ~RandomNum(22,9) AreaType(DUNGEON)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + dungeon1
IF ~RandomNum(22,10)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + pickpocket
IF ~RandomNum(22,11)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + following1
IF ~RandomNum(22,12)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + resting1
IF ~RandomNum(22,13)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + pain1
IF ~RandomNum(22,14)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + humming1
IF ~RandomNum(22,15)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + murmur1
IF ~RandomNum(22,16) CheckStatGT(Player1,14,STR)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + highstr1
IF ~RandomNum(22,17) AreaType(FOREST)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + forest2
IF ~RandomNum(22,18)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + shoulder2
IF ~RandomNum(22,19)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + night2
IF ~RandomNum(22,20)
 OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + bar1
IF ~RandomNum(22,21)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + doubts1
IF ~RandomNum(22,22) GlobalGT("PGNaliaLoveTalk","GLOBAL",40)~ DO ~IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + ward1

IF ~Global("PGNaliaDidLegFlash","LOCALS",0)~ DO ~SetGlobal("PGNaliaDidLegFlash","LOCALS",1) IncrementGlobal("PGNaliaRandFlirt","LOCALS",1) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + legflash

IF ~Global("PGNaliaSpyingReaction","GLOBAL",3)~ DO ~SetGlobal("PGNaliaSpyingReaction","GLOBAL",4) SetGlobal("PGNaliaStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",2700)~ + postspying

END



IF ~~ naliathanks
SAY @20
IF ~~ EXIT
END

IF ~~ naliaeyeing1
SAY @21
IF ~~ EXIT
END

IF ~~ naliaeyeing2
SAY @22
IF ~~ EXIT
END


IF ~~ naliacomfort
SAY @23
IF ~~ EXIT
END

IF ~~ naliadirt
SAY @24
IF ~~ EXIT
END

IF ~~ nalialint
SAY @25
IF ~~ EXIT
END

IF ~~ mylowhp1
SAY @26
IF ~RandomNum(2,1)~ + mylowhp1_a
IF ~RandomNum(2,2)~ + mylowhp1_b
END

IF ~~ mylowhp1_a
SAY @27
IF ~~ EXIT
END

IF ~~ mylowhp1_b
SAY @28
IF ~~ EXIT
END

IF ~~ stopshort
SAY @29
= @30
IF ~~ EXIT
END

IF ~~ veryfast
SAY @31
IF ~~ EXIT
END

IF ~~ reminder
SAY @32
= @33
IF ~~ EXIT
END

IF ~~ dungeon1
SAY @34
IF ~~ EXIT
END

IF ~~ following1
SAY @35
IF ~~ EXIT
END

IF ~~ yawn1
SAY @36
IF ~~ EXIT
END

IF ~~ pain1
SAY @37
IF ~~ EXIT
END

IF ~~ humming1
SAY @38
= @39
IF ~~ EXIT
END

IF ~~ highint1
SAY @40
= @41
IF ~~ EXIT
END

IF ~~ pclowish_hp1
SAY @42
= @43
IF ~~ EXIT
END

IF ~~ forest1
SAY @44
IF ~~ EXIT
END

IF ~~ city1
SAY @45
IF ~~ EXIT
END

IF ~~ night1
SAY @46
= @47
IF ~~ EXIT
END

IF ~~ postisaea
SAY @48
= @49
IF ~~ EXIT
END

IF ~~ bar1
SAY @50
= @51
IF ~~ EXIT
END

IF ~~ doubts1
SAY @52
= @53
IF ~~ EXIT
END

IF ~~ ward1
SAY @54
= @55
IF ~~ EXIT
END

IF ~~ pclowhp1
SAY @56
++ @57 + pclowhp1_a
++ @58 + pclowhp1_a
++ @59 + pclowhp1_a
++ @60 + pclowhp1_a
END

IF ~~ pclowhp1_a
SAY @61
IF ~~ EXIT
END

IF ~~ naliabed
SAY @62
IF ~~ EXIT
END

IF ~~ legflash
SAY @63
= @64
= @65
IF ~~ EXIT
END

IF ~~ naliaring
SAY @66
IF ~~ EXIT
END

IF ~~ flowerspell
SAY @67
= @68
IF ~~ EXIT
END

IF ~~ pickpocket
SAY @69
= @70
IF ~~ EXIT
END

IF ~~ resting1
SAY @71
= @72
IF ~~ EXIT
END

IF ~~ murmur1
SAY @73
IF ~~ EXIT
END

IF ~~ highstr1
SAY @74
= @75
IF ~~ EXIT
END

IF ~~ forest2
SAY @76
= @77
IF ~~ EXIT
END

IF ~~ shoulder2
SAY @78
IF ~~ EXIT
END

IF ~~ night2
SAY @79
= @80
= @81
IF ~~ EXIT
END



// PC-initiated flirts: Active=1

IF
~IsGabber(Player1)
Global("FWDisableFlirts","GLOBAL",0)
CombatCounter(0)
GlobalGT("PGNaliaLoveTalk","GLOBAL",12)
!GlobalGT("PGNaliaLoveTalk","GLOBAL",47)
!Global("PGNaliaNotSpeaking","GLOBAL",1)
OR(2)
Global("PGNaliaRomanceActive","GLOBAL",1)
Global("PGNaliaRomanceActive","GLOBAL",2)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~ naliaflirtbase1
SAY @82
= @83

+ ~RandomNum(4,1)~ + @84 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hug1
+ ~RandomNum(4,2)~ + @84 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hug2
+ ~RandomNum(4,3)~ + @84 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hug3
+ ~RandomNum(4,4)~ + @84 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hug4

+ ~RandomNum(4,1)~ + @85 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hairstroke1
+ ~RandomNum(4,2)~ + @85 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hairstroke1
+ ~RandomNum(4,3)~ + @85 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hairstroke2
+ ~RandomNum(4,4)~ + @85 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hairstroke3

+ ~RandomNum(4,1)~ + @86 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + shoulders1
+ ~RandomNum(4,2)~ + @86 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + shoulders2
+ ~RandomNum(4,3)~ + @86 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + shoulders3
+ ~RandomNum(4,4)~ + @86 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + shoulders4

+ ~RandomNum(4,1)~ + @87 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + face1
+ ~RandomNum(4,2)~ + @87 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + face1
+ ~RandomNum(4,3)~ + @87 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + face2
+ ~RandomNum(4,4)~ + @87 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + face3

+ ~RandomNum(4,1)~ + @88 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + goodfriend1
+ ~RandomNum(4,2)~ + @88 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + goodfriend2
+ ~RandomNum(4,3)~ + @88 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + goodfriend3
+ ~RandomNum(4,4)~ + @88 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + goodfriend3

+ ~RandomNum(4,1)~ + @89 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + holdhand1
+ ~RandomNum(4,2)~ + @89 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + holdhand1
+ ~RandomNum(4,3)~ + @89 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + holdhand2
+ ~RandomNum(4,4)~ + @89 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + holdhand3

+ ~RandomNum(4,1)~ + @90 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + needy1
+ ~RandomNum(4,2)~ + @90 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + needy4
+ ~RandomNum(4,3)~ + @90 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + needy2
+ ~RandomNum(4,4)~ + @90 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + needy3

+ ~RandomNum(4,1)~ + @91 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + smack1
+ ~RandomNum(4,2)~ + @91 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + smack4
+ ~RandomNum(4,3)~ + @91 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + smack2
+ ~RandomNum(4,4)~ + @91 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + smack3

+ ~RandomNum(4,1)~ + @92 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + blow1
+ ~RandomNum(4,2)~ + @92 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + blow1
+ ~RandomNum(4,3)~ + @92 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + blow2
+ ~RandomNum(4,4)~ + @92 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + blow3

+ ~RandomNum(4,1)~ + @93 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + kiss1
+ ~RandomNum(4,2)~ + @93 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + kiss1
+ ~RandomNum(4,3)~ + @93 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + kiss2
+ ~RandomNum(4,4)~ + @93 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + kiss3

+ ~RandomNum(4,1)~ + @94 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + fit1.1
+ ~RandomNum(4,2)~ + @94 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + fit1.2
+ ~RandomNum(4,3)~ + @94 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + fit1.3
+ ~RandomNum(4,4)~ + @94 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + fit1.4

+ ~GlobalGT("PGNaliaPCSucks","GLOBAL",2) !Global("PGNaliaFirstApology","LOCALS",1) !GlobalGT("PGNaliaLoveTalk","GLOBAL",24)~ + @95 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",-2) SetGlobal("PGNaliaFirstApology","LOCALS",1)~ + apology1

+ ~GlobalGT("PGNaliaPCSucks","GLOBAL",2) !Global("PGNaliaSecondApology","LOCALS",1) GlobalGT("PGNaliaLoveTalk","GLOBAL",24)~ + @96 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",-2) SetGlobal("PGNaliaSecondApology","LOCALS",1)~ + apology2

++ @97 + noflirt

++ @98 + breakup

++ @99 EXIT

END

IF ~~ hug1
SAY @100
IF ~~ EXIT
END

IF ~~ hug2
SAY @101
= @102
IF ~~ EXIT
END

IF ~~ hug3
SAY @103
IF ~~ EXIT
END

IF ~~ hug4
SAY @104
IF ~~ EXIT
END



IF ~~ blow1
SAY @105
IF ~~ EXIT
END

IF ~~ blow2
SAY @106
IF ~~ EXIT
END

IF ~~ blow3
SAY @107
IF ~~ EXIT
END



IF ~~ kiss1
SAY @108
IF ~~ EXIT
END

IF ~~ kiss2
SAY @109
IF ~~ EXIT
END

IF ~~ kiss3
SAY @110
IF ~~ EXIT
END



IF ~~ face1
SAY @111
IF ~~ EXIT
END

IF ~~ face2
SAY @112 
= @113
IF ~~ EXIT
END

IF ~~ face3
SAY @114
IF ~~ EXIT
END



IF ~~ face4
SAY @115
IF ~~ EXIT
END

IF ~~ face5
SAY @116
IF ~~ EXIT
END

IF ~~ face6
SAY @117
IF ~~ EXIT
END



IF ~~ smack1
SAY @118
IF ~~ EXIT
END

IF ~~ smack2
SAY @119
IF ~~ EXIT
END

IF ~~ smack3
SAY @120
IF ~~ EXIT
END

IF ~~ smack4
SAY @121
= @122
IF ~~ EXIT
END



IF ~~ needy1
SAY @123
IF ~~ EXIT
END

IF ~~ needy2
SAY @124
IF ~~ EXIT
END

IF ~~ needy3
SAY @125
IF ~~ EXIT
END

IF ~~ needy4
SAY @126
IF ~~ EXIT
END



IF ~~ apology1
SAY @127
IF ~~ EXIT
END

IF ~~ apology2
SAY @128
IF ~~ EXIT
END

IF ~~ apology3
SAY @129
IF ~~ EXIT
END



IF ~~ goodfriend1
SAY @130
IF ~~ EXIT
END

IF ~~ goodfriend2
SAY @131
IF ~~ EXIT
END

IF ~~ goodfriend3
SAY @132
IF ~~ EXIT
END



IF ~~ holdhand1
SAY @133
IF ~~ EXIT
END

IF ~~ holdhand2
SAY @134
IF ~~ EXIT
END

IF ~~ holdhand3
SAY @135
IF ~~ EXIT
END



IF ~~ shoulders1
SAY @136 
= @137
IF ~~ EXIT
END

IF ~~ shoulders2
SAY @138
IF ~~ EXIT
END

IF ~~ shoulders3
SAY @139
IF ~~ EXIT
END

IF ~~ shoulders4
SAY @140 
= @141
IF ~~ EXIT
END



IF ~~ hairstroke1
SAY @142
IF ~~ EXIT
END

IF ~~ hairstroke2
SAY @143
= @144
IF ~~ EXIT
END

IF ~~ hairstroke3
SAY @145
IF ~~ EXIT
END



IF ~~ fit1.1
SAY @146
IF ~~ EXIT
END

IF ~~ fit1.2
SAY @147
IF ~~ EXIT
END

IF ~~ fit1.3
SAY @148
IF ~~ EXIT
END

IF ~~ fit1.4
SAY @149
IF ~~ EXIT
END



IF ~~ breakup
SAY @150
IF ~~ DO ~SG("PGNaliaRomanceActive",3)~ EXIT
END



// level 2

IF
~IsGabber(Player1)
Global("FWDisableFlirts","GLOBAL",0)
CombatCounter(0)
GlobalGT("PGNaliaLoveTalk","GLOBAL",47)
!Global("PGNaliaNotSpeaking","GLOBAL",1)
OR(2)
Global("PGNaliaRomanceActive","GLOBAL",1)
Global("PGNaliaRomanceActive","GLOBAL",2)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~ naliaflirtbase2
SAY @151
= @152

+ ~RandomNum(4,1)~ + @84 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hug5
+ ~RandomNum(4,2)~ + @84 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hug5
+ ~RandomNum(4,3)~ + @84 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hug6
+ ~RandomNum(4,4)~ + @84 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hug7

+ ~RandomNum(4,1)~ + @85 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hairstroke4
+ ~RandomNum(4,2)~ + @85 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hairstroke4
+ ~RandomNum(4,3)~ + @85 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hairstroke5
+ ~RandomNum(4,4)~ + @85 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + hairstroke5

+ ~RandomNum(4,1)~ + @86 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + shoulders5
+ ~RandomNum(4,2)~ + @86 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + shoulders6
+ ~RandomNum(4,3)~ + @86 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + shoulders7
+ ~RandomNum(4,4)~ + @86 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + shoulders4

+ ~RandomNum(4,1)~ + @88 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + goodfriend4
+ ~RandomNum(4,2)~ + @88 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + goodfriend2
+ ~RandomNum(4,3)~ + @88 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + goodfriend5
+ ~RandomNum(4,4)~ + @88 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + goodfriend6

+ ~RandomNum(4,1)~ + @87 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + face4
+ ~RandomNum(4,2)~ + @87 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + face4
+ ~RandomNum(4,3)~ + @87 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + face5
+ ~RandomNum(4,4)~ + @87 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + face6

+ ~RandomNum(4,1)~ + @89 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + holdhand4
+ ~RandomNum(4,2)~ + @89 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + holdhand4
+ ~RandomNum(4,3)~ + @89 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + holdhand5
+ ~RandomNum(4,4)~ + @89 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + holdhand6

+ ~RandomNum(4,1)~ + @90 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + needy5
+ ~RandomNum(4,2)~ + @90 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + needy4
+ ~RandomNum(4,3)~ + @90 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + needy6
+ ~Global("PGNaliaNookie","GLOBAL",1) RandomNum(4,4)~ + @90 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + needy7
+ ~!Global("PGNaliaNookie","GLOBAL",1) RandomNum(4,4)~ + @90 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + needy4

+ ~RandomNum(4,1)~ + @91 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + smack5
+ ~RandomNum(4,2)~ + @91 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + smack5
+ ~RandomNum(4,3)~ + @91 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + smack6
+ ~RandomNum(4,4)~ + @91 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + smack7

+ ~RandomNum(4,1)~ + @92 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + blow4
+ ~RandomNum(4,2)~ + @92 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + blow4
+ ~RandomNum(4,3)~ + @92 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + blow5
+ ~RandomNum(4,4)~ + @92 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + blow6

+ ~RandomNum(4,1)~ + @93 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + kiss4
+ ~RandomNum(4,2)~ + @93 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + kiss5
+ ~RandomNum(4,3)~ + @93 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + kiss6
+ ~RandomNum(4,4)~ + @93 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + kiss7

+ ~RandomNum(4,1)~ + @94 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + fit2.1
+ ~RandomNum(4,2)~ + @94 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + fit2.2
+ ~RandomNum(4,3)~ + @94 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + fit2.2
+ ~RandomNum(4,4)~ + @94 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + fit2.3
+ ~GlobalGT("PGNaliaLoveTalk","GLOBAL",59) Global("PGNaliaNookie","GLOBAL",0)~ + @153 DO ~SetGlobal("PGNaliaNookie","GLOBAL",1)~ + wantyounow

+ ~Global("PGNaliaNookie","GLOBAL",1) RandomNum(4,1)~ + @153 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + wantyou1
+ ~Global("PGNaliaNookie","GLOBAL",1) RandomNum(4,2)~ + @153 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + wantyou1
+ ~Global("PGNaliaNookie","GLOBAL",1) RandomNum(4,3)~ + @153 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + wantyou2
+ ~Global("PGNaliaNookie","GLOBAL",1) RandomNum(4,4)~ + @153 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + wantyou3

+ ~RandomNum(4,1)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + @154 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + innbath1

+ ~RandomNum(4,2)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + @154 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + innbath1

+ ~RandomNum(4,3)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + @154 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + innbath2

+ ~RandomNum(4,4)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + @154 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + innbath2

+ ~RandomNum(4,1)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @154 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + streambath1

+ ~RandomNum(4,2)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @154 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + streambath2

+ ~RandomNum(4,3)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @154 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + streambath1

+ ~RandomNum(4,4)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @154 DO ~IncrementGlobal("PGNaliaFlirt","GLOBAL",1)~ + streambath2

+ ~GlobalGT("PGNaliaPCSucks","GLOBAL",2) !Global("PGNaliaThirdApology","LOCALS",1)~ + @155 DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",-2) SetGlobal("PGNaliaThirdApology","LOCALS",1)~ + apology3

++ @97 + noflirt

++ @156 EXIT
END

IF ~~ noflirt
SAY @157
IF ~~ DO ~SetGlobal("FWDisableFlirts","GLOBAL",1)~ EXIT
END

IF ~~ hug6
SAY @158
IF ~~ EXIT
END

IF ~~ hug7
SAY @159
IF ~~ EXIT
END

IF ~~ hug5
SAY @160
IF ~~ EXIT
END



IF ~~ kiss4
SAY @161
= @162
IF ~~ EXIT
END

IF ~~ kiss5
SAY @163
= @164
IF ~~ EXIT
END

IF ~~ kiss6
SAY @165
IF ~~ EXIT
END

IF ~~ kiss7
SAY @166
IF ~~ EXIT
END



IF ~~ blow4
SAY @167
IF ~~ EXIT
END

IF ~~ blow5
SAY @168
IF ~~ EXIT
END

IF ~~ blow6
SAY @169 
= @170
IF ~~ EXIT
END



IF ~~ smack5
SAY @171
IF ~~ EXIT
END

IF ~~ smack6
SAY @172
IF ~~ EXIT
END

IF ~~ smack7
SAY @173
IF ~~ EXIT
END



IF ~~ needy5
SAY @174
IF ~~ EXIT
END

IF ~~ needy6
SAY @175
IF ~~ EXIT
END

IF ~~ needy7
SAY @176
IF ~~ EXIT
END



IF ~~ holdhand4
SAY @177
IF ~~ EXIT
END

IF ~~ holdhand5
SAY @178 
= @179
IF ~~ EXIT
END

IF ~~ holdhand6
SAY @180
IF ~~ EXIT
END



IF ~~ goodfriend4
SAY @181
IF ~~ EXIT
END

IF ~~ goodfriend5
SAY @182
IF ~~ EXIT
END

IF ~~ goodfriend6
SAY @183
IF ~~ EXIT
END



IF ~~ hairstroke4
SAY @184
IF ~~ EXIT
END

IF ~~ hairstroke5
SAY @185
IF ~~ EXIT
END

IF ~~ shoulders5
SAY @186
IF ~~ EXIT
END

IF ~~ shoulders6
SAY @187
IF ~~ EXIT
END

IF ~~ shoulders7
SAY @188
IF ~~ EXIT
END



IF ~~ wantyounow
SAY @189 
= @190
IF ~~ EXIT
END

IF ~~ wantyou1
SAY @191
IF ~~ EXIT
END

IF ~~ wantyou2
SAY @192
IF ~~ EXIT
END

IF ~~ wantyou3
SAY @193
IF ~~ EXIT
END



IF ~~ fit2.1
SAY @194
IF ~~ EXIT
END

IF ~~ fit2.2
SAY @195
IF ~~ EXIT
END

IF ~~ fit2.3
SAY @196
IF ~~ EXIT
END



IF ~~ innbath1
SAY @197
IF ~~ EXIT
END

IF ~~ innbath2
SAY @198
= @199
= @200
= @201
= @202
= @203
IF ~~ EXIT
END

IF ~~ streambath1
SAY @204
IF ~~ EXIT
END

IF ~~ streambath2
SAY @205
= @206
= @207
= @208
= @209
= @210
IF ~~ EXIT
END



// No flirting in Underdark

IF ~IsGabber(Player1)
Global("FWDisableFlirts","GLOBAL",0)
CombatCounter(0)
OR(2)
Global("PGNaliaRomanceActive","GLOBAL",1)
Global("PGNaliaRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",%bg2_chapter_5%)~ BEGIN noflirtinunderdark
SAY @211
IF ~~ EXIT
END



// Post-spying sequence

IF ~~ postspying
SAY @212
= @213
= @214
= @215
++ @216 + s.enjoy
++ @217 + s.beautiful
++ @218 + s.better
++ @219 + s.enjoy
++ @220 + s.caught
++ @221 + s.sorry
++ @222 + s.sorry
END

IF ~~ s.caught
SAY @223
IF ~~ EXIT
END

IF ~~ s.enjoy
SAY @224
++ @217 + s.beautiful
++ @220 + s.caught
++ @218 + s.better
++ @221 + s.sorry
++ @222 + s.sorry
++ @225 + s.deny
END

IF ~~ s.deny
SAY @226
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",2)~ EXIT
END

IF ~~ s.beautiful
SAY @227
= @228
= @229
IF ~~ EXIT
END

IF ~~ s.better
SAY @230
IF ~~ DO ~IncrementGlobal("PGNaliaPCSucks","GLOBAL",1)~ EXIT
END

IF ~~ s.sorry
SAY @231
++ @217 + s.beautiful
++ @220 + s.caught
++ @218 + s.better
++ @232 + s.deny
++ @225 + s.deny
END

END

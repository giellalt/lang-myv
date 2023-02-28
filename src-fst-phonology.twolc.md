# The Erzya morphophonological/twolc rules file 

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-myv/blob/main/src/fst/phonology.twolc) 

## Alphabet

ҥ Ҥ і І ѳ Ѳ Pre-Soviet 1930s letters 

## Special letters in the root that might be useful in dialect research and etymology later
* **Ь3:0  ** арсемс:арсе  arśems  vs арсемс:арЬ3се  aŕśems 
* **Ӓ3:э  ** эрямс:Ӓ3ря 
* **Ӓ4:е  ** пелемс:пӒ4ль

* **%^Ь2ZERO:0  ** removes stem-final soft sign

вт%{оеэ%}мО1

* _%{ОØ%}:0_ Stem-final archiphoneme панго
* _%{ЕØ%}:ь_ Stem-final archiphoneme тинге
* _%{ЕØ%}:0_ Stem-final archiphoneme тинге

* _%^H:0_ used with stems in ч, ш, ж for hard plurals

* _%{дт%}:д_ in ablative
* _%{дт%}:т_ in ablative

 %{frontHard%}:0    — front harmony hard
 %{frontSoft%}:0    — front harmony soft
 %{back%}:0    — back harmony
 %{backHard%}:0    — back harmony
*  %{dialM%}:0    — for Shoksha and Drakino Dial/M morphology
*  %{ichPat%}:0   — for triggering colloquial partonymic forms 

%^NoLinkVow:0  — No linking vowel is used only after consonants for error

**verbStemVowStrong:0**  

* *цёра%>%{АЯ%}н*
* *цёр0%>ан*

**A1:o**  
* *яка%>%{оеэØ%}мА1*
* *яка%>0мо*
* ★*яка%>%{оеэØ%}мА1* (is not standard language)
* ★*яка%>0ма* (is not standard language)

**Y2:yi**  

**%{оеэ%}:е**
неемс+V+Ger+Ill+PxPl1: --see/nähdä--
* *ней%>%{оеэØ%}мО1%>%{оеэØ%}з%>%{оеэØ%}н%{оеэ%}к*
* *не0%>еме%>0з%>энек*

**%{оеэ%}:о**
псака+N+SP+Abe+PxSg3+Der+Der/MWN+N+SP+Tra+Indef: **cat/kissa**
* *псака%>втО1мО1%>%{оеэØ%}нз%{оэØ%}%>кс*
* *псака%>втомо%>0нзо%>кс*

**%{оеэ%}:э**

**%{оеэØ%}:0**
**%{оеэØ%}:е**
панемс+V+Ind+ConNeg: **drive/ajaa**
* *пань%>%{оеэØ%}К3*
* *пан0%>е0*

**%{оеэØ%}:э**
кев+N+SP+Ill+PxSg2: **rock/kivi**
* *кӒ4в%{frontSoft%}%>з%>%{оеэØ%}т%{ЬØ%}*
* *кев0%>з%>эть*
* *кӒ4в%{frontSoft%}%>%{оеэØ%}з%>%{оеэØ%}т%{ЬØ%}*
* *кев0%>ез%>эть*
* *пильге%{frontSoft%}%>%{оеэØ%}з%>%{оеэØ%}т%{ЬØ%}*
* *пильге0%>0з%>эть*

**%{оеэØ%}:о**
ков+N+SP+Ill+PxSg2: **moon/kuu**
* *ков%{back%}%>з%>%{оеэØ%}т%{ЬØ%}*
* *ков0%>з%>от*
* *ков%{back%}%>%{оеэØ%}з%>%{оеэØ%}т%{ЬØ%}*
* *ков0%>оз%>от*

**%{уиыØ%}:и**
панемс+V+Inf+Dial/NW: **drive/ajaa**
* *пань%>%{уиыØ%}мс*
* *пан0%>имс*

**%{уиыØ%}:ы**
кев+N+SP+Ill+PxSg2: **rock/kivi**
* *кӒ4в%{frontSoft%}%>з%>%{уиыØ%}т%{ЬØ%}*
* *кев0%>з%>эть*
* *кӒ4в%{frontSoft%}%>%{уиыØ%}з%>%{уиыØ%}т%{ЬØ%}*
* *кев0%>из%>ыть*

**%{уиыØ%}:у**
ков+N+SP+Ill+PxSg2: **moon/kuu**
* *ков%{back%}%>з%>%{уиыØ%}т%{ЬØ%}*
* *ков0%>з%>ут*
* *ков%{back%}%>%{уиыØ%}з%>%{уиыØ%}т%{ЬØ%}*
* *ков0%>уз%>ут*

* *сай%{frontSoft%}%>О1%>дО1*
* *са00%>е%>де*

**O1:e**  

**O1:o**  

**%{оэØ%}:e**  

**%{оэØ%}:o**  

псака+N+SP+Abe+PxSg3+Der+Der/MWN+N+SP+Tra+Indef: **cat/kissa**
* *псака%>втО1мО1%>%{оеэØ%}нз%{оэØ%}%>кс*
* *псака%>втомо%>0нзо%>кс*
псака+N+SP+Gen+PxSg3+Der+Der/MWN+N+Sg+Gen+Def
* *псака%>%{оеэØ%}нз%{оэØ%}%>%{оеэØ%}нть*
* *псака%>0нзо%>0нть*

**%{оэØ%}:0**

**O1:0**  

**%{ое%}:е**

**%{ое%}:о**

**A2:a**  
путомс+V+Prec+ScSg2: **put/laittaa**
* *пут%>%{КТ%}%{АЯ%}*
* *пут%>та*
* *карь>{дт}О1>{АЯ}н*
* *кар0>д0>ян*

**и:ы**

**j:0**  
* *сай%>%{оеэØ%}%>дО1*
* *са0%>е%>де*

**Е3:э always ** %> т н _ 2013-02-23

**Е3:э sometimes ** %> т н _ 2013-02-23

**ye:e always **  
сыр
* *сыр>Н1е{frontSoft}>{оеэØ}нь*
* *сыр>нэ0>0нь*

**Н1:н**  
**Н1:к**  

**а: и Dimin**

**о: ы Dimin**

**у: и Dimin**

**э: и Dimin**

**а: и Dimin**

**о: и Dimin**

**у: и Dimin**

**я: и Dimin**

**ё: и Dimin**

**ю: и Dimin**

**е: и Dimin**

**a:ya**  

**v:0**  

**G1:0**  

**G1:g**  

**G1:k**  

**G2:g**  

**G2:k**  

**G4:0**  

**G4:k**  

потмо+N+Relator+SP+Ela+Indef: **inside/sisäosa**
* *потм%{back%}%>ст%{оэØ%}*
* *пот00%>сто*

imperative suffix
**K1:t**  

лыказевемс+V+Imprt+ScSg2: **have taken**
* *лыказев%>%{КТ%}%{ЬØ%}*
* *лыказев%>ть*

**K1:к**  
ливтемс+V+Prec+ScSg2: **set out/laittaa esille**
* *ливть%>%{КТ%}%{АЯ%}*
* *ливт0%>тя*

**U4:y**  
кал+N+Sg+Nom+Def: **fish/kala**
* *кал>{dialM}с{ЬØ}*
* *кал>0с0*

пильге+N+Pl+Nom+Indef **leg; foot/jalka**
* *пильг%{frontSoft%}%>т%{ЬØ%}*
* *пильг0%>ть*
валдо+N+Pl+Nom+Indef **light/valo**
* ★*валд%{backHard%}%>т%{ЬØ%}* (is not standard language)
* ★*валд0%>ть* (is not standard language)
лыказевемс+V+Imprt+ScSg2: **have taken**
* *лыказев%>%{КТ%}%{ЬØ%}*
* *лыказев%>ть*

**U4:0**  

валдо+N+Pl+Nom+Indef **light/valo**
* *валд%{backHard%}%>т%{ЬØ%}*
* *валд0%>т0*

**t:d**  

**s:0**  

* *класс%>с*
* *клас0%>с*

**d:t**  
* *кедь%>%{дт%}О1*
* *кед0%>те*
* *обед%{frontHard%}%>%{дт%}О1*
* *обед0%>тэ*
* ★*обед%{frontHard%}%>%{дт%}О1* (is not standard language)
* ★*обед0%>дэ* (is not standard language)

**d:d**  

**y:y**

**y:0**  
* *кель^Ь2ZERO%>енть*
* *кел00%>енть*
меремс+V+Ind+Prt1+ScSg3: **say/sanoa**
* *мерь%>сь*
* *мер0%>сь*
* ★*мерь%>сь* (is not standard language)
* ★*мерь%>сь* (is not standard language)

**Disallow TLoss after non-t**  

* ★*раське>{уиыØ}нь* (is not standard language)
* ★*раське>0нь* (is not standard language)

**Disallow KLoss after non-k**  

**Disallow SLoss after non-s**  

**Disallow %^WLoss after non-v**  

**Disallow Н1:н after Letters**  

\[л | р | н |:Vows (HarmDummies:)] (ь:) %> _ %> %{оеэØ%}:  ;

* *пильге{frontSoft}>з>{оеэØ}нз{оэØ}*
* *пильге0>з>энзэ*

**Disallow Н1:н after Letters**
чувто+N+Pl+Nom+Def: **tree/puu**
* *чувт%{ОØ%}%>тнЕ3*
* *чувт0%>тнэ*

веле+N+SP+Tra+PxSg2
* *веле%>%{оеэØ%}кс%>%{оеэØ%}т%{ЬØ%}*
* *веле%>0кс%>эть*

псака+N+SP+Abe+PxSg2+Clt/Cop+Prt2+ScPl3+Clt/Gak
* *псака%>втО1мО1%>%{оеэØ%}т%{ЬØ%}%>%{оеэØ%}линек%>Г1ак*
* *псака%>втомо%>0т0%>олинек%>как*
ош+N+SP+Ill+PxSg2
* *ош%>%{оеэØ%}з%>%{оеэØ%}т%{ЬØ%}*
* *ош%>оз%>от0*
* *эряв%>^WLoss%>{ОЕЭØ}вО1ль*
* *эряв%>0%>00оль*

псака+N+SP+Abe+PxSg3+Der+Der/MWN+N+SP+Tra+Indef: **cat/kissa**
* *псака%>вт%{оеэ%}мО1%>%{оеэØ%}нз%{оэØ%}%>кс*
* *псака%>втомо%>0нзо%>кс*

веле+N+SP+Tra+PxSg2+Clt/Cop+Prt2+ScPl3: **village/kylä**
* *веле%>%{оеэØ%}кс%>%{оеэØ%}т%{ЬØ%}%>%{оеэØ%}льть*
* *веле%>0кс%>эт0%>ельть*

**Disallow %^NoLinkVow after vowel**

**Disallow s for control of stems with inessive...**

**Disallow dano after non-voiced**

**Disallow k for control of comparative with stem types**

* * *

<small>This (part of) documentation was generated from [src/fst/phonology.twolc](https://github.com/giellalt/lang-myv/blob/main/src/fst/phonology.twolc)</small>

---


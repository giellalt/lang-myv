








# DELIMITERS 



# TAGS AND SETS


## Sets containing lists of tags






Upper and lower case




* Sets for parts of speech






* Sets for POS sub-categories







* Sets for Semantic tags






* Sets for Morphosyntactic properties













































* Sets for Derivation





This will be expanded for homonymy at first

This will be expanded for homonymy at first, i.e., diminutives







used with Dat PxSg1











### Derivation tags
2VDerTag
2NDerTag

DerTag
















































































































































* Sets for POS sub-categories





* Sets for Semantic tags





* Sets for Morphosyntactic properties






































































































































































* Sets for verbs


    - V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.



* The set COPULAS is for predicative constructions







* NP sets defined according to their morphosyntactic features







* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.












The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")






* Miscellaneous sets





















* Border sets and their complements













* Syntactic sets




These were the set types.



## HABITIVE MAPPING


* **hab1** 


* **hab2** 

* **hab3** (<hab> @ADVL>) for hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.



* **habNomLeft** 


* **hab4** 	



* **hab6** 

* **hab7** 

* **hab8** This is not HAB
* **hab5**  This is not HAB



* **habDain** (<hab> @ADVL>) for (Pron Dem Pl Loc) if leat followed by Nom to the right




* **habGen** (<hab> @<ADVL) hab for Gen; if Gen is located in the end of the sentence and Nom is sentence initial










































































* **spred<obj** (@SPRED<OBJ) for Acc; the object of an SPRPED. Not to be mistaken with OPRED. If SPRED is to the left, and copulas is to the left of it. Nom or Hab are found sentence initially.


* **Hab<spred** (@<SPRED) for Nom; if copulas, goallut or jápmit is FMAINV and habitive or human Loc is found to the left. OR: if Ill or @Pron< followed by HAB are found to the left.

* **Hab>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween HAB and <ext>.

* **Nom>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween Nom and <ext> @<SUBJ.

* **<spred** (<ext> @<SUBJ) for Nom; if copulas to the left, and some kind of adverb, N Loc, time related word or Po to the left of it. OR: if Ill or @Pron< to the left, followed by copulas and the before mentioned to the left of copulas. 

* **<spred** (<ext> @<SUBJ) for Nom, but not for Pers. To the left boahtit or heaŋgát as MAINV, and futher to the left is some kind of place related word, or time related word


* **<spredQst1** (<ext> @<SUBJ) for Nom in a typically question sentence; if A) Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. B) same as a, only the Qst-pcle is attached to copulas. C) Qst to the left, with copulas to its left, but not if two Nom:s are found somewhere to the right. D) copulas to the left, and BOS to the left. E) Loc or Ill to the left, and Loc or Hab to the left of this, Qst and copulas to the left. F) Num @>N to the left, Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. NOTE) for all these rules; human, Loc or Sem/Plc not allowed to the right.

* **<spredQst2** (@<SPRED) for Nom; in a typically question sentence; differs from <spredQst1 by not beeing as restricted to the right. Though you are not allowed to be Pers or human.

* **Nom<spredQst** (@<SPRED) for Nom; in a typically question sentence. Differs from <spredQst2 by letting Nom be found between SPRED and copulas



* **<spred** (@<SPRED) for A Nom or N Nom if; the subject Nom is on the same side of copulas as you: on the right side of copulas

* **<spredVeara** (@<SPRED) for veara + Nom; if genitive immediately to the right, and intransitive mainverb to the right of genitive

* **leftCop<spred** (@<SPRED) for Nom; if copulas is the main verb to the left, and there is no Ess found to the left of cop (note that Loc is allowed between target and cop). OR: if you are Coll or Sem/Group with copulas to your left. 

* **<spredLocEXPERIMENT** (@<SPRED) for material Loc; if you are to the right of copulas, and the Nom to the left of copulas is not a hab-actor


* **NumTime** (@<SPRED) for A Nom

* **<spredSg** (@<SPRED) for Sg Nom	

* **<spredPg** (@<SPRED) for Pl Nom	

* **<spred** (@<SPRED) for Nom; if copulas to the left, and Nom or sentence boundary to the left of copulas. First one to the right is EOS.

* **<spred** (@<SPRED) for N Ess

* **spredEss>** (@SPRED>) for N Ess; if copulas to the right of you, and if an NP with nom-case first one to your left.

* **HABSpredSg>** (@SPRED>) for Nom; if habitive first one to the left, followed by copulas.

* **GalleSpred>** (@SPRED>) for Num Nom; if sentence initial

* **spredSgMII>** (@SPRED>)

* **r492>** (@SPRED>) for Interr Gen; consisting only of negations. You are not allowed to be MII. You are not allowed to have an adjective or noun to yor right. You are not allowed to have a verb to your right; the exception beeing an aux.



* **AdjSpredSg>** (@SPRED>) for A Sg Nom; if copulas to the right, but not if A or @<SPRED are found to the right of copulas

* **SpredSg>Hab** (@SPRED>) for Nom; if you are sentence initial, copulas is located to the right, and there is a habitive to the right of copulas



* **Spred>SubjInf** (@SPRED>) for Nom; if copulas to the right, and the subject of copulas is an Inf to the right

* **spredCoord** (@<SPRED) coordination for Nom; only if there already is a SPRED to the left of CNP. Not if there is some kind of comparison involved.






* **subj>Sgnr1** (@SUBJ>) for Nom Sg, including Indef Nom if; VFIN + Sg3 or Pl3 to the right (VFIN not allowed to the left) 

* **subj>Du** (@SUBJ>) for dual nominatives, including Coll Nom. VFIN + Du3 to the right. 
* **subj>Pl** (@SUBJ>) for plural nominatives, including Coll and Sem/Group. VFIN + Pl3 to the right.

* **subj>Pl** (@SUBJ>) for plural nominatives


* **subj>Sgnr2** (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* **<subjSg** (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).




















* **f<advl** (@-F<ADVL) for infinite adverbials

* **f<advl** (@-F<ADVL) for infinite adverbials



* **s-boundary=advl>** (@ADVL>) for ADVL that resemble s-booundaries. Mainverb to the right.




* **-fobj>** (@-FOBJ>) for Acc 

* **-fobj>** (@-FOBJ>) for Acc




* **advl>mainV** (@ADVL>) if; finite mainverb not found to the left, but the finite mainverb is found to the right.


* **<advl** (@<ADVL) if; finite mainverb found to the left. Not if a comma is found immediately to the left and a finite mainverb is located somewhere to the right of this comma.




* **<advlPoPr** (@<ADVL) if mainverb to the left.
* **advlPoPr>** (@<ADVL) if mainverb to the right.



* **advlEss>** (@<ADVL) for weather and time Ess, if FMAINV to the left.






* **advl>inbetween** (@ADVL>) for Adv; if inbetween two sentenceboundaries where no mainverb is present.

* **comma<advlEOS** (@<ADVL) if; comma found to the left and the finite mainverb to the left of comma. To the right is the end of the sentence.



* **advlBOS>** (@ADVL>) if; you are N Ill and found sentnece initially. First one to your right is a clause.


* **<advlPoEOS** (@<ADVL) for Po; if you are found at the very end of a sentence. A mainverb is needed to the right though.



* **cleanupILL<advl** (@<ADVL) for N Ill if; there are no boundarysymbols to your left, if you arent already @N< OR @APP-N<, and no mainverb is to yor left.











* **<opredAAcc** (@<OPRED) for A Acc; if an other accusative to the left, and a transtive verb to the left of it. OR: if a transitive verb to the left, and an accusative to the left of it.


### sma object









* **<advlEss** (@<ADVL) for ESS-ADVL if; FMAINV to the left
* **<spredEss** (@<SPRED) for N Ess if; FMAINV to the left is intransitive or bargat





## SUBJ MAPPING - leftovers

## OBJ MAPPING - leftovers


## HNOUN MAPPING


















# Verb inflection

Erzya language verbs inflect for person, subject and object.








OBJECT FLAGS AND +V+TV tags
а+V:а 




 **LEXICON V-AUX-NEG-PRT1 ** а+V:эзь




 **LEXICON TV_KADOMS ** 




 **LEXICON TV_NEVTEMS_SUB ** 

 * _LEXICON TV_NEVTEMS_  невтемс:невть

 **LEXICON TV_SAVTOMS_SUB ** 

 **LEXICON TV_SAVTOMS ** 

 **LEXICON TV_SAVTOMS-SG3_SUBJ/ZERO ** 

 **LEXICON TV_CHACHTOMS ** 


 **LEXICON TV_KUNDAMS_SUB ** 

 **LEXICON TV_KUNDAMS ** 





 **LEXICON TV_SATOMS ** 



 **LEXICON TV_TUEMS ** 

 **LEXICON TV_TEEMS ** 



 * _LEXICON TV_NEKSHNEMS_  некшнемс:некшн


VERBS WITH THIRD PERSON OBJECTS @U.CONJ-PX.13@





































VERBS WITH INTRANSITIVE TAGS +V+IV


























# AUXILIARY VERBS







# DERIVATION






# VERBS AFTER TRANSITIVITY Tags OBJECT FLAGS 




теемс:тей
теемс:тей























no deverbals




no deverbals
















no deverbals













## DERIVATION 


















    **LEXICON TV_NEKSHNEMS** Alternates with TRA
**LEXICON TV_NEKSHNEMS** Alternates with TRA



This is fed by actors and participles in N_myv, A_myv and Prc_myv
This is fed by actors and participles in N_myv, A_myv and Prc_myv







## CONJUGATION 

















Indicative Preterite I
















## INDICATIVE 

Indicative NonPast 









































































## INDICATIVE PRETERITE 2 





































## DESIDERATIVE 

















































## CONJUNCTIVE 

redo conj 2012-11-07 begin




































































redo conj 2012-11-07 end






begin







































end





## OPTATIVE 













## IMPERATIVE 














## PRECATIVE















## OPTATIVE 


2012-11-09











































Given in Grammar 2000




















Used with deverbals






























ваномс+V+TV+Imprt+ScPl2+Clt/Ga: **look/katsoa**
* *ван%>%{оеэØ%}дО1%>Г4а*
* *ван%>одо%>0я*








Proper noun inflection

Erzya proper nouns inflect in the same cases as regular
nouns.

Андрей:Андре





Вили:Вил



Russian type Surnames 
Абдеев:Абдеев

Багрий:Багр

Аморский:Аморск























Erzya Homestead names !!




PLACE NAMES FROM TEMPLATES !!




Erzya settlements !!





Divinities !!




Constellations !!








TEXT NAMES !!



HOLIDAYS !!




RIVER NAMES !!













Front-vowel stem


























DECLENSION LIMITATIONS






Possessor indices

The Erzya language possessor indices or possessive suffixes may be followed
by a number of morpheme types








These are possessor indices that can be followed by predicate marking
in the present there is no destinction between ScSg3 and ScPl3
Possessor indices allowing (1) #, (2) Foc, (3) Der/Pr ()



This appears with kindred terminology 

Is "_KAL" necessary ?









DAT-PXPL1 ;



































## POSSESSIVE TAGS 





These are possessor Indices for non-nominative singular
NonNomSg























word boundary or focus


















# Pronoun inflection

Erzya pronouns inflect in many the same cases as regular
nouns.


## Closed class personal pronouns









 +Interr+Sem/Hum+Sg+Nom:е ENDLEX ;  кие:ки


 +Interr+Sem/Obj: CLT/COP_SG ;  singular






мон:мо


тон:то


сон:со




минь:

тынь:ты

сынь:сы



















Obligatory Possessor Index

Periferal
























































Demonstrative






истямо:истя

Interrogative




What should be done 





кона:кона
This is not the same as indefinite
PronRel-kona

What should be done 

 LEXICON PRON-IS-INTERR-SPAT-INE  косо 


What should be done 



Relative pronouns

ки:ки



ки



































































































мезе+Pron:мезИ2 Misc_Pronouns1 ;
мезе+Pron+Rel+Gen:мень K ;
ки+Pron+Interr:ки Misc_Pronouns1 ;









Some pronoun continuation have been moved here
Out of TestLexc-noun.txt



























DEMONSTRATIVE DERIVATION !!






















































































# Interjections

The Erzya language interjections...









# Adjective inflection

Adjectives and other parts of speech in ERZYA are compared by means of 
either a particle or ablative case marking on the standard of comparison











































2013-04-17



кодамо:кода
кодамо:кода
кодатнэ
кодатне 











The Erzya language postpositions can be broken into many subgroups
according to morphological and semantic criteria




























ало:ал
alo-SPAT-1Arg

This allows for possessor indices, word end or focus


This allows for word end, possessor indices, predication


postposition that is in ablative case
алдо:алдо

postposition that is in elative case
потсто:потсто

postposition that is in illative case
эземс:эзем

postposition that is in illative case
эйс:э


postposition that is in inessive case
эйсэ:эйсэ


postposition that is in lative case
ютков:ютков

postposition that is in locative case
ало:ало

postposition that is in prolative case
перька:перька

postposition that has no continuation пачк

postposition that is in ablative case
алдо:алдо

postposition that is in elative case
потсто:потсто

postposition that is in illative case
малас:мала

postposition that is in illative case
малас:мала

postposition that is in illative case
потс:пот

postposition that is in illative case
эйс:э


postposition that is in inessive case
потсо:потсо

postposition that is in lative case
алов:ало

postposition that is in locative case
ало:ало

postposition that is in prolative case
перька:перька


 +Temp: K ;  перть

 +Ela+Temp: PO_POSS-or-END-FOC ;  пингстэ




Postpositions attr
кондямо:кондя



















Non-Verbal conjugation

In the Erzya language nominals and adverbs also conjugate


Used with deverbals










This is where adjectives get their plural T.






used with infinitives





Conjugation 














# NON-VERB CONJUGATION 


Conjugation 
















_KAL-NomSg-Conjugation-only










This allows Clt/Cop+Prs Sg1|Sg2|Pl1|Pl2 
Clt/Cop+Prt2 Sg1|Sg2|Sg3|Pl1|Pl2|Pl3
K 2019-01-26



















_KUDO-NomPl-Conjugation-only


_KUDO-NomPl-Conjugation-only-mutual































# Adverb inflection

The Erzya language adjectives do not compare.





































 LEXICON ADV-SPAT_  пачк




 LEXICON ADV-SPAT-IS-PRL  перька

 LEXICON ADV/PO/PRON-SPAT_ALO  ало:ал



 LEXICON ADV-SPAT_ALO  ало:ал






relative space **мельга**
























"стядо"



spatial adverbs 
dependent and independent case marking 




















This marking would indicate a word form that may be 

















# Noun inflection

Nouns in ERZYA inflect for number, case and declension (definite, indefinite and possessive).



## KINSHIP 












## HUMAN 



















## PLACE 


















## LATIVE 












## VOCATIVE






## NAMES OF MONTHS


## COMMON NOUNS 




 * LEXICON N_KEL1  кель:кель %^Ь2ZERO

 * LEXICON N_PEJ  кель:кель %^Ь2ZERO

 * LEXICON N_SODYJ  сода%>%{иы%}й, содый

























кардаз:карда











панго:панг



Front vowel, non-palatal consonant before vowel
Front vowel, non-palatal consonant before vowel
Front vowel, non-palatal consonant before vowel

Front vowel, non-palatal consonant before vowel
Front vowel, non-palatal consonant before vowel




Does this need a diminutive?


NMN

 * LEXICON NMN_KEL1  кель:кель %^Ь2ZERO

 * LEXICON NMN_PEJ  кель:кель %^Ь2ZERO


















 * ** TMP-INDEF ; ** Check this


 * **LEXICON NMN_KUDO-PL ** This needs checking 2013-03-27

harmony: front


DERIVATION 











 * **+SP+Gen+Indef:%>%{оеэØ%}нь%> N2Dem-SE ; ** _ь_ retension through double %>%>


 * **+Sg+Gen+Def:%>%{оеэØ%}нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Ela+Def:%>ст%{оэØ%}%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Ine+Def:%>с%{оэØ%}%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Prl+Def:%>Г2а%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Cmpr+Def:%>%{оеэØ%}шка%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Abe+Def:%>вт%{оеэ%}мО1%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Gen+Def+Use/NG+Err/Orth+Dial/NW:%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Ela+Def+Use/NG+Err/Orth+Dial/NW:%>ст%{оэØ%}%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Ine+Def+Use/NG+Err/Orth+Dial/NW:%>с%{оэØ%}%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Prl+Def+Use/NG+Err/Orth+Dial/NW:%>Г2а%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Cmpr+Def+Use/NG+Err/Orth+Dial/NW:%>%{оеэØ%}шка%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Abe+Def+Use/NG+Err/Orth+Dial/NW:%>вт%{оеэ%}мО1%>%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Pl+Gen+Def:%>тнЕ3%>нь%> N2Dem-SE ; ** _ь_ retension through double %>%>








 * **+SP+Gen+Indef:%^Ь2ZERO%>ень%> N2Dem-SE ; ** _ь_ retension through double %>%>

 * **+Sg+Gen+Def:%^Ь2ZERO%>енть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Ela+Def:%>стэ%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Ine+Def:%>сэ%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Prl+Def:%>га%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Cmpr+Def:%^Ь2ZERO%>ешка%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Abe+Def:%>теме%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Gen+Def+Use/NG+Err/Orth+Dial/NW:%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Ela+Def+Use/NG+Err/Orth+Dial/NW:%>стэ%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Ine+Def+Use/NG+Err/Orth+Dial/NW:%>сэ%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Prl+Def+Use/NG+Err/Orth+Dial/NW:%>га%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Cmpr+Def+Use/NG+Err/Orth+Dial/NW:%^Ь2ZERO%>ешка%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Use/-Spell+Sg+Abe+Def+Use/NG+Err/Orth+Dial/NW:%>теме%>%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Pl+Gen+Def:%>тне%>нь%> N2Dem-SE ; ** _ь_ retension through double %>%>



 * **+SLoss+Sg+Ela+Def:%>SLossст%{оэØ%}%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+SLoss+Sg+Ine+Def:%>SLossс%{оэØ%}%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+SLoss+Sg+Ela+Def+Use/NG+Err/Orth+Dial/NW:%>SLossст%{оэØ%}%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+SLoss+Sg+Ine+Def+Use/NG+Err/Orth+Dial/NW:%>SLossс%{оэØ%}%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>



 * **+Sg+Ela+Def:%>%{оеэØ%}%>ст%{оэØ%}%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Ine+Def:%>%{оеэØ%}%>с%{оэØ%}%>нть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Ela+Def+Use/NG+Err/Orth+Dial/NW:%>%{оеэØ%}%>ст%{оэØ%}%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>
 * **+Sg+Ine+Def+Use/NG+Err/Orth+Dial/NW:%>%{оеэØ%}%>с%{оэØ%}%>сть%> N2Dem-SE ; ** _ь_ retension through double %>%>







 * **+SP+Gen+Indef:%>%{оеэØ%}нь%> N2Dem-SE ; ** _ь_ retension through double %>%>




































pango:pang






N_KUDO-Def-Declension




N_KUDO-Def-Declension




N_KUDO-Def-Declension





## DEFINITE SINGULAR TAGS 


*Noun singular nominative definite examples:*
* *калось:* `кал+N+Sg+Nom+Def`
* *калоськак:* `кал+N+Sg+Nom+Def+Foc/Гак`
* ★*калосьгак:* `кал+N+Sg+Nom+Def+Foc/Гак` (is not standard language)



*Noun singular genitive definite examples:*
* *калонть:* `кал+N+Sg+Gen+Def`
* *калонтькак:* `кал+N+Sg+Gen+Def+Foc/Гак`


























## INDEFINITE DECLENSION






SG-NOM-INDEF_LAK ;



SG-NOM-INDEF_KAL ;






SG-NOM-INDEF_OSH ;













 * ** TMP-INDEF ; ** Check this


## INDEFINITE TAGS


*Noun singular nominative definite examples:*
* *калдо:* `кал+N+SP+Abl+Indef`
* *калдояк:* `кал+N+SP+Abl+Indef+Foc/Гак`


























## POSSESSIVE DECLENSION 





















## CASES BEFORE POSSESSIVE TAGS 













## DEFINITE PLURAL



## Cases for тнэ



























Nouns1S_A








































## POSSESSIVE marking followed by clitics












Quantifier inflection

Erzya quantifiers inflect in many the same cases as regular
nouns.













### Now regular














кавонст



омбонст

кавонест is a pronoun like the Finnish molemmat
This means a radical increase in the Erzya pronoun inventory: 6 x for each numeral 2 and above





кавксоненек





once, twice; весть, кавксть, аламоксть




васенцеде advmod:multimprf > advmod:ordimprf



васняяк 'first of all'




Numeral with a range limitation to adnominal phrase































2012-08-09













# Symbol affixes






# Clitics

The Erzya language clitics...











END 






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
















  %{frontHard%}:0    — front harmony hard
  %{frontSoft%}:0    — front harmony soft
  %{back%}:0    — back harmony
  %{backHard%}:0    — back harmony
 *  %{dialM%}:0    — for Shoksha and Drakino Dial/M morphology






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
неемс+V+TV+Ger+Ill+PxPl1: --see/nähdä--
* *ней%>%{оеэØ%}мО1%>%{оеэØ%}з%>%{оеэØ%}н%{оеэ%}к*
* *не0%>еме%>0з%>энек*

**%{оеэ%}:о**
псака+N+SP+Abe+PxSg3+Der+Der/MWN+N+SP+Tra+Indef: **cat/kissa**
* *псака%>втО1мО1%>%{оеэØ%}нз%{оэØ%}%>кс*
* *псака%>втомо%>0нзо%>кс*


**%{оеэ%}:э**


**%{оеэØ%}:0**
**%{оеэØ%}:е**
панемс+V+TV+Ind+ConNeg: **drive/ajaa**
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
панемс+V+TV+Inf+Dial/NW: **drive/ajaa**
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
* *ков0%>уз%>от*






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

**j:0**  
* *сай%>%{оеэØ%}%>дО1*
* *са0%>е%>де*

**Е3:э always ** %> т н _ 2013-02-23

**Е3:э sometimes ** %> т н _ 2013-02-23

**ye:e always **  




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
ливтемс+V+TV+Prec+ScSg2: **set out/laittaa esille**
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




**s:0**  

* *класс%>с*
* *клас0%>с*


**d:t**  
* *кедь%>дО1*
* *кед0%>те*
* *обед%{frontHard%}%>дО1*
* *обед0%>тэ*
* ★*обед%{frontHard%}%>дО1* (is not standard language)
* ★*обед0%>дэ* (is not standard language)

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


**Disallow KLoss after non-k**  

**Disallow SLoss after non-s**  

**Disallow %^WLoss after non-v**  

**Disallow Н1:н after Letters**  

**Disallow з where not following l, n or r**

* *пильге{frontSoft}>з>{оеэØ}нз{оэØ}*
* *пильге0>з>энзэ*



**Disallow з where not following l, n or r**
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

**Disallow k for control of comparative with stem types**



These are verbs with parallel conjugation



### REDUPLICATION
авардемс%-авардемс
ардомс%-ардомс
ардтневтемс%-ардтневтемс
арсемс%-арсемс
аштемс%-аштемс
ванномс%-ванномс
ваномс%-ваномс
вешнемс%-вешнемс

### %-And such
авардемс%-теемс
арсемс%-теемс
аштемс%-теемс
ванномс%-теемс
ваномс%-теемс

андомс%-симдемс
аштемс%-учомс
велямс%-чарамс
вастомс%-дёлямс
васькамс%-оймамс
витнемс%-петнемс
ёмавтомс%-аравтомс
ярсамс%-симемс

### SERIAL
витнемс%-ютавтомс




The derivable male given names have been moved to 
the template urj-Cyrl-propernouns.lexc.



These are nouns with parallel declension



ават%-тейтерть
аванзо-тетянзо
ават%-цёрат
атявтт%-ававтт
атят%-ават
атят%-бабат
атят%-сэрдят
бабат%-нуцькат
барант%-каткат
боярт%-азорт
боярт%-боярават

вирть%-лугат
вирть%-паксят
вирть%-укшторт
ворт%-грабительть
ворт%-розбойникть
эрзят%-мокшот

This is where new words are added as lexc entries before they are 
added to the xml source files.
эрзя-мокшонь:эрзя-мокшонь A-IS-GEN "(eng) /(fin) /(rus) " ;


ADD ADJECTIVES BELOW








This is where new words are added as lexc entries before they are 
added to the xml source files.
од:од A_KAL "(eng) /(fin)/(rus) " ;


ADD ADJECTIVES BELOW

This is where new words are added as lexc entries before they are 
added to the xml source files.
автор:автор N_KAL "(eng) /(fin) /(rus) " ;


ADD NOUNS BELOW






This is where new words are added as lexc entries before they are 
added to the xml source files.
ливтевкшнемс+V:ливтевкшне TV_KUNDAMS "(eng) /(fin) /(rus) " ;


ADD VERBS BELOW


These verbs just need Finnish translations
A-M
N-End




This is where new words are added as lexc entries before they are 
added to the xml source files.
лембстэ:лембстэ ADV_ "(eng) /(fin) /(rus) " ;


ADD ADVERBS BELOW


This is where new words are added as lexc entries before they are 
added to the xml source files.
автор:автор N_KAL "(eng) /(fin) /(rus) " ;


ADD NOUNS BELOW










Exceptions are quite strange word-forms. the ones that do not fit anywhere 
else. This file contains all enumerated word forms that cannot reasonably be
created from lexical data by regular inflection. Usually there should be next
to none exceptions, it's always better to have a paradigm that covers only
one or few words than an exception since these will not work nicely with e.g.
compounding scheme or possibly many end applications.


verbs of negation have partial inflection:
€ аволь
€ иля
€ эзь


The verb ярсамс has additional irregular forms:
€ ярстано
€ ярстадо

The verb сеземс


Some of the nouns have archaic consonant stem forms left:
€ ийть



Some random Russian elements:









Some of the nouns have special forms for Gen PxSg1 and PxSg2:



Reciprocal pronouns
These might be done with flags

These two stems have м loss but its presence can be
observed in the choice of "тнэ" over "тне"
This has special hard after lost consonant
This has special hard after lost consonant


1930s Phonetic transcription
дс >> ц
гт >> к
 мекевлангт+Adv+Use/NG+Err/Orth:мекевланг K ;  Half way between morphology and phonetics with a Russian twist 


### ADPOSITIONS


### IDEOPHONES
are dealt with as adverbs



### PRONOUNS

### QUANTIFIERS
 сисем+Num+Ord:сисеме NUMORD_KUDO ;  This is irregularly formed, cf. сисемце



### NOUNS


### PLACE NAMES
### GEO




### ANIMAL NAMES

### FIRST NAMES




100 % homographs of Russian words








adjectives in _ой_ Adj-od >> A_RU-OJ
with  +Use/SpellNoSugg

+SP+Gen+Indef attributes as adjectives

Russian language words found in Erzya texts

Old Bible Names and words

unrecognized

Problems with synchronization
missing lemmas


COLLECTIVE NOUNS








-kal

-osh

-kudo

-kal

-osh

-kudo

Place names, Settlements


Rivers


# Morphology
INTRODUCTION TO MORPHOLOGICAL ANALYSER OF ERZYA.


Analysis symbols











The morphological analyses of wordforms of ERZYA are presented
in this system in terms of following symbols.
(It is highly suggested to follow existing standards when adding new tags).
 * +TYÄ WORK HAS TO BE DONE


 *  %    

## The parts-of-speech are:

 * +A adjective
 * +Adp adposition
 * +Adv adverb
 * +CS subordinating conjunction
 * +CC coordinating conjunction
 * +Det determiner
 * +Descr descriptive
 * +Interj interjection
 * +N noun
 * +Num numerals
 * +Pcle particle
 * +Po postposition
 * +Pr preposition (in Russian loans)
 * +Pron pronoun
 * +Qnt quantifier
 * +V verb

## Parts of speech are further split up into:
Adjectives
 * +Adn Adnominal (modifier) !! This is not an NP head like +Pron
 * +Bahuvrihi This is a nominative-case NP used as an adjective
 * +bahuvrihi get rid of these for upper-case

Adverbs
 * +Ideoph These are ideophonic descriptors used to modify the verb
 вырк ливтясь "**flit** and it flew off"
"Ideophone: A vivid representation of an idea in sound. A word, often
onomatopoeic, which describes a predicate, qualificative or adverb in 
respect to manner, colour, sound, smell, action, state or intensity."
(Doke 1935:118)
 * +Manner with reference to type of adverb
 * +Parenthetic parenthetic
 * +Spat spatial
 * +Temp temporal
 * +Iter Iterative  form expressing number of times; myv: `кавксть`, kpv: `кыкысь`
 * +Mult Multiplicative, two-ply; myv: `кавонькирда`
 * +Deg Ad-adjective This is degree, depricate + AdA
 * +Epist epistemic modality marker speaker's evaluation/judgment of, degree of confidence in
 * +EvidNfh not first-hand келя
 * +EvidFh first-hand
 * +PerifMod periferal modifier ськамонзо

Interjections
 * +Formulaic 

Nouns
 * +Prop proper
 * +CollN used with paired nouns, i.e. COLLECTIVE NOUNS

Particles

Postpositions
**+ Spat**, **+ Temp**

## Pronouns
 * +Dem demonstrative
 * +Indef indefinite
 * +Dep dependent word requiring the presence of another, e.g. **мень**
 * +Interr interrogative
 * +Pers personal
 * +Recipr reciprocal
 * +Refl reflexive
 * +Rel relative
 * +Relator relator noun
 * +Sel selective, when selecting from a set of definites
 * +Short тень, теть; эстень
 * +Long монень, тонеть; монстень

 * +Sg1 first person singular
 * +Sg2 second person singular
 * +Sg3 third person singular
 * +Pl1 first person plural
 * +Pl2 second person plural
 * +Pl3 third person plural


## Quantifiers (numerals)
Quantifiers and Numerals are classified under:
 * +Appr Approximative numeral кавто-колмо, колмошка *two or three*
         NB! do not confuse with Komi case +Apr
 * +AssocColl -ne- ; avide-
 * +Assoc +мезть
 * +Card cardinal + NCard
 * +Coll collective
 * +Distr Distributive
 * +Ord ordinal + NOrd
 * **+Exclusive**:  ськамонзо

## Nominals are inflected for Number and Case
## Number
 * +Sg singular
 * +Pl plural
 * +SP ambiguous for number, general number

## Case
 * +Abe abessive
 * +Abl ablative case
 * +Com Comitative "-нек/-нэк"
 * +Cmpr Comparative case form -шка
 * +Dat dative
 * +Ela elative case
 * +Gen genitive case
 * +Ill illative
 * +Ine inessive
 * +Lat lative
 * +Loc Locative "вить ён : вить ёно"
 * +Nom nominative case
 * +Prl prolative "га/ка/ва"
 * +Tra translative: used in similative and depictive constructions
to mark what would be a secondary subject: 
--вармакс оргодсь тосто--
 * +TempCx Temporalis case form "-не/-нэ"
 * +Voc Vocative

## Possession and other declension types are marked with:
 * +PxSg1 first person singular
 * +PxSg2 second person singular
 * +PxSg3 third person singular
 * +PxSP3 third person singular or plural with dative only
 * +PxPl1 first person plural
 * +PxPl2 second person plural
 * +PxPl3 third person plural
 * +Def Definite

## The comparative forms are:
 * +Comp comparative as opposed to superlative
 * +Superl superlative
 * +Attr Attribute

## Verb moods are:
 * +Cond conditional Ындеря- (Derivational)
 * +Conj conjunctional "вОль"
 * +Des desiderative Ыксэль "was about to; wanted to"
 * +Ind indicative
 * +Imprt imperative
 * +Opt optative
 * +Prec precative
 * +Proh prohibitive is distinct from the negation of imperative
Иля аварде! `Don't cry' (Proh);
Аволь мелявтт, кецяк! `Don't worry, be happy!' (Neg + Imprt)

### Infinitive moods
 * +Oblig modality: deontic/directive/obligative
 андомс: андома , якамс: якама
 * +Delib **+Sugg modality**: deontic/directive/deliberative
I still need the right word for this андомс: андомсат

## Tenses in the indicative and infrequently in the conditional
 * +Prs In Erzya There is no morphological distinction
between present and future
 * +Prt1 Preterite 1
 * +Prt2 Preterite 2 (This is also used in predicate forms not involving a finite verb.)

## Verb personal forms are:
 * +ScSg1 * subject conjugation first person singular
 * +ScSg2 * subject conjugation second person singular
 * +ScSg3 * subject conjugation third person singular
 * +ScPl1 * subject conjugation first person plural
 * +ScPl2 * subject conjugation second person plural
 * +ScPl3 * subject conjugation third person plural
## Object conjugation
 * +OcSg1 * object conjugation first person singular
 * +OcSg2 * object conjugation second person singular
 * +OcSg3 * object conjugation third person singular
 * +OcPl1 * object conjugation first person plural
 * +OcPl2 * object conjugation second person plural
 * +OcPl3 * object conjugation third person plural

Other verb forms are
 * +Act * active voice (exo-tradition)
 * +PrsPrc * present participle (only non-contrastive usage)
 * +DemPrc * present participle (both contrastive and non-contrastive)
 * +ActPrcLong  %{иы%}й (This is dealt with elsewhere as an active present participle)
 * +ActPrcShort  %{иы%}  (This is dealt with elsewhere as an active present participle)
 * +ActDemPrc  %{иы%}ця  (This is dealt with elsewhere as an active present participle)
 * +ConNeg * connegative, main verb complement to Neg, vow-stem
 * +ConNegII * connegative, main verb complement to Neg, cons-stem
 * +Ger * gerund This is used with Der/Ozj and VAbl
 * +Inf * infinitive
 * +Neg * verb of negation эзь, аволь, иля
 * +Prc * participle
 * +VGen * Verb Genitive, genitive form participle
 * +VAbl * Verb Ablative "озадо"
 * +Prc/Telic * Telic participle  "саевть"
 * +Der/Abe * ВтОмО
 * +Der/Cmpr * шка
 * +Der/A * adjective derived from N or V
 * +Der/N2A * adjective derived from N
 * +Der/V2A * adjective derived from V
 * +Subst * deverbal nouns retaining verb arguments/gov

 * +PrfPrc 



## The Usage extents are marked using following tags:
 * +Err/Orth * Substandard
 * +Err/Sub * Substandard
 * +Err/Orth-no-linking-vowel linking vowel is missing
 * +Err/Orth-high-linking-vowel linking vowel is high

 * +Use/Marg * Marginal
 * +Use/-Spell * Exclude from speller
 * +Use/SpellNoSugg * recognized but not suggested in speller
 * +Use/Circ * Circular path
 * +Use/CircN * Circular number path
 * +Use/-Ped * Remove from pedagogical speller
 * +Use/NG * Do not generate, for isme-ped.fst and apertium

 * +Err/Lex * The lemma is not an Erzya word (Depricating --+Src/F--)

# Dialect tags
 * +Dial/SH * Short forms
 * +Dial/L * Long forms
 * +Dial * No specification
Specific to some dialects
Rueter 2010: 8
 * +Dial/-C * Not central standard
 * +Dial/C * 1 Central or Kozlovka-Mokshlei
 * +Dial/W * 2 Western or Insar
 * +Dial/NW * 3 North-Western or Alatyr
 * +Dial/SE * 4 South-Eastern or Sura
 * +Dial/M * 5 Mixed or Drakino-Shoksha

# Orthography tags
 * +Orth/PhonDeriv * Derivation is phonetic but declension and conjugation morphologic
 * +Orth/PhonInfl * Entire inflection is phonetic 1821, 1920-30
 * +Orth/Colloq Colloquial speech reflected in spelling

# Abbreviated words are classified with:
 * +ABBR * Abbreviation
 * +Symbol = independent symbols in the text stream, like £, €, ©
 * +ACR * Acronym

## Special symbols 

Delimiter marks are classified with:
 * +CLB +PUNCT +LEFT +RIGHT * 
 * %^excl * 

The verbs are syntactically split according to transitivity:

 * +TV * transitive verb
 * +IV * intransitive verb
 * +NomAg Actor Noun From Verb - Nomen Agentis
 * +NomAct Actor Noun From Verb - Nomen Agentis

Auxiliary verbs
 * +Aux * 

Special multiword units are analysed with:
 *  +Multi 

Non-dictionary words can be recognised with:
 *  +Guess 

Question and Focus particles:
 *  +Qst +Foc 


# Semantic tags

Semantic tags to help disambiguation & synt. analysis: (before POS)
Borrowed from main/langs/sme/src/morphology/root.lexc

## Simplex tags

 * +Sem/Act Activity
 * +Sem/Amount Amount
 * +Sem/Ani Animate
 * +Sem/Aniprod Animal Product
 * +Sem/Body Bodypart
 * +Sem/Body-abstr siellu, vuoig?a, jierbmi
 * +Sem/Build Building
 * +Sem/Build-part Part of Bulding, like the closet
 * +Sem/Cat Category
 * +Sem/Clth Clothes
 * +Sem/Clth-jewl Jewelery
 * +Sem/Clth-part part of clothes, boallu, sávdnji...
 * +Sem/Ctain Container
 * +Sem/Ctain-abstr Abstract container like bank account
 * +Sem/Ctain-clth
 * +Sem/Curr Currency like dollár, Not Money
 * +Sem/Dance Dance
 * +Sem/Dir Direction like GPS-kursa
 * +Sem/Domain Domain like politics, reindeerherding (a system of actions)
 * +Sem/Drink Drink
 * +Sem/Dummytag Dummytag
 * +Sem/Edu Educational event
 * +Sem/Event Event
 * +Sem/Feat Feature, like Árvu
 * +Sem/Feat-phys Physiological feature, ivdni, fárda
 * +Sem/Feat-psych Psychological feauture
 * +Sem/Feat-measr Psychological feauture
 * +Sem/Fem Female name
 * +Sem/Food Food
 * +Sem/Food-med Medicine
 * +Sem/Furn Furniture
 * +Sem/Game Game
 * +Sem/Geom Geometrical object
 * +Sem/Group Animal or Human Group
 * +Sem/Hum Human
 * +Sem/Hum-abstr Human abstract
 * +Sem/Ideol Ideology
 * +Sem/Kin Kinship term (special PxSg2 forms),
 * +Sem/Kin_Fem Kinship term (special PxSg2 forms), female
 * +Sem/Kin_Mal Kinship term (special PxSg2 forms), male
 * +Sem/Lang Language
 * +Sem/Mal Male name
 * +Sem/Mat Material for producing things
 * +Sem/Measr Measure
 * +Sem/Money Has to do with money, like wages, not Curr(ency)
 * +Sem/Obj Object
 * +Sem/Obj-clo Cloth
 * +Sem/Obj-cogn Cloth
 * +Sem/Obj-el (Electrical) machine or apparatus
 * +Sem/Obj-ling Object with something written on it
 * +Sem/Obj-rope flexible ropelike object
 * +Sem/Obj-surfc Surface object
 * +Sem/Org Organisation
 * +Sem/Part Feature, oassi, bealli
 * +Sem/Perc-cogn Cognative perception
 * +Sem/Perc-emo Emotional perception
 * +Sem/Perc-phys Physical perception
 * +Sem/Perc-psych Physical perception
 * +Sem/Plant Plant
 * +Sem/Plant-part Plant part
 * +Sem/Plc Place
 * +Sem/Plc-abstr Abstract place
 * +Sem/Plc-elevate Place
 * +Sem/Plc-line Place
 * +Sem/Plc-water Place
 * +Sem/Pos Position (as in social position job)
 * +Sem/Process Process
 * +Sem/Prod Product
 * +Sem/Prod-audio Audio product
 * +Sem/Prod-cogn Cognition product
 * +Sem/Prod-ling Linguistic product
 * +Sem/Prod-vis Visual product
 * +Sem/Rel Relation
 * +Sem/Route Name of a Route
 * +Sem/Rule Rule or convention
 * +Sem/Semcon Semantic concept
 * +Sem/Sign Sign (e.g. numbers, punctuation) 
 * +Sem/Sport Sport
 * +Sem/State 
 * +Sem/State-sick Illness
 * +Sem/Substnc Substance, like Air and Water
 * +Sem/Sur Surname
 * +Sem/Fem-Sur Surname female
 * +Sem/Mal-Sur Surname male
 * +Sem/Symbol Symbol
 * +Sem/Time Time
 * +Sem/Tool Prototypical tool for repairing things
 * +Sem/Tool-catch Tool used for catching (e.g. fish)
 * +Sem/Tool-clean Tool used for cleaning
 * +Sem/Tool-it Tool used in IT
 * +Sem/Tool-measr Tool used for measuring
 * +Sem/Tool-music Music instrument
 * +Sem/Tool-write Writing tool
 * +Sem/Txt Text (girji, lávlla...)
 * +Sem/Veh Vehicle
 * +Sem/Wpn Weapon
 * +Sem/Wthr The Weather or the state of ground



Multiple Semantic tags:
 * +Sem/Act_Group 
 * +Sem/Act_Plc 
 * +Sem/Act_Route 
 * +Sem/Amount_Build 
 * +Sem/Amount_Semcon 
 * +Sem/Ani_Body-abstr_Hum 
 * +Sem/Ani_Build 
 * +Sem/Ani_Build-part 
 * +Sem/Ani_Build_Hum_Txt 
 * +Sem/Ani_Group 
 * +Sem/Ani_Group_Hum 
 * +Sem/Ani_Hum 
 * +Sem/Ani_Hum_Plc 
 * +Sem/Ani_Hum_Time 
 * +Sem/Ani_Plc 
 * +Sem/Ani_Plc_Txt 
 * +Sem/Ani_Time 
 * +Sem/Ani_Veh 
 * +Sem/Aniprod_Hum 
 * +Sem/Aniprod_Obj-clo 
 * +Sem/Aniprod_Perc-phys 
 * +Sem/Aniprod_Plc 
 * +Sem/Body-abstr_Prod-audio_Semcon 
 * +Sem/Body_Body-abstr 
 * +Sem/Body_Clth 
 * +Sem/Body_Food 
 * +Sem/Body_Group_Hum 
 * +Sem/Body_Hum 
 * +Sem/Body_Mat 
 * +Sem/Body_Measr 
 * +Sem/Body_Obj_Tool-catch 
 * +Sem/Body_Plc 
 * +Sem/Body_Time 
 * +Sem/Build-part_Plc 
 * +Sem/Build_Build-part 
 * +Sem/Build_Clth-part 
 * +Sem/Build_Edu_Org 
 * +Sem/Build_Event_Org 
 * +Sem/Build_Org 
 * +Sem/Build_Route 
 * +Sem/Clth-jewl_Curr 
 * +Sem/Clth-jewl_Money 
 * +Sem/Clth-jewl_Plant 
 * +Sem/Clth_Hum 
 * +Sem/Ctain-abstr_Org 
 * +Sem/Ctain-clth_Plant 
 * +Sem/Ctain-clth_Veh 
 * +Sem/Ctain_Feat-phys 
 * +Sem/Ctain_Furn 
 * +Sem/Ctain_Tool 
 * +Sem/Ctain_Tool-measr 
 * +Sem/Curr_Org 
 * +Sem/Dance_Org 
 * +Sem/Dance_Prod-audio 
 * +Sem/Domain_Food-med 
 * +Sem/Domain_Prod-audio 
 * +Sem/Edu_Event 
 * +Sem/Edu_Group_Hum 
 * +Sem/Edu_Mat 
 * +Sem/Edu_Org 
 * +Sem/Event_Food 
 * +Sem/Event_Hum 
 * +Sem/Event_Plc 
 * +Sem/Event_Time 
 * +Sem/Feat-phys_Tool-write 
 * +Sem/Feat-phys_Veh 
 * +Sem/Feat-phys_Wthr 
 * +Sem/Feat-psych_Hum 
 * +Sem/Feat_Plant 
 * +Sem/Food_Perc-phys 
 * +Sem/Food_Plant 
 * +Sem/Game_Obj-play 
 * +Sem/Geom_Obj 
 * +Sem/Group_Hum 
 * +Sem/Group_Hum_Org 
 * +Sem/Group_Hum_Plc 
 * +Sem/Group_Hum_Prod-vis 
 * +Sem/Group_Org 
 * +Sem/Group_Sign 
 * +Sem/Group_Txt 
 * +Sem/Hum_Lang 
 * +Sem/Hum_Lang_Plc 
 * +Sem/Hum_Lang_Time 
 * +Sem/Hum_Obj 
 * +Sem/Hum_Org 
 * +Sem/Hum_Plant 
 * +Sem/Hum_Plc 
 * +Sem/Hum_Tool 
 * +Sem/Hum_Veh 
 * +Sem/Hum_Wthr 
 * +Sem/Lang_Tool 
 * +Sem/Mat_Plant 
 * +Sem/Mat_Txt 
 * +Sem/Measr_Time 
 * +Sem/Money_Obj 
 * +Sem/Money_Txt 
 * +Sem/Obj-play 
 * +Sem/Obj-play_Sport 
 * +Sem/Obj_Semcon 
 * +Sem/Clth-jewl_Org 
 * +Sem/Org_Rule 
 * +Sem/Org_Txt 
 * +Sem/Org_Veh 
 * +Sem/Part_Prod-cogn 
 * +Sem/Perc-emo_Wthr 
 * +Sem/Plant_Plant-part 
 * +Sem/Plant_Tool 
 * +Sem/Plant_Tool-measr 
 * +Sem/Plc-abstr_Rel_State 
 * +Sem/Plc-abstr_Route 
 * +Sem/Plc_Pos 
 * +Sem/Plc_Route 
 * +Sem/Plc_Substnc 
 * +Sem/Plc_Substnc_Wthr 
 * +Sem/Plc_Time 
 * +Sem/Plc_Tool-catch 
 * +Sem/Plc_Wthr 
 * +Sem/Prod-audio_Txt 
 * +Sem/Prod-cogn_Txt 
 * +Sem/Semcon_Txt 
 * +Sem/Obj_State 
 * +Sem/Substnc_Wthr 
 * +Sem/Time_Wthr 


Semantics are classified with
 * +Sem/Divinity  Divinity (god personified),
 * +Sem/Constellation  Constellation,
 * +Sem/Ant  Anthroponym
 * +Sem/Fem  Anthroponym female
 * +Sem/Mal  Anthroponym male
 * +Sem/Patr  Patronym
 * +Sem/Fem-Patr  Patronym female
 * +Sem/Mal-Patr  Patronym male
 * +Sem/Rvr  name of river or water way, media of transportation,
 * +Sem/Mnth  name of month
 * +Sem/Inanim  Inanimate,

Semantic Fields
 * +Field/Agr agriculatural
 * +Field/Anat anatomical
 * +Field/Bio biological
 * +Field/Bot botanical
 * +Field/Chem chemical
 * +Field/Geol geological
 * +Field/Gram grammatical
 * +Field/Hist historical
 * +Field/Law law
 * +Field/Mar maritime
 * +Field/Math mathematical
 * +Field/Med medical
 * +Field/Mus musical
 * +Field/Relig church
 * +Field/Tech technical
 * +Field/Zool zoological


# Other tags

## Verbal arguments
 * +Subj/Zero This is used to mark verbs without a semantic subject


Derivations are classified under the morphophonetic form of the suffix, the
source and target part-of-speech.

 * +V→N +V→V +V→A 

## Homonymy


## Der begin
 * +Der  In front of every derivation to make it
 possible to target derivations as a class e.g. in regular expressions etc
 * +Der/VtOmO 
 * +Der/stO Deriving adverbs from adjectives A2Adv
 * +Der/ms эрзямс эрзя, истямс истя, вадрямс вадря
 * +Der/shka 
 * +Der/GenAttr +Der/Onj genitive attribute derivation of non-nouns
 * +Der/aj vocative
 * +Der/kaj vocative


 * +Der/Ovt * telic deverbal noun also attr
 * +Der/Oms * infinitive illative
 * +Der/OmO * infinitive locative/nominative
 * +Der/OmstO * infinitive elative
 * +Der/OmsO * infinitive inessive
 * +Der/OmdO * infinitive ablative
 * +Der/Omga * infinitive prolative
 * +Der/Oma * modality: deontic/directive/obligative андомс: андома , якамс: якама
 * +Der/Omka * modality: deontic/directive/obligative андомс: андомка , якамс: якамка
 * +Der/Ycja * active (demonstrative) present participle
 * +Der/Y * active short present participle
 * +Der/Yj * active long present participle
 * +Der/Ozj * Gerund
 * +Der/Cond * conditional derivation +Der/Ynderja

## Declaring noun derivations
 * +Der/pelj 

Modifier without noun
 * +Der/MWN Modifier without Noun
 * +Der/Dem Speaker-Oriented Demonstrative
## Conjugation of words other than finite verbs
 * +Der/Pr derivation to predicate head, e.g. nominal conjugation
 * +Der/Cop This is not a derivation
 * +Clt/Cop This will replace the nominal conjugation Der/Pr+V
 * +Clt/Cond 

## Declaring Indefinite Pronoun derivations
 * +Der/koj prefix `+Indef` in indefinite pronouns
 * +Der/ta prefix `+Indef` in indefinite pronouns
 * +Der/tago prefix `+Indef` in indefinite pronouns
 * +Der/Gak suffix `+Indef` in indefinite pronouns
 * +Der/buti suffix `+Indef` in indefinite pronouns
 * +Der/Yja suffix `+Indef` in indefinite pronouns  ковия, зярыя


## DECLARING NOUN DERIVATIONS
 * +Der/chi  adjective-to-noun
## the combinatory --Event-- preceding the NP-final noun
 * +Der/OmA  verb-to-noun

## DECLARING NUMERAL DERIVATIONS
 * +Der/cje  +A+Ord
 * +Der/tjks  +A+Ord (non-contrastive)

## DECLARING DEVERBAL DERIVATIONS OF VERBS
 * +Der/kshnO  verb2verb derivation
 * +Der/OkshnOms  verb2verb derivation
 * +Der/OvOms  verb2verb derivation
 * +Der/OvkshnOms  verb2verb derivation
 * +Der/OvtOms  verb2verb derivation
 * +Der/Ovtnjems  verb2verb derivation
 * +Der/Ozevems  verb2verb derivation
 * +Der/Ozevtems  verb2verb derivation
 * +Der/Ozevtnjems  verb2verb derivation
 * +Der/Ozevkshnems  verb2verb derivation
 * +Der/sje  this in verb2verb derivation and also in denominal demonstrative --Der/Dem--
 * +Der/nje  verb2verb derivation
 * +Der/njems  verb2verb derivation

 * +Der/Oncje old orth кудонцесь

 * +Der/Dimin 
 * +Der/ka  diminutive
 * +Der/NJE  This is used in ошке, калнэ and кудыне
 * +Der/nJE  diminutive
 * +Der/Ynje  diminutive
 * +Der/Ynjka  diminutive
 * +Der/Ynjkinje  diminutive
 * +Der/ke  diminutive in --ке--
 * +Der/kinje  diminutive
 * +Der/ks Adv›N

 * +OLang/SME - North Sámi
 * +OLang/SMJ - Lule Sámi
 * +OLang/SMA - South Sámi
 * +OLang/FIN - Finnish
 * +OLang/SWE - Swedish
 * +OLang/NOB - Norw. bokmål
 * +OLang/NNO - Norw. nynorsk
 * +OLang/ENG - English
 * +OLang/MYV - Erzya
 * +OLang/MDF - Moksha
 * +OLang/RUS - Russian
 * +OLang/TAT - Tatar
 * +OLang/UND - Undefined

 * +F - Foreign

# Morphophonology

To represent phonologic variations in word forms we use the following
symbols in the lexicon files:


And following triggers to control variation
 *  %{frontHard%}    — front harmony hard
 *  %{frontSoft%}    — front harmony soft
 *  %{back%}    — back harmony
 *  %{backHard%}    — back harmony
 *  %{dialM%}    — for Shoksha and Drakino Dial/M morphology


 * Е3 testing тне тнэ


## Special letters in the root	  that might be useful in	dialect	research and etymology later
 * Ь3   арсемс:арсе  arśems  vs арсемс:арЬ3се  aŕśems 
 * Ӓ3   эрямс:Ӓ3ря
 * Ӓ4   пелемс:пӒ4ль

 * %^Ь2ZERO   removes stem-final soft sign





 * %{ое%} inflectional suffix protovowel  аволь аволинь
 * %{оеэØ%} Suffix-initial archiphoneme
 * %{уиыØ%} Suffix-initial archiphoneme in dialect

вт%{оеэ%}мО1 suffix-internal archivowel
 * %{оэØ%} inessive, elative; this is the hard/broad s
 * %{ОØ%} Stem-final archiphoneme панго
 * %{ЕØ%} Stem-final archiphoneme тинге

 * %^NoLinkVow  — No linking vowel is used only after consonants for error





# MISC
 * +Cmp/Hyph A tag to indicate that a hyphen was used when compounding


Development tag
 * +WORK 

 * +NoVowX 

 * ZERO 
 * %0 

 * %- 



 * +Dig1 
 * +Dig2 
 * +Dig3 
 * +Dig4 
 * +Rom Roman numerals

Compounding
 * +Cmp Dynamic compound - this tag should always be part of a dynamic compound.
It is important for Apertium, and useful in other cases as well.
 * +Cmp/Hyph-Coll with nouns
 * +Cmp/Hyph-Redup with verbs
 * +Cmp/Hyph-Synonym with verbs
 * +Cmp/Hyph-Serial with verbs
 * +Cmp/Hyph-tejems with verbs


## Tags
 * +Emphatic 
 * +Gr2xxx 
 * +Pref Prefix
 * +Exclusive "ансяк" only
 * +Intensive 
 * +Intensifier уш


 * +Onom onomapoetic words
 * +Descr descriptive words
## Different focus particles
Focus clitics
 * +Clt/Add Only one additive clitic
 * +Clt/AddGak 


## Imperative clitics
 * +Clt/Ga редяка Precative +Prec
 * +Clt/Gaja редякая
 * +Clt/Gajatj редякаять
 * +Clt/Gajatja редякаятя
 * +Clt/Gatja редякатя
 * +Clt/Gaka редякака ARE these real?
 * +Clt/Gakaja редякакая ARE these real?
 * +Pred2 secondary predicate. Examples:
 "Joe came in **with his hat on**."
 "Joe came in **Joe had his hat on**."

### Tags distinguishing different versions of the same lemma (before POS)
 * +v1
 * +v2
 * +v3
 * +v4
 * +v5
 * +v6
 * +v7
 * +v8
 * +v9
 * +v10
 * +v11
 * +v12
 * +v13
 * +v14
 * +v15
 * +v16
 * +v17
 * +v18
 * +v19
 * +v20
 * +v21
 * +v22
 * +v23
 * +v24

## FUNCTIONS are all upper-case!!!!
 * +ACC +DAT +COM This marks a function not a morpheme

 * +NoPoss used with personal pronouns in oblique cases,
where a possessor index is expected

### Symbols that need to be escaped on the lower side (towards twolc):

* »
* «
* > (written with square brackets, see the root.lexc file)
* < (written with square brackets, see the root.lexc file)


## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:
 |  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.
 |  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
 |  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
 |  @P.CmpPref.FALSE@ | Block these words from making further compounds
 |  @D.CmpLast.TRUE@ | Block such words from entering R
 |  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
 |  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
 |  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
 |  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.
 |  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
 |  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.

Flags used to identify parts of speech
 * @P.POS.PRON@ 
 * @P.POS.N@ 
 * @R.POS.N@ 
 * @P.POS.V@ 
 * @R.POS.V@ 
 * @C.POS@ 

Flags used with +Clt/Cop nonverbal predication
 * @U.PRED.NO@ 
 * @U.PRED.YES@ 
 * @C.PRED@ 

Flags used with transitivity
 * @U.TRANS.TV@ 
 * @U.TRANS.IV@ 
 * @P.TRANS.TV@ 
 * @P.TRANS.IV@ 
Flags used with serial verbs
 * @U.CONJ-INF.YES@ 
 * @U.CONJ-INF.NO@ 

 * @U.CONJ-TX.NONPAST@ 
 * @U.CONJ-TX.PRT1@ 
 * @U.CONJ-TX.PRT2@ 

 * @U.CONJ-MX.IND@ 
 * @D.CONJ-MX.IND@  2012-11-04 should this be --D-- or --N--
 * @U.CONJ-MX.IMP@ 
 * @U.CONJ-MX.OPT@ 
 * @U.CONJ-MX.PREC@ 
 * @U.CONJ-MX.DES@ 
 * @U.CONJ-MX.CONJ@ 
 * @U.CONJ-MX.COND@ 

 * @U.CONJ-CONNEG.YES@ 
 * @U.CONJ-CONNEG.NO@ 

 * @U.CONJ-NX.PL@ 
 * @U.CONJ-NX.SG@ 

 * @U.CONJ-POSS.1@ 
 * @U.CONJ-POSS.2@ 
 * @U.CONJ-POSS.3@ 
 * @U.CONJ-POSS.2ACC@ 
 * @U.CONJ-POSS.3ACC@ 


 * @U.CONJ-PX.10@ 
 * @U.CONJ-PX.12@ 
 * @U.CONJ-PX.13@ 
 * @U.CONJ-PX.15@ 
 * @U.CONJ-PX.16@ 
 * @U.CONJ-PX.20@ 
 * @U.CONJ-PX.21@ 
 * @U.CONJ-PX.23@ 
 * @U.CONJ-PX.24@ 
 * @U.CONJ-PX.26@ 
 * @U.CONJ-PX.30@ 
 * @U.CONJ-PX.31@ 
 * @U.CONJ-PX.32@ 
 * @U.CONJ-PX.33@ 
 * @U.CONJ-PX.34@ 
 * @U.CONJ-PX.35@ 
 * @U.CONJ-PX.36@ 

 * @U.CONJ-PX.40@ 
 * @U.CONJ-PX.42@ 
 * @U.CONJ-PX.43@ 
 * @U.CONJ-PX.45@ 
 * @U.CONJ-PX.46@ 

 * @U.CONJ-PX.50@ 
 * @U.CONJ-PX.51@ 
 * @U.CONJ-PX.53@ 
 * @U.CONJ-PX.54@ 
 * @U.CONJ-PX.56@ 

 * @U.CONJ-PX.60@ 
 * @U.CONJ-PX.61@ 
 * @U.CONJ-PX.62@ 
 * @U.CONJ-PX.63@ 
 * @U.CONJ-PX.64@ 
 * @U.CONJ-PX.65@ 
 * @U.CONJ-PX.66@ 


 * @R.CONJ-PX.13@ 
 * @R.CONJ-PX.16@ 
 * @R.CONJ-PX.23@ 
 * @R.CONJ-PX.26@ 
 * @R.CONJ-PX.33@ 
 * @R.CONJ-PX.36@ 

 * @R.CONJ-PX.43@ 
 * @R.CONJ-PX.46@ 

 * @R.CONJ-PX.53@ 
 * @R.CONJ-PX.56@ 

 * @R.CONJ-PX.63@ 
 * @R.CONJ-PX.66@ 


 * @P.CONJ.ObjAll@ 
 * @R.CONJ.ObjAll@ 
 * @C.CONJ@ 
 * @P.TLOSS.ON@ 
 * @R.TLOSS.ON@ 

 * @P.PossPx.Sg1@ 
 * @P.PossPx.Sg2@ 
 * @P.PossPx.Sg3@ 
 * @P.PossPx.Pl1@ 
 * @P.PossPx.Pl2@ 
 * @P.PossPx.Pl3@ 

 * @U.PossPx.S3@ 
 * @U.PossPx.SP3@ 

 * @U.PossPx.Sg1@ 
 * @U.PossPx.Sg2@ 
 * @U.PossPx.Sg3@ 
 * @U.PossPx.Pl1@ 
 * @U.PossPx.Pl2@ 
 * @U.PossPx.Pl3@ 

 * @D.PossPx@ 
 * @C.PossPx@ 
 * @P.TNUM.SG@ 
 * @P.TNUM.PL@ 
 * @D.TNUM.SG@ 
 * @D.TNUM.PL@ 
 * @C.TNUM@ 

problematic


 * @P.TPERS.1@ 
 * @P.TPERS.2@ 
 * @P.TPERS.3@ 
 * @N.TPERS.1@ 
 * @N.TPERS.2@ 
 * @N.TPERS.3@ 
 * @U.TPERS.1@ 
 * @U.TPERS.2@ 
 * @U.TPERS.3@ 
 * @C.TPERS@ 

 * @U.CX.ABE@ 
 * @U.CX.ABL@ 
 * @U.CX.CMP@ 
 * @U.CX.COM@ 
 * @U.CX.DAT@ 
 * @U.CX.ELA@ 
 * @U.CX.GEN@ 
 * @U.CX.ILL@ 
 * @U.CX.INE@ 
 * @U.CX.LAT@ 
 * @U.CX.LOC@ 
 * @U.CX.NOM@ 
 * @U.CX.PRL@ 
 * @U.CX.TRA@ 
 * @U.CX.PRL@ 
 * @U.CX.TEMP@ 

 * @N.CX.ILL@ 
 * @N.CX.INE@ 
 * @N.CX.LAT@ 
 * @N.CX.ELA@ 
 * @C.CX@ 

 * @P.DNUM.PL@ 
 * @P.DNUM.SG@ 
 * @U.DNUM.PL@ 
 * @U.DNUM.SG@ 
 * @C.DNUM@ 



 * @P.NUM.SG@ 
 * @P.NUM.PL@ 
 * @D.NUM.SG@ 
 * @D.NUM.PL@ 
 * @C.NUM@ 

 * @U.INDEF.KOI@ 
 * @U.INDEF.TA@ 
 * @U.INDEF.TAGO@ 
 * @U.INDEF.BUTI@ 
 * @U.INDEF.GAK@ 
 * @C.INDEF-PRON@ 
 * @P.INDEF.PREF@ 
 * @D.INDEF.PREF@ 
 * @R.INDEF.PREF@ 
 * @C.INDEF@ 

This allows or disallows combining with hyphen through loop
especially for acronyms 2012-11-04
 * @U.HYPH-COMBO.ACRO@ 
 * @D.HYPH-COMBO.ACRO@ 
 * @C.HYPH-COMBO@ 


Linking vowel for use with Translative
 * @P.LV.ON@ 
 * @P.LV.OFF@ 
 * @R.LV.ON@ 
 * @U.LV.ON@ 
 * @D.LV.ON@ 
 * @C.LV@ 



 * @C.CONJ-INF@ 
 * @C.CONJ-TX@ 
 * @C.CONJ-MX@ 
 * @C.CONJ-CONNEG@ 
 * @C.CONJ-NX@ 
 * @C.CONJ-PX@ 
 * @C.CONJ-POSS@ 

 * @C.KLOSS@ 
 * @C.TLOSS@ 

# FLAGS USED WITH COLLECTIVE NOUNS
## number
 * @U.DECL-NX.SG@
 * @U.DECL-NX.SP@
 * @U.DECL-NX.PL@
 * @R.DECL-NX.SG@
 * @R.DECL-NX.SP@
 * @R.DECL-NX.PL@
## case
 * @U.DECL-CX.NOM@ 
 * @U.DECL-CX.ACC@ 
 * @U.DECL-CX.GEN@ 
 * @U.DECL-CX.DAT@ 
 * @U.DECL-CX.ABL@ 
 * @U.DECL-CX.ILL@ 
 * @U.DECL-CX.INE@ 
 * @U.DECL-CX.ELA@ 
 * @U.DECL-CX.LAT@ 
 * @U.DECL-CX.LOC@ 
 * @U.DECL-CX.TRA@ 
 * @U.DECL-CX.PRL@ 
 * @U.DECL-CX.COM@ 
 * @U.DECL-CX.TEMP@ 
 * @U.DECL-CX.ABE@ 
 * @U.DECL-CX.CMP@ 

 * @U.DECL-DX.DEF@ 
 * @U.DECL-DX.INDEF@ 
 * @U.DECL-DX.PX@ 


Removal
 * @C.DECL-NX@ 
 * @C.DECL-DX@ 
 * @C.DECL-CX@ 





The word forms in ERZYA start from the lexeme roots of basic
word classes, or optionally from prefixes:
Here follow all contlexes, appr 20.




 * Hyphenated-nouns ; entire serial nouns
 * Hyphenated-verbs ; entire serial verbs



CyrillicFemaleName ;
HUNSPELL Type name derivation
RussianMalenamesDerive ; !
RussianSurnamesDerive ;































Not a real particle; it can take a clitic седеяк





























увол-авол




alo-SPAT-1Arg ; >PO_KAL-LOC



























We describe here how abbreviations are in Erzya are read out, e.g.
for text-to-speech systems.

For example:

 * s.:syntynyt # ;  
 * os.:omaa% sukua # ;  
 * v.:vuosi # ;  
 * v.:vuonna # ;  
 * esim.:esimerkki # ; 
 * esim.:esimerkiksi # ; 



       E R Z Y A    G R A M M A R   C H E C K E R









# DELIMITERS


# TAGS AND SETS






Upper and lower case




* Sets for parts of speech






* Sets for POS sub-categories






* Sets for Semantic tags






* Sets for Morphosyntactic properties








































* Sets for Derivation





This will be expanded for homonymy at first

This will be expanded for homonymy at first, i.e., diminutives





used with Dat PxSg1










### Derivation tags
2VDerTag
2NDerTag

DerTag








### Grammarchecker sets









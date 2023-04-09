

# DELIMITERS 

# TAGS AND SETS

## Tags

This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

### Beginning and end of sentence
BOS
EOS

### Parts of speech tags

* Sets for parts of speech

* CLB clb (clb because of apertium)
* LEFT RIGHT because of apertium

* ### Tags for POS sub-categories

* Arab
* Romertall
* Subqst
* CLBfinal

* ### Tags for morphosyntactic properties

* Cmp/SplitR
* Cmp/Attr
* Cmp/Cit
* Cmpnd
* Cmp/SgNom Cmp/SgGen
* Cmp/SgGen
* Cmp/PlGen
* Cmp/Sh
* Cmp

Dialect homonyms of Sg Gen Def

* ### Derivation tags

### Semantic tags

noun phrase heads

###  Syntactic tags

* @+FAUXV : finite auxiliary verb 
- ferte: Son ferte oaidnit ollislaš gova. - She must see the whole picture.
* @+FMAINV : finite main verb
- oaidná: Son oaidná ollislaš gova. - She sees the whole picture	
* @-FAUXV : infinite auxiliary verb
- sáhte: In sáhte gáhku borrat. - I cannot eat cake.	
* @-FMAINV : infinite main verb
- oaidnit: Son ferte oaidnit ollislaš gova. - She must see the whole picture.
* @-FSUBJ> : Subject of infinite verb outside the verbal.
- mu: Diet dáhpáhuvai mu dieđikeahttá. - It happened without my knowing about it.
* @-F<OBJ : Subject of infinite verb outside the verbal.
- nuppi: Ulbmil lea oažžut nuppi boagustit. - The goal is to get the other one to laugh.
* @-FOBJ> : Object of infinite verb outside the verbal.
- váldovuoittuid: Sii vurde váldovuoittuid fasket. - They waited to grab the main prizes.
* @-FSPRED<OBJ
* @-F<ADVL
* @-FADVL>
* @-F<SPRED
* @-F<OPRED
* @-FSPRED>
* @-FOPRED>
* @>ADVL
* @ADVL<
* @<ADVL
* @ADVL>
* @>N
* @Interj
* @N<
* @>A
* @P<
* @>P
* @HNOUN
* @INTERJ
* @>Num
* @Pron<
* @>Pron
* @Num<
* @OBJ
* @<OBJ
* @OBJ>
* @OPRED
* @<OPRED
* @OPRED>
* @PCLE
* @COMP-CS<
* @SPRED
* @<SPRED
* @SPRED>
* @SUBJ
* @<SUBJ
* @SUBJ>
* @PPRED
* @APP
* @APP-N<
* @APP-Pron<
* @APP>Pron
* @APP-Num<
* @APP-ADVL<
* @VOC : Vocative
- Miss Turner : Bures boahtin deike, Miss Turner! - Welcome here, Miss Turner!
* @CVP : Conjunction or subjunction that conjoins finite verb phrases.
- go : Leago guhkes áigi dassá go Máreha oidnet? - Is it a long time since you saw Máret?
* @CNP : Local conjunction or subjunction.
- vai : Leago nieida vai bárdni? - Is it a girl or a boy?
* @X : unknown

Upper and lower case

## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and 
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.

### Sets for Single-word sets

the set INITIAL for initial letters 
INITIAL

### Sets for word or not

### Derivational affixes

### Case sets

ADLVCASE

### Verb sets

NOT-V

### Sets for finiteness and mood

MOOD-V

Homonymy for subject conjugation and subject-object conjugation with Pl3 object

VFIN

VFIN-POS

### Sets for person

### Pronoun sets

кортамс мезде

for кизэ homonymy PxSg2
for кизэ homonymy PxSg1
This will be expanded for homonymy at first

This will be expanded for homonymy at first, i.e., diminutives

these have homonyms

used with Dat PxSg1

### Derivation tags
2VDerTag
2NDerTag

DerTag

Pl Nom Def is Homomym with verb stem in тне-мс. This is relative for Clt/Cop with ScPl1 and ScPl2

in SP Gen Indef the next word can be кель

2023_03_15 important part of regular inflection

* * *
<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-myv/blob/main/src/cg3/disambiguator.cg3)</small>
#####################################
# 2012-03-20
# This generates hfst for Erzya (myv)
# Platform, infrastructure and collaboration 
# with Giellatekno at Tromsø, Norway since 2004,
# Furthered work and adaptation facilitated by
# "Koneen Säätiö" stipend in Helsinki, Finland starting 2012
# © Jack Rueter 2005-2012 
# 
#####################################
#
allMyv-gen.hfst:   all-myv-lex.lexc.hfst twol-myv.twol.hfst Makefile
	./Make-myv-gen-hfst.sh

all-myv-lex.lexc.hfst:   all-myv-lex.lexc Makefile
	./Make-myv-lex.txt.sh


twol-myv.twol.hfst: twol-myv.twol Makefile
	./Make-myv-twolc-hfst.sh

all-myv-lex.lexc: myv-lex.txt \
 adj_myv-lexc.txt \
 adv_myv-lexc.txt \
 conj_myv-lexc.txt \
 interj_myv-lexc.txt \
 noun_myv-lexc.txt \
 pcle_myv-lexc.txt \
 pers_myv-lexc.txt \
 postp_myv-lexc.txt \
 prop_myv-lexc.txt \
 qnt_myv-lexc.txt \
 verb_myv-lexc.txt \
 TestLexc-noun.txt \
 noun-myv-morph.txt \
 pers-myv-morph.txt \
 verb-myv-morph.txt \
 myv-morph-endLexc.txt Makefile
	./Make-all-myv-lex.sh



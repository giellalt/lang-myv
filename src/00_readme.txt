## This project is based on several elements of Erzya research:
# xfst twolc and lexc of Erzya by © Jack Rueter OPEN-SOURCE
# English-Erzya wordlist (approx. 8000 words) Jack Rueter
# the OPEN-SOURCE manuscript for a monolingual dictionary of the Erzya language by Kuz'ma Abramov (2002)
# The Erzya-Finnish dictionary (Эрзянь-финнэнь валкс, ersäläis-suomalainen sanakirja 1995, 1996)
# Manuscript of a Russian-Erzya wordlist by Bol'kin
# The Erzya-Russian Dictionary 1993
# The Erzya-German Dictionary 2002
# 

##
# The shell scripts used for producing necessary files are
(1) ./Make-myv-twolc-hfst.sh # This converts the twolc file from txt to hfst
# -o twol-myv.twol.hfst  twol-myv.twol

(2) ./Make-all-myv-lex.sh # This joins all of the lexc files together to produce a source for _compile-source_ in lexc
# cat myv-lex.txt adj_myv-lexc.txt noun_myv-lexc.txt TestLexc-noun.txt noun-myv-morph.txt > all-myv-lex.lexc

(3) ./Make-myv-lex.txt.sh # This converts the lexc file from txt to hfst
# -o all-myv-lex.lexc.hfst all-myv-lex.lexc
 
 
(4) ./Make-myv-gen-hfst.sh # This does the hfst-compose-intersect, hfst-minimize, hfst-invert
# hfst-compose-intersect -1 all-myv-lex.lexc.hfst twol-myv.twol.hfst | hfst-minimize|hfst-invert  -o allMyv-gen.hfst

#
(5) ./Make-myv-all.sh # This puts them all (1-4) together

# Test with
echo "кал" |hfst-lookup allMyv-gen.hfst 

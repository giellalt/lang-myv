## Thanks to the people at Giellatekno In Tromsø for their work 
# and continued assistance, especially Børre, Ciprian, Sjur and Trond
# Since 2004
## Thanks to Kone Säätiö (The Kone Foundation in Helsinki) funding 
# Since 2012
#
## This project is based on several elements of Erzya research:
# xfst twolc and lexc of Erzya by © Jack Rueter OPEN-SOURCE
# English-Erzya wordlist (approx. 8000 words) Jack Rueter
# the OPEN-SOURCE manuscript for a monolingual dictionary of the Erzya language by Kuz'ma Abramov (2002)
# The Erzya-Finnish dictionary (Эрзянь-финнэнь валкс, ersäläis-suomalainen sanakirja 1995, 1996)
# Manuscript of a Russian-Erzya wordlist by Bol'kin
# The Erzya-Russian Dictionary 1993
# The Erzya-German Dictionary 2002
# 

##(1)##
# The spellchecker
In This directory:

make lexfiles
make -f Makefile.hfst

# Test with
echo "кал" |hfst-lookup ../bin/myv.hfstol 


##(2)##
# The Apertium dictionary

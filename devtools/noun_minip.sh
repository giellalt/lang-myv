#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in myv:
# sh devtools/noun_minip.sh LAAVU | less
# sh devtools/noun_minip.sh smiergâs 
# Only get the lemma you ask for:
# sh devtools/noun_minip.sh '^smiergâs[:+]' 


LOOKUP=$(echo $LOOKUP)
GTLANGS=$(echo $GTLANGS)


PATTERN=$1
L_FILE="in.txt"
cat src/fst/morphology/stems/nouns.lexc src/fst/morphology/stems/nouns_newwords.lexc | cut -d '!' -f1 | egrep $PATTERN | tr '+' ':'| cut -d ':' -f1>$L_FILE

P_FILE="src/fst/morphology/test/testnounparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | $LOOKUP $GTLANGS/lang-myv/src/fst/generator-gt-norm.xfst
 done
 rm -f $L_FILE
done


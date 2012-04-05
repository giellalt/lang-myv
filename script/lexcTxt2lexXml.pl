#!/usr/bin/perl

use utf8;

# This is used for converting POS_LANG-lexc.txt to POS_LANG-lex.xml


undef $/;

$_ = <>;

####
#This particular convertion will deal with Erzya (= language code: myv)
##Only one string is required to extract:
# (1) the lemma string
# (2) an optional tag string
# (3) the stem string
# (4) the continuation lexicon string
# (5) an optional gloss string
# (6) the final semicolon and optional subsequent comment
##### s/([^ "]*)\ *([^ "]*)\ *(.*?)\ *(\;\ *!.*?|\;)\ *(\n)/\<eg\>\<lg\>\<mrj\>\<\/mrj\>\<mhr\>$1\<\/mhr\>\<\/lg\>\<contl\>$2\<\/contl\>\<etg\>\<\/etg\>\<e\>\<t\>$3\<\/t\>\<\/e\>\<com\>$4\<\/com\>\<\/eg\>$5/g;

##
# 2 iterations
 s/\n([^+:"\n]*)(\+[^:"]*):(.*?)\ ([^"; ]+)\ *(|\"[^"]*\"\ *)(\;\ *!.*?|\;)\ *(\n)/\n\<entry\>\<lg\>\<l\>$1\<\/l\>\<stg\>\<st\ erzContlex\=\"$4\"\>$3\<\/st\>\<\/stg\>\<\/lg\>\<pos\>\<\/pos\>\<e\>\<mg\>\<m\>\<head\>\<tags\>$2\<\/tags\>\<\/head\>\<\/m\>\<tg\>\<t\>$5\<\/t\>\<\/tg\>\<\/mg\>\<\/e\>\<com\>$6\<\/com\>\<\/entry\>$7/g;
 s/\n([^+:"\n]*)(\+[^:"]*):(.*?)\ ([^"; ]+)\ *(|\"[^"]*\"\ *)(\;\ *!.*?|\;)\ *(\n)/\n\<entry\>\<lg\>\<l\>$1\<\/l\>\<stg\>\<st\ erzContlex\=\"$4\"\>$3\<\/st\>\<\/stg\>\<\/lg\>\<pos\>\<\/pos\>\<e\>\<mg\>\<m\>\<head\>\<tags\>$2\<\/tags\>\<\/head\>\<\/m\>\<tg\>\<t\>$5\<\/t\>\<\/tg\>\<\/mg\>\<\/e\>\<com\>$6\<\/com\>\<\/entry\>$7/g;

##Especially for nouns
##correcting continuation reading found in original
# _$4_ is dropped out in favor of _osh_
s/(ц|з|ж|ч|с|ш|щ)(ь|)(\<\/l\>\<stg\>\<st\ erzContlex\=\")(kal)(\-N\"\>)/$1$2$3osh$5/g;

#esthetics cleaning up <t/>
s/(\<tg\>\<t\>)\"([^<]*)\"\ *(\<\/t\>\<\/tg\>)/$1$2$3/g;

#Providing pos
#+Adj
s/(\<pos\>)(\<\/pos\>\<e\>\<mg\>\<m\>\<head\>\<tags\>)\+(A)dj(\+|\<)/$1$3$2$4/g;
#+NCom
s/(\<pos\>)(\<\/pos\>\<e\>\<mg\>\<m\>\<head\>\<tags\>)\+(N)Com(\+|\<)/$1$3$2$4/g;
#+POSTP
s/(\<pos\>)(\<\/pos\>\<e\>\<mg\>\<m\>\<head\>\<tags\>)\+(P)ostp(\+|\<)/$1$3OSTP$2$4/g;
#+Verb
s/(\<pos\>)(\<\/pos\>\<e\>\<mg\>\<m\>\<head\>\<tags\>)\+(V)erb(\+|\<)/$1$3$2$4/g;

###
    
print ;    

    
    
    

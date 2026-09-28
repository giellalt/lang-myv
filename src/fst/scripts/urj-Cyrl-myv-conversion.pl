#!/usr/bin/perl -w
#
# svn copied from smi-smj-conversion.pl
# Convert names in the URJ-CYRL propernoun lexicon to myv when developed.
# $Id$

use strict;
use utf8;
use feature 'unicode_strings';
BEGIN {
       $| = 1;
       binmode(STDIN, ':encoding(UTF-8)');
       binmode(STDOUT, ':encoding(UTF-8)');
}
use open qw( :encoding(UTF-8) :std );

while(<>) {
	# Continuation lexicon substitutions:
    #	s/ C-FI-NEN/nen LONDON/g ;
    	s/ PROP-PLC_VELE/ PROP_VELE/g ;
    	s/ PROP-PLC_KUDO/ PROP_KUDO/g ;
    	s/ PROP_RUS_JA/ PROP_KUDO/g ;
        s/(о|а|я|ё|у|ю) CYRL-VOW_SUR/$1 PROP_KUDO_sur/g ;
        s/(е|ы|и|э) CYRL-VOW_SUR/$1 PROP_VELE_sur/g ;
        s/(е|ы|и|э) PROP_KUDO/$1 PROP_VELE/g ;
	s/(о|а|я|ё|у|ю)(|[бвгджзклмнпрстфхцчш]+)(с|нс|мс|ц|кс) CYRL-SIBILANT_SUR/$1$2$3 PROP_BS_sur/g ;
	s/(е|ы|и|э)(|[бвгджзклмнпрстфхцчш]+)(с|нс|мс|ц|кс) CYRL-SIBILANT_SUR/$1$2$3 PROP_FS_sur/g ;

	s/(о|а|я|ё|у|ю)(|[бвгджзклмнпрстфхцчш]+)(с|нс|мс|ц|кс) (PROP_KAL|PROP_OSH)/$1$2$3 PROP_BS/g ;
	s/(е|ы|и|э)(|[бвгджзклмнпрстфхцчш]+)(с|нс|мс|ц|кс) (PROP_KAL|PROP_OSH)/$1$2$3 PROP_FS/g ;
	
	s/(о|а|я|ё|у|ю)(ч|ш|ж) CYRL-SIBILANT_SUR/$1$2 PROP_BSH_sur/g ;
	s/(е|ы|и|э)(ч|ш|ж) CYRL-SIBILANT_SUR/$1$2 PROP_FSH_sur/g ;
	
	s/(о|а|я|ё|у|ю)(ч|ш|ж) (PROP_KAL|PROP_OSH)/$1$2 PROP_BSH/g ;
	s/(е|ы|и|э)(ч|ш|ж) (PROP_KAL|PROP_OSH)/$1$2 PROP_FSH/g ;
	
	s/(о|а|я|ё|у|ю)(д|л|н|р) CYRL-SIBILANT_SUR/$1$2 PROP_BL_sur/g ;
	s/(е|ы|и|э)(д|л|н|р) CYRL-SIBILANT_SUR/$1$2 PROP_FL_sur/g ;
	
	s/(е|ы|и|э)(|[бвгджзклмнпрстфхцчш]+)(д|л|н|р) PROP_KAL/$1$2$3 PROP_FL/g ;
	s/(д|л|н|р)(ь) PROP_KAL/$1$2 PROP_L1/g ;
	
	s/(о|а|я|ё|у|ю)(т) CYRL-T_SUR/$1$2 PROP_BT_sur/g ;
	s/(е|ы|и|э)(т) CYRL-T_SUR/$1$2 PROP_FT_sur/g ;
	s/(ть) (CYRL-T_SUR|CYRL-CONS_SUR)/$1 PROP_T1_sur/g ;
	
	s/(о|а|я|ё|у|ю)(|[бвгджзклмнпрстфхцчш]+)(т) PROP_KAL/$1$2$3 PROP_BT/g ;
	s/(е|ы|и|э)(|[бвгджзклмнпрстфхцчш]+)(т) PROP_KAL/$1$2$3 PROP_FT/g ;
	s/(ть) PROP_KAL/$1 PROP_T1/g ;
	s/(й) PROP_KAL/$1 PROP_J/g ;
	s/(сь) (PROP_KAL|PROP_OSH)/$1 PROP_S1/g ;
	s/(зь) (PROP_KAL|PROP_OSH)/$1 PROP_Z1/g ;
	
	s/(о|а|я|ё|у|ю)(|[бвгжкмпфхчш]+)(к) (CYRL-K_SUR)/$1$2$3 PROP_BK_sur/g ;
	s/(е|ы|и|э)(|[бвгжкмпфхчш]+)(к) (CYRL-K_SUR)/$1$2$3 PROP_FK_sur/g ;

	s/(о|а|я|ё|у|ю)(|[бвгжкмпфхчш]+)(к) PROP_KAL/$1$2$3 PROP_BK/g ;
	s/(е|ы|и|э)(|[бвгжкмпфхчш]+)(к) PROP_KAL/$1$2$3 PROP_FK/g ;
	s/(е|ы|и|э)(б|в|г|м|п|ф|х)(ь) PROP_KAL/$1$2$3 PROP_FV1/g ;
	s/(о|а|я|ё|у|ю)(б|в|г|м|п|ф|х)(ь) PROP_KAL/$1$2$3 PROP_BV1/g ;
	s/(ж|ч|ш)(ь) PROP_KAL/$1$2 PROP_CH1/g ;

	s/(о|а|я|ё|у|ю)(д|з|л|н|р|с|т|ц)(к) CYRL-SIBILANT_SUR/$1$3$2 PROP_BRK_sur/g ;
	s/(е|ы|и|э)(д|з|л|н|р|с|т|ц)(к) CYRL-SIBILANT_SUR/$1$2$3 PROP_FRK_sur/g ;
	
	s/(о|а|я|ё|у|ю)(д|з|л|н|р|с|т|ц)(к) PROP_KAL/$1$3$2 PROP_BRK/g ;
	s/(е|ы|и|э)(д|з|л|н|р|с|т|ц)(к) PROP_KAL/$1$2$3 PROP_FRK/g ;

	s/(о|а|я|ё|у|ю)(б|в|г|м|п|ф|х) CYRL-SIBILANT_SUR/$1$2 PROP_BV_sur/g ;
	s/(е|ы|и|э)(б|в|г|м|п|ф|х) CYRL-SIBILANT_SUR/$1$2 PROP_FV_sur/g ;
	s/(о|а|я|ё|у|ю)(б|в|г|м|п|ф|х) PROP_KAL/$1$2 PROP_BV/g ;
	s/(е|ы|и|э)(б|в|г|м|п|ф|х) PROP_KAL/$1$2 PROP_FV/g ;

# Proper name ends in numeral or symbol in Erzya
#!Поригон-2+N+Prop:Поригон-2 PROP_KAL "(NA) Porygon2" ;
#DIGITAL_NUMBER
	s/([0-9]|♂|♀) PROP_(KAL|KUDO|OSH|KAL_PLC)/$1 DIGITAL_NUMBER/g ;

# names with Erzya inflection
# This means the word is present in a lexicon other than urj-Cyrl-propernames
#        s/^Железные% Руки\+/!Железные% Руки\+/g ;

#	s/SUND/BERN/g ;
#	s/HEIM/BERN/g ;
#	s/NIKOSIIJA/ACCRA/g ;
#	s/SIJTE/ACCRA/g ;
#	s/BALAK/ANAR/g ;
#	s/HAWAII/ACCRA/g ;
#	s/SKANIK/SULLOT/g ;
#
#	# SME escape char deletion:
#	s/j9/j/g ;
#	s/7 / /g ;
#	s/8 / /g ;
#	s/9 / /g ;
#
#	# SMJ escape char insertion:
#	s/ss /ss9 /g ;
#	s/st /st9 /g ;
#
#	# Substitutions due to orthographic differences between SMJ and SME:
#	s/t:(.*)h /t:$1d9 /g ;
#	s/čč/ttj/g ;
#	s/Č/Tj/g ;
#	# Andreevič -> Andreevitj:
#	s/^(.*)č /$1tj:$1t9j /g ;
#	s/č/tj/g ;
#	s/šž/sjtj/g ;
#	s/Šž/Sjtj/g ;
#	s/šš/ssj/g ;
#	s/žž/dtj/g ;
#	s/Š/Sj/g ;
#	s/š/sj/g ;
#	s/ž/dj/g ;
#	# j->i || Vow i .* : .* Vow _ ; Heaika:Heajka -> Heaika:Heaika. But Majken 	
#	s/([ÁAEIOUaáeiou])i(.*):(.*)([ÁAEIOUaáeiou])j/$1i$2:$3$4i/g ;
#
#	my $line = $_;
#
#	# Special treatment of æ in SMJ:
#	if ($line =~ /æ/) {
#			# Replace space in multipart names temporarily with $.
#		$line =~ s/% /\$/g;
#		
#		$line =~ s/^\s+//;
#		
#		my ($word, $rest) = split (/\s+/, $line, 2);
#		$word =~ s/\$/% /g;
#		if ($line !~ /\:/) {
#			( my $int_word = $word )     =~ s/æ/æ9/g;
#			$int_word =~ s/ä/ä9/g;
#			$line = $word . ":" . $int_word . " " . $rest;
#		}
#		else {
#			my ($upper, $lower) = split(/\:/, $word);
#			( my $int_word = $lower )     =~ s/æ/æ9/g;
#			$int_word =~ s/ä/ä9/g;
#			$line = $upper . ":" . $int_word . " " . $rest;
#		}
#	}
	print $line;
}


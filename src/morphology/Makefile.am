## Process this file with automake to produce Makefile.in

## Copyright (C) 2011 Samediggi

## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Set this to name of lexc file containing Multichar_Symbols and LEXICON Root
GT_LEXC_ROOT=root.lexc

# Set this to the names of all other source lexc files
GT_LEXC_SRCS=\
			stems/abbr.lexc		\
			stems/acro.lexc		\
			stems/exceptions.lexc	\
			stems/punct.lexc	\
			stems/urj-Cyrl-propernouns.lexc	\
			stems/rusMaleNameDer.lexc	\
			affixes/adjectives.lexc  \
			affixes/adverbs.lexc  \
			affixes/clitics.lexc  \
			affixes/nouns.lexc       \
			affixes/pronouns.lexc    \
			affixes/propernouns.lexc \
			affixes/quantifiers.lexc \
			affixes/verbs.lexc

#			stems/rusSurDer.lexc	
#### GENERATED_LEXC_SRCS=stems/smi-$(GTLANG)-propernouns.lexc
# Set this to the names of all generated lexc files, if any
GENERATED_LEXC_SRCS=\
			stems/adjective-adverb-modifiers.lexc              \
			stems/adjectives.lexc                              \
			stems/adverbs.lexc                                 \
			stems/bahuvrihis.lexc                              \
			stems/conjunctions.lexc                            \
			stems/demonstratives.lexc                          \
			stems/interjections.lexc                           \
			stems/noun-common.lexc                             \
			stems/noun-deverbal.lexc                           \
			stems/noun-proper-animate-femalenames.lexc         \
			stems/noun-proper-animate-malenames.lexc           \
			stems/noun-proper-animate-names.lexc               \
			stems/noun-proper-femalenames-cyrillic.lexc        \
			stems/noun-proper-inanimate.lexc                   \
			stems/noun-proper-malenames-cyrillic.lexc          \
			stems/noun-proper.lexc                             \
			stems/participles.lexc                             \
			stems/particles.lexc                               \
			stems/postpositions.lexc                           \
			stems/pronouns.lexc                                \
			stems/quantifiers.lexc                             \
			stems/verbs.lexc 

#			stems/urj-Cyrl-$(GTLANG)-propernouns.lexc        
# Set this to the names of all source xml files, if any
GT_XML_SRCS=\
			stems/adjective-adverb-modifiers.xml              \
			stems/adjectives.xml                              \
			stems/adverbs.xml                                 \
			stems/bahuvrihis.xml                              \
			stems/conjunctions.xml                            \
			stems/demonstratives.xml                          \
			stems/interjections.xml                           \
			stems/noun-common.xml                             \
			stems/noun-deverbal.xml                           \
			stems/noun-proper-animate-femalenames.xml         \
			stems/noun-proper-animate-malenames.xml           \
			stems/noun-proper-animate-names.xml               \
			stems/noun-proper-femalenames-cyrillic.xml        \
			stems/noun-proper-inanimate.xml                   \
			stems/noun-proper-malenames-cyrillic.xml          \
			stems/noun-proper.xml                             \
			stems/participles.xml                             \
			stems/particles.xml                               \
			stems/postpositions.xml                           \
			stems/pronouns.xml                                \
			stems/quantifiers.xml                             \
			stems/verbs.xml  		

#stems/urj-Cyrl-$(GTLANG)-propernouns.lexc: stems/urj-Cyrl-propernouns.lexc  stems/$(GTLANG)-propernouns.lexc
#	rm -f $@
#	cp -f stems/$(GTLANG)-propernouns.lexc $@
#	echo "! <--- Dump from URJ-CYRL -->" >> $@
#	$(top_srcdir)/src/scripts/urj-Cyrl-$(GTLANG)-conversion.pl $< >> $@




include $(top_srcdir)/am-shared/lexc-include.am

# vim: set ft=automake:

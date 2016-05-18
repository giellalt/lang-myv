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

# Add language-specific flags for hfst-lexc compilation here:
HFST_LEXC_LOCAL_FLAGS=

# Set this to name of lexc file containing Multichar_Symbols and LEXICON Root
GT_LEXC_ROOT=root.lexc

# Set this to the names of all regular lexc source files:
GT_LEXC_SRCS_L1_L2=\
			stems/abbreviations.lexc          \
			stems/acronyms.lexc               \
			stems/punctuation.lexc            \
			stems/numerals.lexc               \
			compounding.lexc                  \
			affixes/clitics.lexc              \
			stems/exceptions.lexc             \
			stems/hyphenated-nouns.lexc       \
			stems/hyphenated-verbs.lexc       \
			stems/adjectives_newwords.lexc    \
			stems/adjectives-russian-like_newwords.lexc \
			stems/adverbs_newwords.lexc       \
			stems/nouns_newwords.lexc         \
			stems/propernouns_newwords.lexc   \
			stems/verbs_newwords.lexc         \
			stems/rusMaleNameDer.lexc         \
			affixes/adjectives.lexc           \
			affixes/adpositions.lexc          \
			affixes/adverbs.lexc              \
			affixes/interjections.lexc        \
			affixes/nonverbalConjugation.lexc \
			affixes/nouns.lexc                \
			affixes/possessorindices.lexc     \
			affixes/pronouns.lexc             \
			affixes/propernouns.lexc          \
			affixes/quantifiers.lexc          \
			affixes/verbs.lexc

#			stems/rusMaleNameDer.lexc
#			stems/rusSurDer.lexc

# If you are building an error-detecting L2 analyser, specify the lexc files
# that differ between the regular L1 and the L2 analysers below, in L1 and
# L2 respectively. L2 files must end in "*-L2.lexc". See SME for an example.
L1=

L2=

GT_LEXC_SRCS=\
			$(GT_LEXC_SRCS_L1_L2) \
			$(L1)

GT_LEXC_L2_SRCS=\
			$(GT_LEXC_SRCS_L1_L2) \
			$(L2)

# Set this to the names of all generated lexc files, if any
GENERATED_LEXC_SRCS=\
		generated_files/urj-Cyrl-propernouns.lexc \
		$(srcdir)/stems/A_myv2x.lexc         \
		$(srcdir)/stems/Adp_myv2x.lexc        \
		$(srcdir)/stems/Adv_myv2x.lexc            \
		$(srcdir)/stems/Adv_Ideoph_myv2x.lexc     \
		$(srcdir)/stems/Adv_Spat_myv2x.lexc     \
		$(srcdir)/stems/bahuvrihis.lexc         \
		$(srcdir)/stems/conjunctors.lexc        \
		$(srcdir)/stems/Det_myv2x.lexc     \
		$(srcdir)/stems/Interj_myv2x.lexc      \
		$(srcdir)/stems/N_myv2x.lexc              \
		$(srcdir)/stems/noun-deverbal.lexc      \
		$(srcdir)/stems/Prc_myv2x.lexc        \
		$(srcdir)/stems/Pcle_myv2x.lexc          \
		$(srcdir)/stems/Pron_myv2x.lexc           \
		$(srcdir)/stems/N_Prop_myv2x.lexc        \
		$(srcdir)/stems/quantifiers.lexc        \
		$(srcdir)/stems/verbs-A2M.lexc          \
		$(srcdir)/stems/verbs-N2END.lexc

# Set this to the names of all source xml files, if any
GT_XML_SRCS=\
		stems/A_myv2x.xml      \
		stems/Adp_myv2x.xml     \
		stems/Adv_myv2x.xml         \
		stems/Adv_Ideoph_myv2x.xml  \
		stems/Adv_Spat_myv2x.xml  \
		stems/bahuvrihis.xml      \
		stems/conjunctors.xml     \
		stems/Det_myv2x.xml  \
		stems/Interj_myv2x.xml   \
		stems/N_myv2x.xml           \
		stems/noun-deverbal.xml   \
		stems/Prc_myv2x.xml     \
		stems/Pcle_myv2x.xml   	  \
		stems/N_Prop_myv2x.xml     \
		stems/Pron_myv2x.xml        \
		stems/quantifiers.xml     \
		stems/verbs-A2M.xml       \
		stems/verbs-N2END.xml

# Define any additional lexc sources here (compiled on their own):
GT_LOCAL_SRCS=

# Define local xfscripts here:
GT_LOCAL_XFSCRIPT_SRCS=

# Define here any additional sources just included in the distro:
GT_DISTRO_SRCS=

### BEGIN: Local processing: ###

generated_files/urj-Cyrl-propernouns.lexc: \
	$(GTCORE)/giella-shared/urj-Cyrl/src/morphology/stems/urj-Cyrl-propernouns.lexc
	$(AM_V_at)$(MKDIR_P) generated_files
	$(AM_V_GEN)cp -f $< $@

### END: Local processing: ###

include $(top_srcdir)/am-shared/src-morphology-dir-include.am

# vim: set ft=automake:

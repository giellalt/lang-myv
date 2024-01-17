## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

SUBDIRS = fst cg3

#################################################
#### Add language-specific build rules here: ####

# Borrowed from sms 2022-03-27
# We need special treatment of the disamb fst going to further pmatch processing
# mainly due to the target pattern, thus listed here. The rule body and the
# dependencies should be the same as the regular disamb analysers below:
analyser-pmatchdisamb-gt-desc.hfst: analyser-pmatchdisamb-gt-desc.tmp.hfst \
				filters/remove-norm-comp-tags.hfst             \
				filters/remove-derivation-position-tags.hfst   \
				filters/remove-orig_lang-tags.hfst             \
				filters/rename-POS_before_Der-tags.hfst        \
				filters/remove-usage-tags.hfst
	$(AM_V_HXFST)$(PRINTF) "read regex \
			@\"filters/remove-usage-tags.hfst\"               \
		.o. @\"filters/remove-derivation-position-tags.hfst\" \
		.o. @\"filters/remove-norm-comp-tags.hfst\"           \
		.o. @\"filters/remove-orig_lang-tags.hfst\"           \
		.o. @\"filters/rename-POS_before_Der-tags.hfst\"      \
		.o. @\"$<\"                                           \
		;\n\
	invert net\n\
	save stack $@\n\
	quit\n" | $(HFST_XFST) -p $(MORE_VERBOSITY)


# Special case for the disamb analyser, since it follows the same filename
# pattern as the raw fst:
analyser-disamb-gt-desc.%: analyser-disamb-gt-desc.tmp.%           \
					filters/remove-derivation-position-tags.%      \
					filters/remove-norm-comp-tags.%                \
					filters/remove-orig_lang-tags.%                \
					filters/remove-dialect-tags.%                  \
					filters/remove-homonymy-tags.%                 \
					filters/rename-POS_before_Der-tags.%           \
					filters/remove-usage-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-usage-tags.$*\"                    \
			.o. @\"filters/remove-derivation-position-tags.$*\"      \
			.o. @\"filters/remove-orig_lang-tags.$*\"                \
			.o. @\"filters/remove-dialect-tags.$*\"                  \
			.o. @\"filters/remove-homonymy-tags.$*\"                 \
			.o. @\"filters/remove-norm-comp-tags.$*\"                \
			.o. @\"filters/rename-POS_before_Der-tags.$*\"           \
			.o. @\"$<\"                                              \
			;\n\
		 $(INVERT_HFST)\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

include $(top_srcdir)/../giella-core/am-shared/src-dir-include.am

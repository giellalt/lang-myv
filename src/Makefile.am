## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# order is always . last here
SUBDIRS = phonology morphology filters phonetics hyphenation orthography syntax .

#### Local modifications in *fst processing: ####
####
#### Replace the 'cp' command with whatever you need to complete
#### the processing to get the final target transducer (but leave the 'rm').
#### Remember to add the dependencies as well.
#### Also make sure that HFST and Xerox processing are the same.

#### HFST transducer targets:
analyser.gt.hfst: analyser.gt.hfst.tmp
	cp -f $< $@
	rm -f $<

generator.gt.hfst: generator.gt.hfst.tmp
	cp -f $< $@
	rm -f $<

#### Xerox transducer targets:
analyser.gt.xfst: analyser.gt.xfst.tmp
	cp -f $< $@
	rm -f $<

generator.gt.xfst: generator.gt.xfst.tmp
	cp -f $< $@
	rm -f $<

include $(top_srcdir)/am-shared/topdir-include.am


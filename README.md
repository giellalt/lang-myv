The Erzya morphology and tools
==========================================

[![GitHub issues](https://img.shields.io/github/issues-raw/giellalt/lang-myv)](https://github.com/giellalt/lang-myv/issues)
[![Build Status](https://divvun-tc.thetc.se/api/github/v1/repository/giellalt/lang-myv/main/badge.svg)](https://github.com/giellalt/lang-myv/actions)
[![License](https://img.shields.io/github/license/giellalt/lang-myv)](https://github.com/giellalt/lang-myv/blob/main/LICENSE)
[![Desktop speller download](https://img.shields.io/badge/download%40latest-desktop--bhfst-brightgreen)](https://pahkat.uit.no/main/download/speller-myv?platform=desktop&channel=nightly)
[![Mobile speller download](https://img.shields.io/badge/download%40latest-mobile--bhfst-brightgreen)](https://pahkat.uit.no/main/download/speller-myv?platform=mbile&channel=nightly)

This repository contains finite state source files for the Erzya language,
for building morphological analysers, proofing tools
and dictionaries. The data and implementation are licenced under GNU GPL
licence, also detailed in the
[LICENSE](https://github.com/giellalt/lang-myv/blob/main/LICENSE). The
authors named in the AUTHORS file are available to grant other licencing
choices.

Install proofing tools and [keyboards](https://github.com/giellalt/keyboard-myv)
for the Erzya language by using the [Divvun Installer](http://divvun.no)
(some languages are only available via the nightly channel).

Cite
------

Rueter, J., Hämäläinen, M., & Partanen, N. (2020). [Open-Source Morphology for Endangered Mordvinic Languages](https://www.aclweb.org/anthology/2020.nlposs-1.13/). In Proceedings of Second Workshop for NLP Open Source Software (NLP-OSS) (pp. 94–100). The Association for Computational Linguistics.

    @inproceedings{rueter-etal-2020-open,
        title = "Open-Source Morphology for Endangered Mordvinic Languages",
        author = {Rueter, Jack  and
          H{\"a}m{\"a}l{\"a}inen, Mika  and
          Partanen, Niko},
        booktitle = "Proceedings of Second Workshop for NLP Open Source Software (NLP-OSS)",
        month = nov,
        year = "2020",
        address = "Online",
        publisher = "Association for Computational Linguistics",
        url = "https://aclanthology.org/2020.nlposs-1.13",
        doi = "10.18653/v1/2020.nlposs-1.13",
        pages = "94--100"
    }

Download and test speller files
-------------------------------

The speller files downloadable at the top of this page (the `*.bhfst` files) can
be used with [divvunspell](https://github.com/divvun/divvunspell), to test their
performance. These files are the exact same ones as installed on users' computers
and mobile phones. Desktop and mobile speller files differ from each other in the
error model and should be tested separately — thus also two different downloads.

Documentation
-------------

Documentation can be found at:

- [Language specific documentation](https://giellalt.github.io/lang-myv/)
- [General documentation](https://giellalt.github.io/)

Core dependencies
-----------------

In order to compile and use Erzya language morphology and
dictionaries, you need:

- an FST compiler: [HFST](https://github.com/hfst/hfst), [Foma](https://github.com/mhulden/foma) or [Xerox Xfst](https://web.stanford.edu/~laurik/fsmbook/home.html)
- [VislCG3](https://visl.sdu.dk/svn/visl/tools/vislcg3/trunk) Constraint Grammar tools

To install VislCG3 and HFST, just copy/paste this into your Terminal on **Mac OS X**:

```
curl https://apertium.projectjj.com/osx/install-nightly.sh | sudo bash
```

or terminal on **Ubuntu, Debian or Windows Subsystem for Linux**:

```
wget https://apertium.projectjj.com/apt/install-nightly.sh -O - | sudo bash
sudo apt-get install cg3 hfst
```

or terminal on **RedHat, Fedora, CentOS or Windows Subsystem for Linux**:

```
wget https://apertium.projectjj.com/rpm/install-nightly.sh -O - | sudo bash
sudo dnf install cg3 hfst
```

Alternatively, the Apertium wiki has good instructions on how to [install the dependencies for Mac
OS X](https://wiki.apertium.org/wiki/Apertium_on_Mac_OS_X) and how to [install
the dependencies on
linux](https://wiki.apertium.org/wiki/Installation_of_grammar_libraries)

Further details and dependencies are described on the GiellaLT [Getting Started](https://giellalt.uit.no/infra/GettingStarted.html) pages.

Downloading
-----------

Using Git:
```
git clone https://github.com/giellalt/lang-myv
```

Using Subversion:
```
svn checkout https://github.com/giellalt/lang-myv.git/trunk lang-myv
```

Building and installation
-------------------------

[INSTALL](https://github.com/giellalt/lang-myv/blob/main/INSTALL)
describes the GNU build system in detail, but for most users it is the usual:

```sh
./autogen.sh # This will automatically clone or check out other GiellaLT dependencies
./configure
make
(as root) make install
```


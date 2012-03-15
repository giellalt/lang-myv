#!/bin/sh

/usr/local/bin/hfst-compose-intersect -1 all-myv-lex.lexc.hfst twol-myv.twol.hfst | hfst-minimize|hfst-invert  -o allMyv-gen.hfst


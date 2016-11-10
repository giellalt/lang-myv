# -*- coding:utf-8 -*-
import re, os, errno, cgi, json, xml
import sys, codecs, locale, getopt
import xml.etree.ElementTree as ET
from subprocess import Popen, PIPE
from operator import itemgetter
from xml.dom.minidom import parse, parseString
from imp import reload
from collections import defaultdict

def main():
    # to be adjusted as needed
    in_dir = 'out_put_test'
    out_dir = 'analyzed_'+in_dir
    cwd = os.getcwd()
    out_dir_path = os.path.join(cwd,out_dir)
    if not os.path.exists(out_dir_path):
        os.mkdir(out_dir_path)

    # parameters to be adjusted as needed
    lang = 'myv'
    ppproc = Popen('which preprocess', shell=True, stdout=PIPE, stderr=PIPE)
    opproc, epproc = ppproc.communicate()
    print("___ preprocess is ",opproc.decode())
    if not opproc.decode():
    	print('No preprocess found, please install it!')
    	sys.exit()

    pproc = opproc.decode().strip()
    plup = Popen('which lookup', shell=True, stdout=PIPE, stderr=PIPE)
    olup, elup = plup.communicate()
    print("___ lookup is ",olup.decode())
    if not olup.decode():
        print('No lookup found, please install it!')
        sys.exit()

    lookup = olup.decode().strip()
    langs_dir = '$GTHOME/langs/'
    rel_abbr_file = '/tools/preprocess/abbr.txt'
    abs_abbr_file = langs_dir+lang+rel_abbr_file

    # command to analyse the input string comming from the left of the pipeline
    cmd = "| " + pproc + " --abbr=" + abs_abbr_file + "| " + lookup + " $GTHOME/langs/myv/src/analyser-gt-norm.xfst"
#    cmd = "| " + pproc
#    cmd = "| " + pproc + " --abbr=" + abs_abbr_file + "umyvNorm|lookup2cg|vislcg3 -g src/syntax/disambiguation.cg3"

    for root, dirs, files in os.walk(in_dir): # Walk directory tree
        print("Input dir {0} with {1} files ...".format(root, len(files)))

        for f in files:
            if f.endswith('xml'):
                print('... processing ', str(f))
                tree = ET.parse(os.path.join(in_dir,f))
                f_root = tree.getroot()

                sentences = f_root.findall('.//sent')
                for sent in sentences:
                    c_sent = sent.text

                    new_file="text_tmp.txt"
                    cf= os.path.join(out_dir_path,new_file)
                    current_file_out = open(cf, 'w')
                    print(c_sent, end="", file=current_file_out)
                    current_file_out.close()
                    p = Popen('cat '+str(cf)+cmd, shell=True, stdout=PIPE, stderr=PIPE)
                    out, err = p.communicate()

#                    print("|", out.decode(),"|")
                    cohorts = out.decode().split("\n\n")
                    s="";


                    for cohort in cohorts:
                        line = cohort.split("\n")
                        if str(line[0]) and "¶" not in str(line[0]):
                            print("_", line[0], "_")
                            pitems=line[0].split("+")
                            s=s+str(pitems[0])
                            if len(pitems) > 1:
                                s=s+"\t"+str(pitems[1])
                                s=s+"\n"

                    sent.text = "\n"+s
                    #print("|", s,"|")

                tree.write(os.path.join(out_dir_path,str(f)),
                            xml_declaration=True,encoding='utf-8',
                            method="xml")
                print('DONE ', f, '\n\n')

if __name__ == "__main__":
    reload(sys)
    main()

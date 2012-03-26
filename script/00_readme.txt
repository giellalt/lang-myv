How to get a monolingual mvy-dict in apertium format.

1. transform the input file into Jack's apertium format.

xslt2 ERZYA-DICT.xml erzya2apertium.xsl > erzya4apertium.xml

2. transform back the sub-optimal apertium format in erzya4apertium.xml
into the format expected by the apertium dictools.

java -Xmx2048m -Dfile.encoding=UTF8 net.sf.saxon.Transform -it main naive_apertim2apertium_input.xsl inFile=erzya4apertium.xml

3. using the apertium-dixtools, transform the input format for apertium into the final xml format optimized for search for the ajax-scripts.

./apertium-dixtools dix2trie output/erzya4apertium.xml lr myv-def-lr-trie.xml 

NB - "def" in the output file name stands for "definition", i.e., this is
     a monolingual dictionary.





I. How to get a monolingual mvy-dict in apertium format.

1. transform the input file into Jack's apertium format.

xslt2 ERZYA-DICT.xml erzya2apertium.xsl > erzya4apertium.xml

2. transform back the sub-optimal apertium format in erzya4apertium.xml
into the format expected by the apertium dictools.

java -Xmx2048m -Dfile.encoding=UTF8 net.sf.saxon.Transform -it main subopt_ap2ap_input.xsl inFile=mdf2fin4apertium.xml


3. using the apertium-dixtools, transform the input format for apertium into the final xml format optimized for search for the ajax-scripts.

./apertium-dixtools dix2trie output/erzya4apertium.xml lr myv-def-lr-trie.xml 

NB - "def" in the output file name stands for "definition", i.e., this is
     a monolingual dictionary.

II. merging fin-translation into the existing working files

 task: 
   - merge AddTgFin2N_MyvLexXml.xml with N_myv-lex.xml

 specification:
   - add the Finnish translation to the first tg of the first e element of an entry

{Clarification of specification: the tg _translation group with lang attribute value fin_ must be created where nonexistent. In theory, and I hope in practice, there should be no instances where the tg/@lang='fin' element already exists AND I want to merge more information, i.e. another tg element or even a t element.}
{LOCATION: The tg element comes directly after it's singular m sibling. There might be another tg element present, e.g., tg/@lang='rus'. ALLOW us to utilize alphabetical ordering, i.e., _fin_ preceeds _rus_ but would follow _eng_.}


Problem: semi-structured infos in the transaltion elements in AddTgFin2N_MyvLexXml.xml


   <entry>
      <lg>
         <l>авака левкс</l>
         <stg>
            <st/>
         </stg>
      </lg>
      <pos/>
      <e>
         <mg>
            <m>
               <head>
                  <tags/>
               </head>
            </m>
            <tg lang="fin">
               <t>naaraspentu; äitinsä kaltainen, äitiinsä tullut, сон авака левкс hän on tullut äitiinsä</t>
            </tg>
         </mg>
      </e>
   </entry>

1. question: is this structure be transfered as 2 meaning groups (semicolon as separator) in which the first one contains
only one t-element and the second one 3 (comma as separator)

{answer 1. do not break into separate elements.}

2. question: if so which meaning to match with the first one of the first e element in the N_xxx-file?
   Even worse, the N_xxx-file does not possess any t-elements!
{answer 2. no splitting no reordering. 2a. As noted above a tg element with lang attribute value fin must be created and a child element t to boote.}
   <entry>
      <lg>
         <l>авака левкс</l>
         <stg>
            <st erzContlex="osh-N">авака левкс</st>
         </stg>
      </lg>
      <pos>N</pos>
      <phonet>avaka ľæwks</phonet>
      <morphg>
         <morph type="N">авака левкссэ</morph>
         <morph type="N">авака левксэнь</morph>
         <morph type="N">авака левкске</morph>
      </morphg>
      <e>
         <mg>
            <m>
               <head/>
               <defNative>Цёрыне эли тейтерне вельть моли аванзо ёнов. Кунсолы аванзо, весенть теи аванзо
               ладсо.</defNative>
            </m>
         </mg>
         <mg>
            <m>
               <head/>
               <defNative>Лиясто эрси мурнема валокс.</defNative>
            </m>
            <xg>
               <x>А кунсолат, авака левкс, ва сайса илеенть. Тонеть, авака левкс, шка явомс авадот, муемс ялгат.</x>
               <xt/>
            </xg>
         </mg>
      </e>








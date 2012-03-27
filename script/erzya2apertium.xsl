<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fn="http://www.w3.org/2005/02/xpath-functions"
><xsl:output
encoding="UTF-8"
indent="yes"
method="xml"
omit-xml-declaration="no"
></xsl:output
><!--
In gtsvn/kt/myv the following line can be writter for deriving and Erzya-Erzya Apertium dictionary:

xsltproc -o ../../apps/dicts/apertium_dict/dics/myv-myv-lr-trie.xml script/erzya2apertium.xsl src/ERZYA-DICT.xml

Ciprian's version gets rid of the excess white space in the element texts. See 00_readme.txt for its three-step implementation. With output file "myv-def-lr-trie.xml". Thank you, Ciprian.


This was originally written March 26, 2012 by Jack Rueter. (Happy Birthday, brother Paul!)

--><xsl:template
match="/"
><root
v=""
><xsl:for-each
select="//entry"
><xsl:sort
select="lg/l"
></xsl:sort
><xsl:if
test="e/mg/m/defNative[text()] or       e/mg/tg/t[text()] or       e/mg/m/semRel or       e/mg/xg/x[text()]"
><xsl:variable
name="s-l-word"
><xsl:value-of
select="lg/l"
></xsl:value-of
></xsl:variable
><xsl:variable
name="s-l-word"
><xsl:value-of
select="lg/l"
></xsl:value-of
></xsl:variable
><xsl:variable
name="s-l-lsub"
><xsl:if
test="lg/lsub[text()]"
><xsl:text
> (Лиясо </xsl:text
><xsl:for-each
select="lg/lsub"
><xsl:choose
><xsl:when
test="preceding-sibling::lsub[position()=1]"
><xsl:text
>, </xsl:text
><xsl:value-of
select="."
></xsl:value-of
></xsl:when
><xsl:otherwise
><xsl:value-of
select="."
></xsl:value-of
></xsl:otherwise
></xsl:choose
></xsl:for-each
><xsl:text
>.) </xsl:text
></xsl:if
></xsl:variable
><xsl:variable
name="s-l-pos"
><xsl:choose
><xsl:when
test="pos[text()='A']"
><xsl:text
>уликсчи невтий</xsl:text
></xsl:when
><xsl:when
test="pos[text()='ADV']"
><xsl:text
>теема валонь ёнкс</xsl:text
></xsl:when
><xsl:when
test="pos[text()='SPAT']"
><xsl:text
>тарка невтий</xsl:text
></xsl:when
><xsl:when
test="pos[text()='TEMP']"
><xsl:text
>шка невтий</xsl:text
></xsl:when
><xsl:when
test="pos[text()='QNT']"
><xsl:text
>зняронь невтий</xsl:text
></xsl:when
><xsl:when
test="pos[text()='N']"
><xsl:text
>лем</xsl:text
></xsl:when
><xsl:when
test="pos[text()='PRON']"
><xsl:text
>лем полавтый</xsl:text
></xsl:when
><xsl:when
test="pos[text()='PROP']"
><xsl:text
>эсь лем</xsl:text
></xsl:when
><xsl:when
test="pos[text()='V']"
><xsl:text
>теема вал</xsl:text
></xsl:when
><xsl:when
test="pos[text()='VI']"
><xsl:text
>объекттэме теема вал</xsl:text
></xsl:when
><xsl:when
test="pos[text()='VT']"
><xsl:text
>объект марто теема вал</xsl:text
></xsl:when
><xsl:otherwise
></xsl:otherwise
></xsl:choose
></xsl:variable
><xsl:variable
name="t-l-etymg"
><xsl:if
test="e/etymg/etym"
><xsl:text
> [Лия кельтнесэ вастневиця, ёнонзо молиця валт:</xsl:text
><xsl:for-each
select="e/etymg/etym"
><xsl:choose
><xsl:when
test="preceding-sibling::etym[position()=1]"
><xsl:text
>, </xsl:text
><xsl:choose
><xsl:when
test="@lang='ara'"
><xsl:text
> Арабонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='deu'"
><xsl:text
> Немецень кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='dut'"
><xsl:text
> Аломасторонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='eng'"
><xsl:text
> Англань кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='esp'"
><xsl:text
> Испанонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='fin'"
><xsl:text
> Суоминь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='fra'"
><xsl:text
> Кранцузонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='grc'"
><xsl:text
> Кезэрень грекень кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='gre'"
><xsl:text
> Неень грекень кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='hun'"
><xsl:text
> Мадьяронь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='ira'"
><xsl:text
> Иранонь кельтнесэ</xsl:text
></xsl:when
><xsl:when
test="@lang='ita'"
><xsl:text
> Италиянь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='kpv'"
><xsl:text
> Зырянонь коминь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='lat'"
><xsl:text
> Латинэнь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='mdf'"
><xsl:text
> Мокшонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='myv'"
><xsl:text
> Эрзянь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='rus'"
><xsl:text
> Рузонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='sme'"
><xsl:text
> Пелевеёнксонь саамонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='tat'"
><xsl:text
> Татаронь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='tut'"
><xsl:text
> Тюрконь кельсэ</xsl:text
></xsl:when
><xsl:otherwise
><xsl:text
>АПАК СЁРМАДТ.</xsl:text
></xsl:otherwise
></xsl:choose
></xsl:when
><xsl:otherwise
><xsl:choose
><xsl:when
test="@lang='ara'"
><xsl:text
> Арабонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='cze'"
><xsl:text
> Чехень кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='deu'"
><xsl:text
> Немецень кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='dut'"
><xsl:text
> Аломасторонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='eng'"
><xsl:text
> Англань кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='esp'"
><xsl:text
> Испанонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='fin'"
><xsl:text
> Суоминь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='fra'"
><xsl:text
> Кранцузонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='grc'"
><xsl:text
> Кезэрень грекень кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='gre'"
><xsl:text
> Неень грекень кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='heb'"
><xsl:text
> Ивритэнь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='hun'"
><xsl:text
> Мадьяронь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='ira'"
><xsl:text
> Иранонь кельтнесэ</xsl:text
></xsl:when
><xsl:when
test="@lang='ita'"
><xsl:text
> Италиянь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='kpv'"
><xsl:text
> Зырянонь коминь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='lat'"
><xsl:text
> Латинэнь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='mdf'"
><xsl:text
> Мокшонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='myv'"
><xsl:text
> Эрзянь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='pol'"
><xsl:text
> Поляконь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='rus'"
><xsl:text
> Рузонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='sme'"
><xsl:text
> Пелевеёнксонь саамонь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='tat'"
><xsl:text
> Татаронь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='tut'"
><xsl:text
> Тюрконь кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='*'"
><xsl:text
> Эрзянь кезэрень кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='dial'"
><xsl:text
> Эрзянь кортавкстнэсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='shoksh'"
><xsl:text
> Шокшань кельсэ</xsl:text
></xsl:when
><xsl:when
test="@lang='1821'"
><xsl:text
> Эрзянь 1821-це иень Ёнкулясо</xsl:text
></xsl:when
><xsl:otherwise
><xsl:text
> АПАК СЁРМАДТ.</xsl:text
></xsl:otherwise
></xsl:choose
></xsl:otherwise
></xsl:choose
><xsl:choose
><xsl:when
test="constituent"
><xsl:text
> «</xsl:text
><xsl:value-of
select="constituent"
></xsl:value-of
><xsl:text
>»</xsl:text
></xsl:when
><xsl:otherwise
></xsl:otherwise
></xsl:choose
><xsl:choose
><xsl:when
test="t"
><xsl:text
> '</xsl:text
><xsl:value-of
select="t"
></xsl:value-of
><xsl:text
>' </xsl:text
></xsl:when
><xsl:otherwise
></xsl:otherwise
></xsl:choose
></xsl:for-each
><xsl:text
>]. </xsl:text
></xsl:if
></xsl:variable
><xsl:variable
name="t-l-word"
><xsl:for-each
select="e/mg"
><xsl:choose
><xsl:when
test="preceding-sibling::mg or following-sibling::mg"
><xsl:text
></xsl:text
><xsl:value-of
select="position()"
></xsl:value-of
><xsl:text
>) </xsl:text
><xsl:for-each
select="m"
><xsl:choose
><xsl:when
test="semRel[@semRelType='seeNative']"
><xsl:text
> Седе эрзякс мерить </xsl:text
><xsl:for-each
select="semRel[@semRelType='seeNative']"
><xsl:choose
><xsl:when
test="preceding-sibling::semRel"
><xsl:text
>, «</xsl:text
><xsl:value-of
select="@lemmaID"
></xsl:value-of
><xsl:text
>»</xsl:text
></xsl:when
><xsl:otherwise
><xsl:text
>«</xsl:text
><xsl:value-of
select="@lemmaID"
></xsl:value-of
><xsl:text
>»</xsl:text
></xsl:otherwise
></xsl:choose
></xsl:for-each
><xsl:text
>. </xsl:text
></xsl:when
></xsl:choose
><xsl:choose
><xsl:when
test="semRel[@semRelType='synonym']"
><xsl:text
> Лиякс мерить </xsl:text
><xsl:for-each
select="semRel[@semRelType='synonym']"
><xsl:choose
><xsl:when
test="preceding-sibling::semRel"
><xsl:text
>, «</xsl:text
><xsl:value-of
select="@lemmaID"
></xsl:value-of
><xsl:text
>»</xsl:text
></xsl:when
><xsl:otherwise
><xsl:text
>«</xsl:text
><xsl:value-of
select="@lemmaID"
></xsl:value-of
><xsl:text
>»</xsl:text
></xsl:otherwise
></xsl:choose
></xsl:for-each
><xsl:text
>. </xsl:text
></xsl:when
></xsl:choose
></xsl:for-each
><xsl:value-of
select="m/defNative"
></xsl:value-of
><xsl:if
test="tg/@lang='rus'"
><xsl:for-each
select="tg"
><xsl:text
> Рузокс мерить </xsl:text
><xsl:value-of
select="t"
></xsl:value-of
><xsl:text
>. </xsl:text
></xsl:for-each
></xsl:if
><xsl:for-each
select="xg"
><xsl:text
></xsl:text
><xsl:value-of
select="x"
></xsl:value-of
><xsl:text
></xsl:text
></xsl:for-each
></xsl:when
><xsl:otherwise
><xsl:for-each
select="m"
><xsl:choose
><xsl:when
test="semRel[@semRelType='seeNative']"
><xsl:text
> Седе эрзякс мерить </xsl:text
><xsl:for-each
select="semRel[@semRelType='seeNative']"
><xsl:choose
><xsl:when
test="preceding-sibling::semRel"
><xsl:text
>, «</xsl:text
><xsl:value-of
select="@lemmaID"
></xsl:value-of
><xsl:text
>»</xsl:text
></xsl:when
><xsl:otherwise
><xsl:text
>«</xsl:text
><xsl:value-of
select="@lemmaID"
></xsl:value-of
><xsl:text
>»</xsl:text
></xsl:otherwise
></xsl:choose
></xsl:for-each
><xsl:text
>. </xsl:text
></xsl:when
></xsl:choose
><xsl:choose
><xsl:when
test="semRel[@semRelType='synonym']"
><xsl:text
> Лиякс мерить </xsl:text
><xsl:for-each
select="semRel[@semRelType='synonym']"
><xsl:choose
><xsl:when
test="preceding-sibling::semRel"
><xsl:text
>, «</xsl:text
><xsl:value-of
select="@lemmaID"
></xsl:value-of
><xsl:text
>»</xsl:text
></xsl:when
><xsl:otherwise
><xsl:text
>«</xsl:text
><xsl:value-of
select="@lemmaID"
></xsl:value-of
><xsl:text
>»</xsl:text
></xsl:otherwise
></xsl:choose
></xsl:for-each
><xsl:text
>. </xsl:text
></xsl:when
></xsl:choose
></xsl:for-each
><xsl:value-of
select="m/defNative"
></xsl:value-of
><xsl:if
test="tg/@lang='rus'"
><xsl:for-each
select="tg"
><xsl:text
> Рузокс мерить </xsl:text
><xsl:value-of
select="t"
></xsl:value-of
><xsl:text
>. </xsl:text
></xsl:for-each
></xsl:if
><xsl:for-each
select="xg"
><xsl:text
></xsl:text
><xsl:value-of
select="x"
></xsl:value-of
><xsl:text
></xsl:text
></xsl:for-each
></xsl:otherwise
></xsl:choose
></xsl:for-each
></xsl:variable
><n
v="{$s-l-word}"
><w
v="{$s-l-word}"
><l
><xsl:copy-of
select="$s-l-word"
></xsl:copy-of
><s
n="{$s-l-pos}"
></s
></l
><r
><xsl:copy-of
select="$s-l-lsub"
></xsl:copy-of
><xsl:copy-of
select="$t-l-etymg"
></xsl:copy-of
><xsl:copy-of
select="$t-l-word"
></xsl:copy-of
></r
></w
></n
></xsl:if
></xsl:for-each
></root
></xsl:template
></xsl:stylesheet
>

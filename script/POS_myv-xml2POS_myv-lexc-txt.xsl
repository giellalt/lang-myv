<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fn="http://www.w3.org/2005/02/xpath-functions">
  <xsl:output
      encoding="UTF-8"
      indent="yes"
      method="xml"
      omit-xml-declaration="no">
  </xsl:output>
  <!--
      In gtsvn/kt/myv/src/ the following line can be written for deriving POS_myv-lex.txt files from POS_myv-lex.xml files in gtsvn/kt/myv/src/working_files/:
      
      xsltproc -o POS_myv-lex.txt ../script/POS_myv-xml2POS_myv-lexc-txt.xsl working_files/POS_myv-lex.xml
      
      This was originally written March 28, 2012 by Jack Rueter.
     
Additional requirements are:
(1) the removal of xml tags and
(2) the introduction of "% " notation where the simple " " white space is present in the lemmas and stems. 
  -->
  <xsl:template match="/">
    <ls>
      <xsl:for-each select="//entry">
	<xsl:sort select="lg/l"/>
	
	<xsl:if
	    test="not(self::entry[@exclude='fst'])">
	  
	  <xsl:for-each select="lg/stg/st">
	    <l>
	      <xsl:variable name="s-lemma">
		<xsl:value-of select="../../l"/>
	      </xsl:variable>
	      
	      <xsl:variable name="s-stem">
		<xsl:value-of select="."/>
	      </xsl:variable>
	      
	      <xsl:variable name="s-contlex">
		<xsl:value-of select="@erzContlex"/>
	      </xsl:variable>
	      
	      <xsl:variable name="s-gloss">
		<xsl:if
		    test="../../../e/mg/tg[@xml:lang='fin']">
		  <xsl:value-of select="../../../e/mg/tg[@xml:lang='fin']/t"/>
		</xsl:if>
	      </xsl:variable>
	      
	      
	      
	      <xsl:copy-of select="$s-lemma"/>
	      <xsl:text>:</xsl:text>
	      <xsl:copy-of select="$s-stem"/>
	      <xsl:text> </xsl:text>
	      <xsl:copy-of select="$s-contlex"/>
	      <xsl:text> "</xsl:text>
	      <xsl:copy-of select="$s-gloss"/>
	      <xsl:text>" ;</xsl:text>
	      
	    </l>
	    
	  </xsl:for-each>
	  
	</xsl:if>
      </xsl:for-each>
      
      
    </ls>
  </xsl:template>
</xsl:stylesheet>

<?xml version="1.0"?>
<!--+
    | 
    | compares (ped vs. smenob) and put ped-flags on smenob-entries 
    | Usage: java net.sf.saxon.Transform -it main cfSmeSmj.xsl
    +-->

<!-- java net.sf.saxon.Transform -it main THIS_SHEET.xsl inFile=FILE.xml -->

<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xs="http://www.w3.org/2001/XMLSchema"
		xmlns:local="nightbar"
		xmlns:myFn="http://whatever"
		exclude-result-prefixes="xs local myFn">

 <!--xsl:import href="mapPOS.xsl"/-->

  <xsl:strip-space elements="*"/>
  <xsl:output method="xml" name="xml"
              encoding="UTF-8"
	      omit-xml-declaration="no"
	      indent="yes"/>

  
  <!-- Input files -->
  <xsl:param name="inFile" select="'default.xml'"/>

  <!-- Output files -->
  <xsl:variable name="outDir" select="'output'"/>
  
  <!-- Patterns for the feature values -->
  <xsl:variable name="output_format" select="'xml'"/>
  <xsl:variable name="e" select="$output_format"/>
  <xsl:variable name="file_name" select="substring-before((tokenize($inFile, '/'))[last()], '.xml')"/>
  <xsl:variable name="debug" select="true()"/>
  <xsl:variable name="nl" select="'&#xa;'"/>
  
  <xsl:template match="/" name="main">
    
    <xsl:choose>
      <xsl:when test="doc-available($inFile)">
	<xsl:variable name="out">
	  <dictionary>
	    <alphabet/>
	    <sdefs>
	      <sdef n="a."/>
	      <sdef n="abr."/>
	      <sdef n="adv."/>
	      <sdef n="conj."/>
	      <sdef n="interj."/>
	      <sdef n="n."/>
	      <sdef n="n. pl."/>
	      <sdef n="num."/>
	      <sdef n="pcle."/>
	      <sdef n="postpos."/>
	      <sdef n="prepos."/>
	      <sdef n="pron."/>
	      <sdef n="proper n."/>
	      <sdef n="subjunc."/>
	      <sdef n="v."/>
	    </sdefs>
	    
	    <section id="main" type="standard">
	      <!-- constraint for smanob: this should be handled in the previous step! -->
	      <xsl:for-each select="doc($inFile)/root/n">
		
		<xsl:if test="$debug">
		  <xsl:message terminate="no">
		    <xsl:value-of select="concat('-----------------------------------------', $nl)"/>
		    <xsl:value-of select="concat('entry: ', ./w/@v, $nl)"/>
		    <xsl:value-of select="'-----------------------------------------'"/>
		  </xsl:message>
		</xsl:if>

		<e>
		  <p>
		    <l>
		      <xsl:value-of select="normalize-space(./w/@v)"/>
		      <s n="{./w/l/s/@n}"/>
		    </l>
		    <r>
		      <xsl:value-of select="normalize-space(./w/r)"/>
		    </r>
		  </p>
		</e>

	      </xsl:for-each>
	    </section>
	  </dictionary>
	</xsl:variable>
	
	<!-- indent document -->
	<xsl:result-document href="{$outDir}/{$file_name}.{$e}" format="{$output_format}">
	  <xsl:copy-of select="$out"/>
	</xsl:result-document>
	
      </xsl:when>
      <xsl:otherwise>
	<xsl:text>Cannot locate: </xsl:text><xsl:value-of select="$inFile"/><xsl:text>&#xa;</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>


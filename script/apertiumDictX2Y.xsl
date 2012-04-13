<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:fn="http://www.w3.org/2005/02/xpath-functions">
<xsl:output encoding="UTF-8" indent="yes" method="xml" omit-xml-declaration="no">
</xsl:output>
<xsl:template match="/">
  <root v="">
    <xsl:for-each select="//entry">
      <xsl:sort select="lg/l"/>
      <xsl:if test="e/mg/tg/t[text()] and not(e/mg/tg/t[text()='???'])">
	<xsl:variable name="s-l-word">
	  <xsl:value-of select="lg/l">
	  </xsl:value-of>
	</xsl:variable>
	<xsl:variable name="s-l-pos">
	  <xsl:choose>
	    <xsl:when test="pos[text()='A']">
	      <xsl:text>a.</xsl:text>
	    </xsl:when>
	    <xsl:when test="pos[text()='ADV']">
	      <xsl:text>adv.</xsl:text>
	      </xsl:when>
	      <xsl:when test="pos[text()='CC']">
	      <xsl:text>conj.</xsl:text>
	      </xsl:when>
	      <xsl:when test="pos[text()='INTERJ']">
	      <xsl:text>interj.</xsl:text>
	      </xsl:when>
	      <xsl:when test="pos[text()='N']">
		<xsl:text>n.</xsl:text>
	      </xsl:when>
	      <xsl:when test="pos[text()='PRON']">
		<xsl:text>pron.</xsl:text>
	      </xsl:when>
	      <xsl:when test="pos[text()='PROP']">
		<xsl:text>proper n.</xsl:text>
	      </xsl:when>
	    <xsl:when test="pos[text()='DEM']">
	      <xsl:text>dem</xsl:text>
	      </xsl:when>
	    <xsl:when test="pos[text()='QNT']">
	      <xsl:text>qnt</xsl:text>
	      </xsl:when>
	    <xsl:when test="pos[text()='NUM']">
	      <xsl:text>num.</xsl:text>
	      </xsl:when>
	    <xsl:when test="pos[text()='ITER']">
	      <xsl:text>ord</xsl:text>
	      </xsl:when>
	    <xsl:when test="pos[text()='PRT']">
	      <xsl:text>prt</xsl:text>
	      </xsl:when>
	      <xsl:when test="pos[text()='CS']">
	      <xsl:text>subjunc.</xsl:text>
	      </xsl:when>
	      <xsl:when test="pos[text()='V']">
		<xsl:text>v.</xsl:text>
	      </xsl:when>
	      <xsl:when test="pos[text()='VI']">
		<xsl:text>vi</xsl:text>
	      </xsl:when>
	      <xsl:when test="pos[text()='VT']">
		<xsl:text>vt</xsl:text>
	      </xsl:when>
	      <xsl:otherwise>
	      </xsl:otherwise>
	  </xsl:choose>
	</xsl:variable>
	<xsl:variable name="t-l-word">
	  <xsl:value-of select="e/mg/tg/t">
	  </xsl:value-of>
	</xsl:variable>
	<n v="{$s-l-word}">
	  <w v="{$s-l-word}">
	    <l>
	      <xsl:copy-of select="$s-l-word">
	      </xsl:copy-of>
	      <s n="{$s-l-pos}">
	      </s>
	    </l>
	    <r>
	      <xsl:copy-of select="$t-l-word">
	      </xsl:copy-of>
	    </r>
	  </w>
	</n>
      </xsl:if>
    </xsl:for-each>
  </root>
</xsl:template>
</xsl:stylesheet>


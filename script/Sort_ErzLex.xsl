<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:fn="http://www.w3.org/2005/02/xpath-functions">
  <xsl:output method="xml"
	      encoding="UTF-8"
	      omit-xml-declaration="no"
	      indent="yes"/>


<xsl:template match="/">
<r xmlns:fn="http://www.w3.org/2005/02/xpath-functions">
<xsl:choose>
<xsl:when test="//entry/lg/l">
  <xsl:for-each select="//entry">
    <xsl:sort select="lg/l"/>
    <xsl:sort select="@order"/>
    <xsl:sort select="e/mg/tg/t"/>

<xsl:copy-of select="."/>

  </xsl:for-each>
</xsl:when>
</xsl:choose>
</r>
</xsl:template>
</xsl:stylesheet>

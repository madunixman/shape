<xsl:stylesheet 
  version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

  <xsl:output method="text" />

<!--
  <xsl:template match="opt/*">
CREATE TABLE <xsl:value-of select="name()" />
  </xsl:template>
  -->

 <xsl:template match="opt/*/*">
    <xsl:value-of select="name()" />
    <xsl:text>=</xsl:text>
    <xsl:value-of select="normalize-space(text())" />
    <xsl:text>&#10;</xsl:text>
    <xsl:apply-templates />

  </xsl:template>



  <xsl:template match="text()" />
</xsl:stylesheet>

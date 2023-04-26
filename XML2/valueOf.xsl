<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="https://www.w3.org/1999/XSL/Transform">
    <xsl:template match="libro">
        <xsl:value-of select="autor"/>
    </xsl:template>
</xsl:stylesheet>
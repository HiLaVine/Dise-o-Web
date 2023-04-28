<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <body>
        <h1 style="text-aling:center">Farmacia</h1>
        <table style="border:3px solid black; margin:0 auto; color:rgb(1,1,70);">
            <tr>
                <th colspan="4" style="color:#FFF; font-size:24px; background-color:rgb(1,1,70);">Farmacia</th>
            </tr>

            <tr style="font-size:20px; background-color:#66CCFF;">
                <th>Nombre</th>
                <th>Via de administracion</th>
                <th>Contenido</th>
                <th>Precio en M.N.</th>
            </tr>
        

            <xsl:for-each select="farmacia/medicamento">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="via_administracion"/></td>
                <td><xsl:value-of select="contenido"/></td>
                <td><xsl:value-of select="precio"/></td>

            </tr>
            </xsl:for-each>
            <xsl:comment>
            <xsl:for-each select="farmacia/medicamento">
                <xsl:if test="precio &gt; 120">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="via_administracion"/></td>
                    <td><xsl:value-of select="contenido"/></td>
                    <td style="color:purple;"><xsl:value-of select="precio"/></td>
                </tr>
                </xsl:if>
            </xsl:for-each>
            </xsl:comment>
            <xsl:comment>
                <xsl:for-each select="farmacia/medicamento">
                <xsl:if test='@categoria="jarabe" &&"capusla"'>
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="via_administracion"/></td>
                    <td><xsl:value-of select="contenido"/></td>
                    <td style="color:purple;"><xsl:value-of select="precio"/></td>
                </tr>
                </xsl:if>
            </xsl:for-each>
            </xsl:comment>
            <xsl:comment>
            <xsl:for-each select="farmcia/medicamento">

<xsl:sort select="nombre"/>

<tr>
			<td><xsl:value-of select="nombre"/></td>
			<td><xsl:value-of select="viaadmin"/></td>
			<td><xsl:value-of select="contenido"/></td>
			<td><xsl:value-of select="precio"/></td>
<tr>


</xsl:for-each>


<xsl:choose>
	<xsl:when test='@categoria="capsula"'>

		<tr>
			<td><xsl:value-of select="nombre"/></td>
			<td><xsl:value-of select="viaadmin"/></td>
			<td><xsl:value-of select="contenido"/></td>
			<td><xsl:value-of select="precio"/></td>
			<td style="color:red;"><xsl:value-of select="contenido"/></td>
		<tr>

	</xsl:when>

	<xsl:when test='@categoria="jarabe"'>

		<tr>
			<td><xsl:value-of select="nombre"/></td>
			<td><xsl:value-of select="viaadmin"/></td>
			<td><xsl:value-of select="contenido"/></td>
			<td><xsl:value-of select="precio"/></td>
			<td style="color:blue;"><xsl:value-of select="contenido"/></td>
		<tr>

	</xsl:when>
</xsl:choose>
</xsl:for-each>
            </xsl:comment>
        </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
    <body>
        <h1 > store</h1>
        <table border="9">
            <tr>
                <th>Id</th>
				<th>Kind</th>
                <th>Model</th>
				<th>Colour</th>
				<th>OC</th>
				<th>Price</th>
				<th>Year</th>
				<th>Inch</th>
				<th>Battery</th>
				<th>Memory</th>
            </tr>
            <xsl:for-each select="products/product">
                <xsl:sort select="@id"/>
                <tr bgcolor="#bbff99">
					<td><xsl:value-of select="@id"/></td>
					<td><xsl:value-of select="@kind"/></td>
					<td style="text-align:center" ><xsl:value-of select="model"/></td>
                    <td><xsl:value-of select="colour"/></td>
                    <td><xsl:value-of select="oc"/></td>
                    <td><xsl:value-of select="price"/></td>
                    <td><xsl:value-of select="year"/></td>
					<td><xsl:value-of select="inch"/></td>
                    <td><xsl:value-of select="battery"/></td>
					<td><xsl:value-of select="memory"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
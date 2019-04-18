<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match='/'>
        <html> 
            <head>
                <title><chapter><xsl:apply-templates select='chapterName'></xsl:apply-templates></chapter></title>
            </head>
            <table>
               <tr> <th> Characters</th></tr>
                <xsl:apply-templates select='descendant::ulysses//said'></xsl:apply-templates>
            
            </table>
            <body>
                <xsl:apply-templates></xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    <xsl:template match='descendant::ulysses//said'>
        <tr>
            <td><xsl:apply-templates select='attribute::who'></xsl:apply-templates></td>
        </tr>
    </xsl:template>
    <xsl:template match='section'>
        <section sectionName='{@sectionName}'><xsl:apply-templates></xsl:apply-templates></section>
    </xsl:template>
    <xsl:template match='chapter'>
        <chapter chapterName='{@chapterName}'><xsl:apply-templates></xsl:apply-templates></chapter>
    </xsl:template>
    <xsl:template match='said'>
        <said who='{@who}'><xsl:apply-templates></xsl:apply-templates></said>
    </xsl:template>
    <xsl:template match='p'>
        <p><xsl:apply-templates></xsl:apply-templates></p>
    </xsl:template>
    <xsl:template match='location'>
        <location name='{@name}' lat="{@lat}" lon="{@lon}"> <xsl:apply-templates></xsl:apply-templates></location>
    </xsl:template>
    <xsl:template match='reference'>
        <span class='{@to}'><xsl:apply-templates></xsl:apply-templates></span>
    </xsl:template>
    <xsl:template match='allusion'>
        <span class='{@to}'><xsl:apply-templates></xsl:apply-templates></span>
    </xsl:template>
</xsl:stylesheet>
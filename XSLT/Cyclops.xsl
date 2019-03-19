<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match='/'>
        <html> 
            <head>
                <title>Cyclops</title>
                <h1> Cyclops</h1>
            </head>
            <body>
                <xsl:apply-templates></xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    <xsl:template match='section'>
        <span sectionName='{@sectionName}'><xsl:apply-templates></xsl:apply-templates></span>
    </xsl:template>
    <xsl:template match='chapter'>
        <span chapterName='{@chapterName}'><xsl:apply-templates></xsl:apply-templates></span>
    </xsl:template>
    <xsl:template match='said'>
        <span class='{@persName}'><xsl:apply-templates></xsl:apply-templates></span>
    </xsl:template>
    <xsl:template match='p'>
        <p><xsl:apply-templates></xsl:apply-templates></p>
    </xsl:template>
    <xsl:template match='location'>
        <span class='geo_{@lat}-{@lon}_{@name}'> <xsl:apply-templates></xsl:apply-templates></span>
    </xsl:template>
    <xsl:template match='reference'>
        <span ref='{@to}'><xsl:apply-templates></xsl:apply-templates></span>
    </xsl:template>
    <xsl:template match='allusion'>
        <span allusion='{@to}'><xsl:apply-templates></xsl:apply-templates></span>
    </xsl:template>
</xsl:stylesheet>
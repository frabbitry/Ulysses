<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>The Wanderings of Ulysses</title></head>
            <body>
                
                <h1>Lotus Eaters</h1>
                <xsl:apply-templates select="//ulysses"/>
                
            </body>
            
        </html>
    </xsl:template>
    
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="person">
        <span class="person">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="said">
        <span class="said">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="reference">
        <span class="reference">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="allusion">
        <span class="allusion">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
</xsl:stylesheet>
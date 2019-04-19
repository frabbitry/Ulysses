<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="root" select="/" as="document-node()"/>
    <xsl:variable name="apos" select='"[&apos; ]"'/>
    <xsl:template match="/">
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title><xsl:apply-templates select="//chapter/@chapterName"/></title>
                <link rel="stylesheet" type="text/css" href="ulyssesCSS.css"/>
                <link rel="stylesheet" type="text/css" href="text.css"/> <script type="text/javascript" src="ulysses_button.js">/**/</script>
               </head>
            <body>
                <xsl:comment>#include virtual="menu.html" </xsl:comment>
                <div class="sidenav">
                <ul>
                <xsl:for-each select="//location/@name => distinct-values()">
                 <xsl:sort select="current()"/>
               
                    <li><span class="sidenav" id="{replace(current(),$apos, '')}"><xsl:value-of select="current()"/></span>
                    <ul>
                        <xsl:for-each select="$root//location[@name=current()]">
                            <li>
                                <a href="#{replace(@name,$apos, '')}{position()}">
                                    <xsl:value-of select="current() ! string() ! substring(., 1,120)"/>
                                </a>
                            </li>
                        </xsl:for-each>
                    </ul>
                    </li>
                </xsl:for-each>
                </ul>
                </div>
            <div class="main">
                    <h1><xsl:apply-templates select="//section/@sectionName"/></h1>
                <h2><xsl:apply-templates select="//chapter/@chapterName"/></h2>
                <fieldset>
                    <legend>Click to Highlight:</legend>
                    <input type="checkbox" id="Perstoggle"/>
                    <span>People</span>
                    <input type="checkbox" id="Alltoggle"/>
                    <span>Allusions</span>
                    <input type="checkbox" id="Reftoggle"/>
                    <span>Reference</span>
                    <input type="checkbox" id="Saidtoggle"/>
                    <span>Said</span>
                    
                </fieldset>
                <xsl:apply-templates select="//ulysses"/>
                
                
             
                </div>
               
               
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
<xsl:template match="location">
    
    <div class="location" id="{replace(@name,$apos, '')}{preceding::location[@name=current()/@name]=>count() +1}">
        
        <xsl:apply-templates/>    
        </div>
    </xsl:template>
    
</xsl:stylesheet>
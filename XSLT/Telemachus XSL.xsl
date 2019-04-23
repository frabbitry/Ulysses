<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
<xsl:template match='//ulysses'>
<ulysses><xsl:apply-templates></xsl:apply-templates></ulysses>
</xsl:template>
    <xsl:template match='//p'>
        <p><xsl:apply-templates></xsl:apply-templates></p>
    </xsl:template>
    <xsl:template match='//reference[@to]'>
       <reference> <xsl:apply-templates></xsl:apply-templates></reference>
    </xsl:template>
    <xsl:template match='//said[@persName="Stephen Dedalus"]'>
    <said persName='Stephen Dedalus'><xsl:apply-templates></xsl:apply-templates></said>
    </xsl:template>
    <xsl:template match='said[@persName="Buck Mulligan"]'>
        <said persName='Buck Mulligan'><xsl:apply-templates></xsl:apply-templates></said>
    </xsl:template>
    <xsl:template match='said[@persName="Malachi Mulligan"]'>
        <said persName='Malachi Mulligan'><xsl:apply-templates></xsl:apply-templates></said>
    </xsl:template>
    <xsl:template match='said[@persName="Haines"]'>
        <said persName='Haines'><xsl:apply-templates></xsl:apply-templates></said>
    </xsl:template>
    <xsl:template match='said[@persName="Old Woman"]'>
        <said persName='Old Woman'><xsl:apply-templates></xsl:apply-templates></said>
    </xsl:template>
    <xsl:template match='said[@persName="Malachi mulligan"]'>
        <said persName='Malachi mulligan'> <xsl:apply-templates/></said>
    </xsl:template>
    <xsl:template match='said[@persName="Boatman"]'>
        <said persName='Boatman'><xsl:apply-templates></xsl:apply-templates></said>
    </xsl:template>
    <xsl:template match='section'>
        <section sectionName='Telemechiad'><xsl:apply-templates></xsl:apply-templates></section>
    </xsl:template>
    <xsl:template match='chapter'>
        <chapter chapterName='Telemachus'><xsl:apply-templates/></chapter>
    </xsl:template>
    <xsl:template match='reference[@to="Catholic Mass"]'>
        <reference to='Catholic Mass'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="religious group"]'>
        <reference to='religious group'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="Saint"]'>
        <reference to='Saint'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="Greek"]'>
        <reference to='Greek'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="Religious Group"]'>
        <reference to='Religious Group'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="ethnicity"]'>
        <reference to='ethnicity'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="place"]'>
        <reference to='place'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="Race of Giants"]'>
        <reference to='Race of Giants'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="low life"]'>
        <reference to='low life'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="African Tribe"]'>
        <reference to='African Tribe'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="person"]'>
        <reference to='person'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="religion"]'>
        <reference to='religion'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to=""]'>
        <reference to=''><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="artifact"]'>
        <reference to='artifact'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="Mute"]'>
        <reference to='Mute'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="English"]'>
        <reference to='English'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="poem"]'>
        <reference to='poem'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="Christianity"]'>
        <reference to='Christianity'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="song"]'>
        <reference to='song'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="Trinitarian Formula"]'>
        <reference to='Trinitarian Formula'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="Roman God"]'>
        <reference to='Roman God'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="suburb"]'>
        <reference to='suburb'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="currency"]'>
        <reference to='currency'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="tragedy"]'>
        <reference to='tragedy'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="nickname"]'>
        <reference to='nickname'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="author"]'>
        <reference to='author'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="prayer"]'>
        <reference to='prayer'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="god"]'>
        <reference to='god'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="saint"]'>
        <reference to='saint'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="French"]'>
        <reference to='French'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="German"]'>
        <reference to='German'><xsl:apply-templates/></reference>
    </xsl:template>
    <xsl:template match='reference[@to="Prohet"]'>
        <reference to='Prophet'><xsl:apply-templates/></reference>
    </xsl:template>
    
</xsl:stylesheet>
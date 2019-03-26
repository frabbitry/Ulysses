<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    
    <pattern>
        <rule context = "descendant::location//*//*/@*">
            <assert test = "not(contains(string(),'?'))">There should be no questions here.</assert>
        </rule>
        
        <rule context = "descendant::location">
            <assert test = "@lon lt '0'">The lon coordinate needs to be less than zero.</assert>
            <assert test = "@lat gt '0'">The lat coordinate needs to be greater than zero.</assert>
        </rule>
    </pattern>
</schema>
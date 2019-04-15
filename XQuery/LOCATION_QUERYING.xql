xquery version "3.1";
declare variable $ThisFileContent := string-join(
    (: Just change the variable based on which collection you're running over to make csv's for each major section of Ulysses.:)
let $wanderings := collection('/db/ulysses/wanderings')
let $location := $wanderings//location/@name/string() => distinct-values()
for $i in $location
let $lat := $wanderings//location[@name = $i]/@lat/string() => distinct-values()
let $lon := $wanderings//location[@name = $i]/@lon/string() => distinct-values()
let $content := $wanderings//location[@name = $i]//*//*/@*/string()
for $j in $content
return string-join(($lat, $lon, $i, "place", $j, "allusion"), ";")
, "&#10;");
let $filename := "Wanderings_RefVLoc.csv"
let $doc-db-uri := xmldb:store("/db/frc23", $filename, $ThisFileContent, "text/plain")
return $doc-db-uri 
(: Output at http://newtfire.org:8338/exist/rest/db/frc23/Wanderings_RefVLoc.csv:)
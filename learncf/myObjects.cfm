<cfset myCrayon = {
    "color":"blue",
    "shape":"round",
    "hardness": 7,
    "length": 2,
    "collection": {
        "boxtype": "64 crayon",
        "pencilSharpener": true
    }
} />


<cfdump var="#myCrayon#" />

<cfoutput>
<p>
    My Crayon is #myCrayon.color#. I use it to color paper but it is #myCrayon.shape# so it rolls off the table.
        It came in the #myCrayon.collection.boxtype# box 
        and it 

            <cfif myCrayon.collection.pencilSharpener eq true>
                did have
            <cfelse>
                did Not have    
            </cfif>
            a pencil sharpener.
    <br/>
    My Crayon is #myCrayon["color"]#. I use it to color paper but it is #myCrayon["shape"]# so it rolls off the table.
</p>
#myCrayon.color#
</cfoutput>
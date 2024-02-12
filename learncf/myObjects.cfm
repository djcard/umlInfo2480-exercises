<cfset myCrayon = {
    "color":"blue",
    "shape":"round",
    "hardness": 7,
    "length": 2
} />


<cfdump var="#myCrayon#" />

<cfoutput>
<p>
    My Crayon is #myCrayon.color#. I use to color paper but it is #myCrayon.shape# so it rolls off the table.<br/>
    My Crayon is #myCrayon["color"]#. I use to color paper but it is #myCrayon["shape"]# so it rolls off the table.
</p>
#myCrayon.color#
</cfoutput>
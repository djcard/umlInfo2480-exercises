<cfset myArray = [
    "hello",
    "my",
    "name",
    "is",
    "Dan"
] />

<cfdump var="#myArray#" />
<cfoutput>
    <p>
        #myArray[4]#
    </p>
</cfoutput>


<cfset book1 = {
    "title":"Gone With The Wind",
    "authors": [
        {"FirstName": "Margaret", "LastName":"Mitchell"}
    ]
    
} />


<cfset book2 = {
    "title":"The Wind In The Willows",
    "authors":[
        {"FirstName": "Kenneth", "LastName":"Graham"}
    ]
} />

<cfset books = [
    book1, book2,
    {
        "title": "Equal Rites",
        "authors":[
            {"FirstName": "Terry", "LastName":"Pratchett"}
        ]
    },
    {
        "title": "Good Omens",
        "authors":[
            {"FirstName": "Terry", "LastName":"Pratchett"},
            {"FirstName": "Neal", "LastName":"Gaimon"}
        ]
    }

] />

<cfdump var="#books#"/>
<ul>
    <cfoutput>
        <cfloop array="#books#" item="book">
            <li>#book.title# by 
                <cfloop array="#book.authors#" item="author" index="i">
                    #author.firstname# #author.lastname#
                        <cfif i neq book.authors.len()>
                            and
                        </cfif>
                </cfloop>
                
        </cfloop>
    </cfoutput>
</ul>

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
    "Author":"Margaret Mitchell"
} />


<cfset book2 = {
    "title":"The Wind In The Willows",
    "Author":"Kenneth Graham"
} />

<cfset books = [
    book1, book2
] />

<cfdump var="#books#"/>
<ul>
    <cfoutput>
<cfloop array="#books#" item="book">
    <li>#book.title# by #book.author#</li>




</cfloop>
</ul>
</cfoutput>
<!--- In the docs, this file is called query1.cfm --->

<!DOCTYPE html> 
    <html lang="en"> 
        <head>    
            <meta charset="UTF-8">    
            <title>Title</title> 
        </head> 
        <body>    
            <cfset pageController=createObject("query1") /> 
            <cfset allBooks = "#pageController.allBooks()#" />    
            <cfdump var="#allBooks#" />

            <cfoutput>
                <ul>
                    <cfloop query="allbooks">
                        <li>#title# is #pages# pages long</li>
                    </cfloop>
                </ul>
            </cfoutput>

        </body>
    </html>
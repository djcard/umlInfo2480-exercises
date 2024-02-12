<!doctype html>
        <html>
        <head>
            <meta charset="utf-8">
            <title>UML Database Course - name</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        </head>
                
        <cfdirectory directory="#expandpath('.')#" name="alldirs" recurse="no" type="dir">
        <cfset welcomeName = "" />
        <cfif fileExists("student.json")>
            <cfset welcomeName = deserializeJSON(fileRead("student.json")).firstName />
        </cfif>
        <body>
            <div id="wrapper" class="container">
                <cfoutput>
                    <div id="adminnav" style="float:none; clear:both; height:50px; ">
                        <ul class="nav nav-pills" style="margin-left:auto; display:block; ">
                            <li style="float:right"><a>Welcome #welcomeName# </a></li>
                            <li style="float:right"><a href="https://uml.umassonline.net/" target="_blank">Class Blackboard Site</a> </li>
                        </ul>
                    </div>
                
                <div id="topheader">Class INFO 2480 Web Site Database Implementation - Local Host Table of Contents Page</div></cfoutput>
                <div id="mainarea" class="row">
                    <div id="leftgutter" class="col-2">
                        <ul class="nav flex-column">
                            <cfoutput query="alldirs">
                                    <li class="nav-item">
                                            <a href="#name#/" class="nav-link" target="_blank">#name#</a>
                                    </li>
                            </cfoutput>
                        <li><hr/></li>
                        <!---
                            Add your custom links below this line.
                            To keep the same formatting as the above items, use this format:
                             <li><a href="link to folder/file">Name of link </a></li>
                            
                        --->
        
                        </ul>
                    </div>
                    <div id="center" class="col-9">
                        <cfoutput>
                            <div style="margin:10px">
                                <legend>About This Page</legend>
                                <p>As we go through the semester we'll be working on a major project, creating exercise pages, working on new
                                    techniques to approach design problems and more. This area of the server is your space in which to work, create,
                                    and keep your work organized. It's also the place that I will look to review progress, check assigned exercises
                                    and overall keep an eye on how you're progressing. </p>
                                <p>Whenever you create a folder in your area on the server, the item is automatically added to the navigation system
                                    on the left. By default, these will open in a new browser window. You can also add your own links and pages not
                                    in the prescribed curriculum. In the index.cfm page there is a commented area which shows how to add your own
                                    content.</p>
                            
                                <p> - Dan Card - </p>
                                <p><a href="mailto:daniel_card@uml.edu">daniel_card@uml.edu</a></p>
                            </div>
                            
                        </cfoutput>
                    </div>
                </div>
            </div>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                            crossorigin="anonymous"></script>
        </body>
        </html>
        
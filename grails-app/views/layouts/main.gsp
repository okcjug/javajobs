<html>
    <head>
        <title>Oklahoma City Java Users Group Job Board - <g:layoutTitle default="Main" /></title>
        <yui:stylesheet dir="reset-fonts-grids" file="reset-fonts-grids.css" />
        <yui:stylesheet dir="assets/skins/sam" file="skin.css" />
        <yui:javascript dir="utilities" file="utilities.js"/>
        <yui:javascript dir="animation" file="animation-min.js"/>
        <yui:javascript dir="container" file="container_core-min.js"/>
        <yui:javascript dir="menu" file="menu-min.js"/>

        <!-- yui layout and menu -->
        <!--
        Do:  grails install-plugin yui


        <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.5.2/build/reset-fonts-grids/reset-fonts-grids.css">
        <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.5.2/build/menu/assets/skins/sam/menu.css">
        <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/yahoo/yahoo-min.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/dom/dom-min.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/event/event-min.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/animation/animation-min.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/container/container_core-min.js"></script>
        <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/menu/menu-min.js"></script>
        -->

        <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body class="yui-skin-sam">
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${createLinkTo(dir:'images',file:'spinner.gif')}" alt="Spinner" />
        </div>	
        <div id="doc" class="yui-t1">
            <div id="hd">
                <div class="logo">
                    <h1 class="title">Oklahoma City Java Users Group, Inc.</h1>
                    <p class="subtitle">Java Job Board</p>
                </div>
            </div>
            <div id="bd">
                <div id="yui-main">
                    <div class="yui-b">
                        <div class="textcol">
                            <g:layoutBody />
                        </div>
                    </div>
                </div>
                <div class="yui-b">
                    <div id="jobsmenu" class="yuimenu">
                        <div class="bd">
                            <ul class="first-of-type">
                                <li class="yuimenuitem">
                                    <a class="yuimenuitemlabel" href="http://www.okcjug.org">Home</a>
                                </li>
                                <li class="yuimenuitem">
                                    <a class="yuimenuitemlabel" href="/JavaJobs">Job Posting</a>
                                </li>
								<li>
									<a class="yuimenuitemlabel" href="http://localhost:8080/JavaJobs/recruiter/home">Recruiter</a>
								</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div id="ft" style="background: #c0c0c0">
                <p>Footer</p>
            </div>
        </div>
    </body>	
</html>
<html>
    <head>
        <title>Oklahoma City Java Users Group Job Board - <g:layoutTitle default="Main" /></title>
        <yui:stylesheet dir="reset-fonts" file="reset-fonts.css" />
        <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${createLinkTo(dir:'images',file:'spinner.gif')}" alt="Spinner" />
        </div>	
        <div class="logo"><img src="${createLinkTo(dir:'images',file:'okcjug_logo.png')}" alt="OKCJUG" />
            <h1 style="display: inline">The Oklahoma City Java Users Group, Inc. Java Job Board</h1>
        </div>
        <g:layoutBody />		
    </body>	
</html>
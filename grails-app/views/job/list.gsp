

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Job List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="create" action="create">New Job</g:link></span>
        </div>
        <div class="body">
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
               
                    <g:each in="${jobInstanceList}" status="i" var="jobInstance">
                            <g:link action="show" id="${jobInstance.id}"><strong>${fieldValue(bean:jobInstance, field:'jobTitle')}</strong></g:link>
                            Date Posted: ${fieldValue(bean:jobInstance, field:'datePosted')}<br/>
                            Core Skills: ${fieldValue(bean:jobInstance, field:'coreSkills')}<br/>
                            Industry/Company:  ${fieldValue(bean:jobInstance, field:'industry')}<br/>
                            <hr/>
                    </g:each>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Job.count()}" />
            </div>
        </div>
    </body>
</html>

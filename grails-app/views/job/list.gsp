

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Job List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Job</g:link></span>
        </div>
        <div class="body">
            <h1>Job List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="summary" title="Summary" />
                        
                   	        <g:sortableColumn property="minimumPay" title="Minimum Pay" />

                   	        <g:sortableColumn property="maximumPay" title="Maximum Pay" />

                   	        <g:sortableColumn property="detail" title="Detail" />
                        
                   	        <th>Recruiter</th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${jobInstanceList}" status="i" var="jobInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${jobInstance.id}">${fieldValue(bean:jobInstance, field:'summary')}</g:link></td>
                        
                            <td><g:link action="show" id="${jobInstance.id}">${fieldValue(bean:jobInstance, field:'minimumPay')}</g:link></td>
                        
                            <td><g:link action="show" id="${jobInstance.id}">${fieldValue(bean:jobInstance, field:'maximumPay')}</g:link></td>
                        
                            <td><g:link action="show" id="${jobInstance.id}">${fieldValue(bean:jobInstance, field:'detail')}</g:link></td>

                            <td><g:link action="show" id="${jobInstance.id}">${fieldValue(bean:jobInstance, field:'user')}</g:link></td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Job.count()}" />
            </div>
        </div>
    </body>
</html>

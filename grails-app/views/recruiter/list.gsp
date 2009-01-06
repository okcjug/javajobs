

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Recruiter List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Recruiter</g:link></span>
        </div>
        <div class="body">
            <h1>Recruiter List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="companyName" title="Company Name" />
                        
                   	        <g:sortableColumn property="userName" title="User Name" />
                        
                   	        <g:sortableColumn property="password" title="Password" />
                        
                   	        <g:sortableColumn property="email" title="Email" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${recruiterInstanceList}" status="i" var="recruiterInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${recruiterInstance.id}">${fieldValue(bean:recruiterInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:recruiterInstance, field:'companyName')}</td>
                        
                            <td>${fieldValue(bean:recruiterInstance, field:'userName')}</td>
                        
                            <td>${fieldValue(bean:recruiterInstance, field:'password')}</td>
                        
                            <td>${fieldValue(bean:recruiterInstance, field:'email')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Recruiter.count()}" />
            </div>
        </div>
    </body>
</html>

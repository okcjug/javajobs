

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
                        
                   	        <g:sortableColumn property="companyName" title="Company Name" />
                        
                   	        <g:sortableColumn property="email" title="Email" />
                        
                   	        <g:sortableColumn property="password" title="Password" />
                        
                   	        <g:sortableColumn property="userName" title="User Name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${recruiters}" status="i" var="recruiter">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${recruiter.id}">${fieldValue(bean:recruiter, field:'companyName')}</g:link></td>
                        
                            <td>${fieldValue(bean:recruiter, field:'email')}</td>
                        
                            <td>${fieldValue(bean:recruiter, field:'password')}</td>
                        
                            <td>${fieldValue(bean:recruiter, field:'userName')}</td>
                        
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

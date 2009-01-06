

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
                        
<<<<<<< HEAD:grails-app/views/recruiter/list.gsp
                   	        <g:sortableColumn property="userName" title="User Name" />
                        
                   	        <g:sortableColumn property="password" title="Password" />
                        
                   	        <g:sortableColumn property="email" title="Email" />
=======
                   	        <g:sortableColumn property="email" title="Email" />
                        
                   	        <g:sortableColumn property="password" title="Password" />
                        
                   	        <g:sortableColumn property="userName" title="User Name" />
>>>>>>> 4aae5fb50bc9bc490d943d9949aa08dd02553d39:grails-app/views/recruiter/list.gsp
                        
                        </tr>
                    </thead>
                    <tbody>
<<<<<<< HEAD:grails-app/views/recruiter/list.gsp
                    <g:each in="${recruiterInstanceList}" status="i" var="recruiterInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${recruiterInstance.id}">${fieldValue(bean:recruiterInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:recruiterInstance, field:'companyName')}</td>
                        
                            <td>${fieldValue(bean:recruiterInstance, field:'userName')}</td>
                        
                            <td>${fieldValue(bean:recruiterInstance, field:'password')}</td>
                        
                            <td>${fieldValue(bean:recruiterInstance, field:'email')}</td>
=======
                    <g:each in="${recruiters}" status="i" var="recruiter">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${recruiter.id}">${fieldValue(bean:recruiter, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:recruiter, field:'companyName')}</td>
                        
                            <td>${fieldValue(bean:recruiter, field:'email')}</td>
                        
                            <td>${fieldValue(bean:recruiter, field:'password')}</td>
                        
                            <td>${fieldValue(bean:recruiter, field:'userName')}</td>
>>>>>>> 4aae5fb50bc9bc490d943d9949aa08dd02553d39:grails-app/views/recruiter/list.gsp
                        
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

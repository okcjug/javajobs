

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Profile List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Profile</g:link></span>
        </div>
        <div class="body">
            <h1>Profile List</h1>
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
                    <g:each in="${profiles}" status="i" var="profile">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${profile.id}">${fieldValue(bean:profile, field:'companyName')}</g:link></td>
                        
                            <td>${fieldValue(bean:profile, field:'email')}</td>
                        
                            <td>${fieldValue(bean:profile, field:'password')}</td>
                        
                            <td>${fieldValue(bean:profile, field:'userName')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Profile.count()}" />
            </div>
        </div>
    </body>
</html>

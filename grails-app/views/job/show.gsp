

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Job</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Job List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Job</g:link></span>
        </div>
        <div class="body">
            <h1>Show Job</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Summary:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:jobInstance, field:'summary')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Detail:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:jobInstance, field:'detail')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Minimum Pay:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:jobInstance, field:'minimumPay')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Maximum Pay:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:jobInstance, field:'maximumPay')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Recruiter:</td>
                            
                            <td valign="top" class="value"><g:link controller="recruiter" action="show" id="${jobInstance?.recruiter?.id}">${jobInstance?.recruiter?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${jobInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>

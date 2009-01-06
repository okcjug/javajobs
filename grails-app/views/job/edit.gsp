

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Job</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Job List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Job</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Job</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${jobInstance}">
            <div class="errors">
                <g:renderErrors bean="${jobInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${jobInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="summary">Summary:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'summary','errors')}">
                                    <input type="text" id="summary" name="summary" value="${fieldValue(bean:jobInstance,field:'summary')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="detail">Detail:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'detail','errors')}">
                                    <input type="text" id="detail" name="detail" value="${fieldValue(bean:jobInstance,field:'detail')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="minimumPay">Minimum Pay:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'minimumPay','errors')}">
                                    <input type="text" id="minimumPay" name="minimumPay" value="${fieldValue(bean:jobInstance,field:'minimumPay')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="maximumPay">Maximum Pay:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'maximumPay','errors')}">
                                    <input type="text" id="maximumPay" name="maximumPay" value="${fieldValue(bean:jobInstance,field:'maximumPay')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="recruiter">Recruiter:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'recruiter','errors')}">
                                    <g:select optionKey="id" from="${Recruiter.list()}" name="recruiter.id" value="${jobInstance?.recruiter?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>

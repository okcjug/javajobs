

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Recruiter</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Recruiter List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Recruiter</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Recruiter</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${recruiterInstance}">
            <div class="errors">
                <g:renderErrors bean="${recruiterInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${recruiterInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="companyName">Company Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:recruiterInstance,field:'companyName','errors')}">
                                    <input type="text" id="companyName" name="companyName" value="${fieldValue(bean:recruiterInstance,field:'companyName')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email">Email:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:recruiterInstance,field:'email','errors')}">
                                    <input type="text" id="email" name="email" value="${fieldValue(bean:recruiterInstance,field:'email')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="jobs">Jobs:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:recruiterInstance,field:'jobs','errors')}">
                                    
<ul>
<g:each var="j" in="${recruiterInstance?.jobs?}">
    <li><g:link controller="job" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="job" params="['recruiter.id':recruiterInstance?.id]" action="create">Add Job</g:link>

                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password">Password:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:recruiterInstance,field:'password','errors')}">
                                    <input type="text" id="password" name="password" value="${fieldValue(bean:recruiterInstance,field:'password')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phones">Phones:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:recruiterInstance,field:'phones','errors')}">
                                    
<ul>
<g:each var="p" in="${recruiterInstance?.phones?}">
    <li><g:link controller="phone" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="phone" params="['recruiter.id':recruiterInstance?.id]" action="create">Add Phone</g:link>

                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userName">User Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:recruiterInstance,field:'userName','errors')}">
                                    <input type="text" id="userName" name="userName" value="${fieldValue(bean:recruiterInstance,field:'userName')}"/>
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

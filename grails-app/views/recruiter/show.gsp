

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Recruiter</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Recruiter List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Recruiter</g:link></span>
        </div>
        <div class="body">
            <h1>Show Recruiter</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
<<<<<<< HEAD:grails-app/views/recruiter/show.gsp
                            <td valign="top" class="name">Company Name:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:recruiterInstance, field:'companyName')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">User Name:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:recruiterInstance, field:'userName')}</td>
=======
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:recruiterInstance, field:'id')}</td>
>>>>>>> 4aae5fb50bc9bc490d943d9949aa08dd02553d39:grails-app/views/recruiter/show.gsp
                            
                        </tr>
                    
                        <tr class="prop">
<<<<<<< HEAD:grails-app/views/recruiter/show.gsp
                            <td valign="top" class="name">Password:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:recruiterInstance, field:'password')}</td>
=======
                            <td valign="top" class="name">Company Name:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:recruiterInstance, field:'companyName')}</td>
>>>>>>> 4aae5fb50bc9bc490d943d9949aa08dd02553d39:grails-app/views/recruiter/show.gsp
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Email:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:recruiterInstance, field:'email')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Jobs:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="j" in="${recruiterInstance.jobs}">
                                    <li><g:link controller="job" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
<<<<<<< HEAD:grails-app/views/recruiter/show.gsp
=======
                            <td valign="top" class="name">Password:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:recruiterInstance, field:'password')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
>>>>>>> 4aae5fb50bc9bc490d943d9949aa08dd02553d39:grails-app/views/recruiter/show.gsp
                            <td valign="top" class="name">Phones:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="p" in="${recruiterInstance.phones}">
                                    <li><g:link controller="phone" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
<<<<<<< HEAD:grails-app/views/recruiter/show.gsp
=======
                        <tr class="prop">
                            <td valign="top" class="name">User Name:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:recruiterInstance, field:'userName')}</td>
                            
                        </tr>
                    
>>>>>>> 4aae5fb50bc9bc490d943d9949aa08dd02553d39:grails-app/views/recruiter/show.gsp
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${recruiterInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>

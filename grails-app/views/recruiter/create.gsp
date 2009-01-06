

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Recruiter</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Recruiter List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Recruiter</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${recruiterInstance}">
            <div class="errors">
                <g:renderErrors bean="${recruiterInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
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
<<<<<<< HEAD:grails-app/views/recruiter/create.gsp
                                    <label for="userName">User Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:recruiterInstance,field:'userName','errors')}">
                                    <input type="text" id="userName" name="userName" value="${fieldValue(bean:recruiterInstance,field:'userName')}"/>
=======
                                    <label for="email">Email:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:recruiterInstance,field:'email','errors')}">
                                    <input type="text" id="email" name="email" value="${fieldValue(bean:recruiterInstance,field:'email')}"/>
>>>>>>> 4aae5fb50bc9bc490d943d9949aa08dd02553d39:grails-app/views/recruiter/create.gsp
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
<<<<<<< HEAD:grails-app/views/recruiter/create.gsp
                                    <label for="email">Email:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:recruiterInstance,field:'email','errors')}">
                                    <input type="text" id="email" name="email" value="${fieldValue(bean:recruiterInstance,field:'email')}"/>
=======
                                    <label for="userName">User Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:recruiterInstance,field:'userName','errors')}">
                                    <input type="text" id="userName" name="userName" value="${fieldValue(bean:recruiterInstance,field:'userName')}"/>
>>>>>>> 4aae5fb50bc9bc490d943d9949aa08dd02553d39:grails-app/views/recruiter/create.gsp
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>

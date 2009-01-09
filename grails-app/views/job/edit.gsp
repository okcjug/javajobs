

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Job</title>
    </head>
    <body>
       <div class="body">
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
                                    <label for="jobTitle">Job Title:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'jobTitle','errors')}">
                                    <input type="text" id="jobTitle" name="jobTitle" value="${fieldValue(bean:jobInstance,field:'jobTitle')}"/>
                                </td>
                            </tr> 
                        
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
                                    <textarea id="detail" name="detail">
                                        ${fieldValue(bean:jobInstance,field:'detail')}
                                    </textarea>
                                    <yui:javascript dir="element" file="element-beta-min.js"/>
                                    <yui:javascript dir="editor" file="editor-min.js"/>
                                    <script type="text/javascript">
                                        new YAHOO.widget.SimpleEditor("detail", {
                                            height: "300px",
                                            width: "500px",
                                            handleSubmit: true
                                        }).render();
                                    </script>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="payRange">Pay Range:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'payRange','errors')}">
                                    <input type="text" id="payRange" name="payRange" value="${fieldValue(bean:jobInstance,field:'payRange')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="coreSkills">Core Skills:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'coreSkills','errors')}">
                                    <input type="text" id="coreSkills" name="coreSkills" value="${fieldValue(bean:jobInstance,field:'coreSkills')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="payRange">Pay Range:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'minimumPay','errors')}">
                                    <input type="text" id="payRange" name="payRange" value="${fieldValue(bean:jobInstance,field:'minimumPay')}" />
                                </td>
                            </tr> 
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="industry">Industry:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'industry','errors')}">
                                    <input type="text" id="industry" name="industry" value="${fieldValue(bean:jobInstance,field:'industry')}"/>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="datePosted">Date Posted:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'datePosted','errors')}">
                                    <g:datePicker name="datePosted" value="${jobInstance?.datePosted}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="profile">Profile:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'profile','errors')}">
                                    <g:select optionKey="id" from="${Profile.list()}" name="profile.id" value="${jobInstance?.profile?.id}" noSelection="['null':'']"></g:select>
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

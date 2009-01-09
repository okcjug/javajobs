

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Job</title>         
    </head>
    <body>
        <!-- div class="nav">
            <span class="menuButton"><g:link class="list" action="list">Job List</g:link></span>
        </div> -->
        <div class="body">
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${jobInstance}">
            <div class="errors">
                <g:renderErrors bean="${jobInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
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
                                    <input type="text" id="payRange" name="payRange" value="${fieldValue(bean:jobInstance,field:'payRange')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="recruiter">Recruiter:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobInstance,field:'user','errors')}">
                                    <g:select optionKey="id" from="${User.list()}" name="user.id" value="${jobInstance?.user?.id}" ></g:select>
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

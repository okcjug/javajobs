<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Login</title>
    </head>
    <body>

        <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
        </g:if>

        <div height="100%" width="100%" style="background-color:#F79528; padding:5; padding-top:100; margin:20;">
            <center>
                <br/>
                <div style="width:300; background-color:#E8EAA1; padding:5; border-color:white; border-style:solid;">
                    <form action="${request.contextPath}/j_spring_security_login" method="POST" id="loginForm" class="cssform">
                        <p>
                            <label for="j_username">Login ID</label>
                            <input type='text' class="text_" name='j_username' value='' />
                        </p>
                        <p>
                            <label for="j_password">Password</label>
                            <input type='password' class="text_" name='j_password' value='' />
                        </p>
                        <p>
                            <input type="submit" value="Login" />
                        </p>
                    </form>

                    <g:if test="${errors}">
                        <li>${errors}
                    </g:if>
                </div>
            </center>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
        </div>
    </body>
</html>

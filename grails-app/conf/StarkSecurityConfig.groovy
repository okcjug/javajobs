
// Stark Security plugin properties
// All or some of these properties can be set based on environment if needed, 
// just follow the convention for how to do that from the standard Config.groovy file.

starksecurity {

    // These authorization mappings open up access for URLs that are not controller-based,
    // e.g. /js/**.  If you use a different class instead of the default Role, you need to
    // update these mappings accordingly.
    authorizations = [
        '/': Role.ALL_ROLES,
        '/js/**': Role.ALL_ROLES,
        '/css/**': Role.ALL_ROLES,
        '/images/**': Role.ALL_ROLES,
        '/j_acegi_logout': Role.ALL_ROLES
    ]

    // The URL to present to the user when authorization is needed
    loginFormUrl='/access/notAuthorized'

    // The URL to redirect upon successful logout
    logoutUrl='/access/logout'

    // The URL to redirect to when the user's session has expired
    sessionExpiredUrl='/access/sessionExpired'

    // Below is where the authentication managers are defined. Notice how this property is a multi-level
    // map, so you can define an arbitrary number of managers.  In short, each manager listens to
    // login attempts from a single URL/form (the 'processesUrl' property).  Each manager can use an
    // arbitrary number of authentiction providers (either DAO- or LDAP-based) that will attempt to
    // authenticate the user for that URL/form.
    //
    // The default settings shown here work with the default DAO
    // authentication implementation delivered with Stark Security (run 
    // 'grails stark-security-create-full-authentication-implementation' to install).
    //
    // Edit these settings if you are providing your own DAO authentication implementation,
    // and uncomment/edit the LDAP section if you wish to use LDAP authentication.
    //
    // If you wish to authenticate users from different providers using different login URLs/forms,
    // simply create another manager with its unique 'processesUrl' value and add the
    // appropriate provider(s) underneath that manager.
    authenticationManagers = [
        [
            // This is the default authenticaiton manager.
            name: 'AM',
            processesUrl: '/j_spring_security_login',
            alwaysUseDefaultTargetUrl: false,
            authenticationSuccessUrl: '/access/loginSuccess',
            authenticationFailureUrl: '/access/authenticationFailure',
            authenticationProviders: [
                // These are the authentication providers for manager 'AM'
                [
                    userDetailsService: 'userLookupService',
                    passwordEncoding: [algorithm: 'SHA-256', encodeBase64: true]
                ],
                /*
                [
                    url: 'ldap://your.ldap.url/dc=mycorp,dc=local',
                    managerDn: 'CN=Some Title,CN=SomeGroup,DC=mycorp,DC=local',
                    managerPassword: 'mypassword',
                    userSearchBase: '',
                    groupsPath: 'OU=Groups,OU=Production'
                ]
                */
            ]
        ],
        // This is where you can add more authentication managers -- model them
        // after the default shown above.
    ]

    // Optionally, you can handle authentication and authorization events as they happen.  In the section
    // below, you can add/edit handlers for any events that can be found in the packages
    // org.springframework.security.event.[authentication|authorization].
    // The event class name must be prefixed with the last portion of the package name, as shown in the
    // default handlers below.
    eventHandlers = [
        'authentication.AbstractAuthenticationEvent': { e, appContext -> 
            // This handles the superclass of all authentication events -- put logic here to do something for all authentication events
        },
        'authorization.AbstractAuthorizationEvent': { e, appContext -> 
            // This handles the superclass of all authorization events -- put logic here to do something for all authorization events 
        }
    ]
    
}



class AccessController {

    static authorizations = [
        index: Role.ALL_ROLES,
        login: Role.ALL_ROLES,
        loginSuccess: Role.ALL_ROLES,
        logout: Role.ALL_ROLES,
        notAuthorized: Role.ALL_ROLES,
        authenticationFailure: Role.ALL_ROLES,
        sessionExpired: Role.ALL_ROLES
    ]

    def index = {
        redirect(action:login, params:params) 
    }

    def login = {
    }

    def loginSuccess = {
        flash.message = "You have been successfully logged in!"
        redirect(action:login)
    }
    
    def logout = {
        flash.message = "You have been successfully logged out."
        redirect(action:login)
    }
    
    def notAuthorized = {
        // If you're using multiple login forms for multiple authentication
        // providers, this is where you need to figure out which way to direct
        // traffic
        flash.message = "You are not authorized for that action, please log in."
        redirect(action:login)
    }

    def authenticationFailure = {
        flash.message = "Login failed, please try again."
        redirect(action:login)
    }

    def sessionExpired = {
        flash.message = "Your browser session expired.  Please log in again."
        redirect(action:login)
    }

}

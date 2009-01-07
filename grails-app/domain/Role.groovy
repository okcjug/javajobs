import org.springframework.security.GrantedAuthority

class Role implements GrantedAuthority {
    
    String description
    String authority

    static final ANONYMOUS = 'IS_AUTHENTICATED_ANONYMOUSLY'
    // Add your roles here so you can reference them, for instance:
     static final ROLE_SUPER_USER = 'ROLE_SUPER_USER'; static final ROLE_RECRUITER = 'ROLE_RECRUITER';

    // This list holds all roles, convenient when you're declaring controller methods
    // that should be available to everybody (see AccessController for instance).  When
    // you add roles to your system, make sure you add them to this list as well.
    static final ALL_ROLES = [ ANONYMOUS , ROLE_SUPER_USER , ROLE_RECRUITER ]
 	
    int compareTo(Object o) {
        if (o instanceof Role) {
            return this.authority.compareTo(o.authority)
        } 
         return 0
    }

    String toString() {
        return authority
    }
}	

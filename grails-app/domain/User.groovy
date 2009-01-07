import org.springframework.security.userdetails.UserDetails
import org.springframework.security.GrantedAuthority

/**
 * This class is the default UserDetails implementation for the Stark Security plugin.
 * Since instances of this class will be used by the underlying Spring Security framework across
 * Hibernate sessions, we can't have any lazy loading in here (see special handling of roles below).
 */
class User implements UserDetails {

    String username
    String password
    
    static transients = [
            'authorities',
            'accountNonExpired',
            'enabled',
            'credentialsNonExpired',
            'accountNonLocked'
    ]

    static hasMany = [ roles: Role ]

    // Need to eagerly fetch role relations, because they'll be asked for later
    // by Spring Security when the hibernate session is no longer available
    static mapping = {
        roles lazy:false
    }

    GrantedAuthority[] getAuthorities() {
        return roles as GrantedAuthority[]
    }

    boolean isAccountNonLocked() {
        return true
    }
    def setAccountNonLocked(boolean nonLocked) {}

    boolean isCredentialsNonExpired() {
        return true
    }
    def setCredentialsNonExpired(boolean nonExpired) {}

    boolean isAccountNonExpired() {
        return true
    }
    def setAccountNonExpired(boolean acctNonExpired) {}

    boolean isEnabled() {
        return true
    }
    def setEnabled(boolean enabled) {}
}

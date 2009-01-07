import org.springframework.security.userdetails.UserDetails
import org.springframework.security.userdetails.UsernameNotFoundException
import org.springframework.dao.DataAccessException
import org.springframework.security.userdetails.UserDetailsService

class UserLookupService implements UserDetailsService {

    def UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException , DataAccessException {
        User user = User.findByUsername(userName)
        if (user) {
            log.debug("User found for ${userName}: " + user)
            return user
        }
        log.info("User NOT found: ${userName}")
        throw new UsernameNotFoundException("User not found.");
    }

}
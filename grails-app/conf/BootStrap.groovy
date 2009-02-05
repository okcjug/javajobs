import org.codehaus.groovy.grails.plugins.starksecurity.PasswordEncoder

class BootStrap {

    def init = { servletContext ->
        if (GrailsUtil.environment == GrailsApplication.ENV_DEVELOPMENT) {
            def profile = new Profile(companyName:"Spartan", userName:"user", email:"user@spartan.com")
            profile.save()
            new Profile(companyName:"TekSystems", userName:"teksystems", email:"nobody@okcjug.org").save()

            // Create some roles
            new Role(authority: 'ROLE_SUPER_USER', description: 'Super user').save()
            new Role(authority: 'ROLE_RECRUITER', description: 'Recruiting Sponsor').save()

            // Create a user, and add the super user role
            // You do this only if you're using the DAO implementation, for LDAP users don't live in your DB.
            def user = new User(username: 'admin', password: PasswordEncoder.encode('admin', 'SHA-256', true))
            user.save()
            user.addToRoles(Role.findByAuthority('ROLE_SUPER_USER'))
            user.save()

            user = new User(username: 'teksystems', password: PasswordEncoder.encode('tyson', 'SHA-256', true))
            user.save()
            user.addToRoles(Role.findByAuthority('ROLE_RECRUITER'))
            user.save()

            new Job(
                profile: profile,
                jobTitle: "Java Developer",
                coreSkills: "Must know Java!",
                industry: "Air Traffic",
                summary: "<b>java</b> developer",
                detail: "<p>awesome java job</p><p>with formatting</p>"
            ).save()
            new Job(
                profile: profile,
                jobTitle: "Ruby Developer",
                coreSkills: "Must know Ruby!",
                industry: "Travel",
                summary: "<b>ruby</b> developer",
                detail: "<p>awesome ruby job</p><p>with formatting</p>"
            ).save()
            new Job(
                profile: profile,
                jobTitle: "Groovy Developer",
                coreSkills: "Must know Groovy!",
                industry: "Hertz",
                summary: "<b>groovy</b> developer",
                detail: "<p>awesome groovy job</p><p>with formatting</p>"
            ).save()
            new Job(
                profile: profile,
                jobTitle: "JavaScript Developer",
                coreSkills: "Must know JavaScript!",
                industry: "NASA",
                summary: "<b>javascript</b> developer",
                detail: "<p>awesome javascript job</p><p>with formatting</p>"
            ).save()
        }
    }

    def destroy = {
    }
} 
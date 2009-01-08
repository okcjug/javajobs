import org.codehaus.groovy.grails.plugins.starksecurity.PasswordEncoder

class BootStrap {

     def init = { servletContext ->
         new Profile(companyName:"Spartan", userName:"user", email:"user@spartan.com").save()
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

         new Job(user: user, jobTitle: "Java Developer", coreSkills: "Must know Java!", industry: "Air Traffic").save()
         new Job(user: user, jobTitle: "Ruby Developer", coreSkills: "Must know Ruby!", industry: "Travel").save()
         new Job(user: user, jobTitle: "Groovy Developer", coreSkills: "Must know Groovy!", industry: "Hertz").save()
         new Job(user: user, jobTitle: "JavaScript Developer", coreSkills: "Must know JavaScript!", industry: "NASA").save()

     }
     def destroy = {
     }
} 
import org.codehaus.groovy.grails.plugins.starksecurity.PasswordEncoder

class BootStrap {

     def init = { servletContext ->
         new Profile(companyName:'My Test Company', userName:'testuser', password:'foo', email:'testuser@mytestcompany.com').save()
         new Profile(companyName:"Spartan", userName:"user", password:"pass", email:"user@spartan.com").save()

         // Create some roles
         new Role(authority: 'ROLE_SUPER_USER', description: 'Super user').save()
         new Role(authority: 'ROLE_REPORT_READER', description: 'Report reader').save()

         // Create a user, and add the super user role
         // You do this only if you're using the DAO implementation, for LDAP users don't live in your DB.
         def user = new User(username: 'admin', password: PasswordEncoder.encode('admin', 'SHA-256', true))
         user.save()
         user.addToRoles(Role.findByAuthority('ROLE_SUPER_USER'))
         user.save()

         new Job(user: user, summary: "Java Developer", detail: "Must know Java!", minimumPay: 10000, maximumPay: 25000).save()
         new Job(user: user, summary: "Ruby Developer", detail: "Must know Ruby!", minimumPay: 20000, maximumPay: 75000).save()
         new Job(user: user, summary: "Groovy Developer", detail: "Must know Groovy!", minimumPay: 15000, maximumPay: 35000).save()
         new Job(user: user, summary: "JavaScript Developer", detail: "Must know JavaScript!", minimumPay: 70000, maximumPay: 125000).save()

     }
     def destroy = {
     }
} 
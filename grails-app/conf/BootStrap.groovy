class BootStrap {

     def init = { servletContext ->
         new Recruiter(companyName:"Spartan", userName:"user", password:"pass", email:"user@spartan.com").save()
     }
     def destroy = {
     }
} 
class BootStrap {

     def init = { servletContext ->
         new Recruiter (
             companyName : 'My Test Company',
             userName : 'testuser',
             password : 'foo',
             email: 'testuser@mytestcompany.com').save()
         new Recruiter(companyName:"Spartan", userName:"user", password:"pass", email:"user@spartan.com").save()
     }
     def destroy = {
     }
} 
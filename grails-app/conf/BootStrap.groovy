class BootStrap {

     def init = { servletContext ->
         new Recruiter (
             companyName : 'My Test Company',
             userName : 'testuser',
             password : 'foo',
             email: 'testuser@mytestcompany.com').save()
     }
     def destroy = {
     }
} 
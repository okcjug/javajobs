class Recruiter {
    static hasMany = [ phones : Phone,  jobs : Job ]
    
    String companyName
    String userName
    String password
    String email
}
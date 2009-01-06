class Recruiter {
    String companyName
    String userName
    String password
    String email
    static hasMany = [ phones : Phone,  jobs : Job ]
}

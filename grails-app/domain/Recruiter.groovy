class Recruiter {
    static hasMany = [ phones : Phone,  jobs : Job ]
    
    String companyName
    String userName
    String password
    String email

    static constraints = {
	companyName(blank:false, maxLength:64)
	userName(blank:false, maxLength:32)
	password(blank:false, minLength:6, maxLength:32)
	email(blank:false, minLength:7, maxLength:64)
    }
}
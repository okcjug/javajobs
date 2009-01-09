class Profile {
    
    String companyName
    String userName
    String email

    static hasMany = [ phones : Phone,  jobs : Job ]

    static constraints = {
        companyName(blank:false, maxLength:64)
        userName(blank:false, maxLength:32)
        email(blank:false, minLength:7, maxLength:64)
    }

    String toString() { "${this.companyName}" }
}

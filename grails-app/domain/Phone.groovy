class Phone {
    Recruiter recruiter
    String type
    String number
    static constraints = {
        type(inList: ['Mobile', 'Fax', 'Office'], blank:false, maxLength:6)
    }
    static belongsTo = Recruiter
}

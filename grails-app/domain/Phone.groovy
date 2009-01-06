class Phone {
    static belongsTo = [recruiter : Recruiter ]

    String type // cell|fax|office|...
    String number

    static constraints = {
        type(inList: ['Mobile', 'Fax', 'Office'], blank:false, maxLength:6)
    }
}

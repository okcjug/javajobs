class Phone {
    Recruiter recruiter
    String type
    String number

    static belongsTo = Recruiter

    static constraints = {
        type(inList: ['Mobile', 'Fax', 'Office'], blank:false, maxLength:6)
        number(maxLength:25)
    }

    String toString() { "${this.type}: ${this.number}" }
}

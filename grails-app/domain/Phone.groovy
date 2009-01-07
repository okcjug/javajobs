class Phone {
    Profile profile
    String type
    String number

    static belongsTo = Profile

    static constraints = {
        type(inList: ['Mobile', 'Fax', 'Office'], blank:false, maxLength:6)
        number(maxLength:25)
        profile()
    }

    String toString() { "${this.type}: ${this.number}" }
}

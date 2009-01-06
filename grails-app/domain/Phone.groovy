class Phone {
    static belongsTo = [recruiter : Recruiter ]

    String type // cell|fax|office|...
    String number
}

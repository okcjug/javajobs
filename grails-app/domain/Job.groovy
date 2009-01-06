class Job {
    Recruiter recruiter
    String summary
    String detail
    Integer minimumPay
    Integer maximumPay
    static belongsTo = Recruiter
}

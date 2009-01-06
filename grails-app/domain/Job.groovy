class Job {
    String summary
    String detail
    Integer minimumPay
    Integer maximumPay
    static belongsTo = Recruiter
}

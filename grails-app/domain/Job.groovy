class Job {
    Recruiter recruiter
    String summary
    String detail
    Integer minimumPay
    Integer maximumPay
    static belongsTo = Recruiter

    static constraints =  {
        summary(maxLength:80, blank:false)
        detail(maxLength:4096, blank:false)
        minimumPay(min:0,blank:false)
        maximumPay(min:0,blank:false)
    }
}

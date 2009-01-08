class Job {
    User user
    String jobTitle
    String summary
    String detail
    String payRange
    String coreSkills
    String industry
    Date   datePosted
    static belongsTo = Profile

    static constraints =  {
        jobTitle(maxLength:36, blank:false)
        summary(maxLength:80, blank:false)
        detail(maxLength:4096, blank:false)
        payRange(blank:false)
        coreSkills()
        industry()
        datePosted(min:new Date(), blank:false)
        user()
    }
}

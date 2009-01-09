class Job {
    Profile profile
    String jobTitle
    String summary
    String detail
    String payRange = ""
    String coreSkills
    String industry
    Date   datePosted = new Date()
    static belongsTo = Profile

	
    static constraints =  {
        jobTitle(maxLength:36, blank:false)
        summary(maxLength:80, blank:false)
        detail(maxLength:4096, blank:false)
        payRange(blank:true)
        coreSkills()
        industry()
        datePosted(nullable: false, blank:false)
        profile(nullable:true)
    }
}

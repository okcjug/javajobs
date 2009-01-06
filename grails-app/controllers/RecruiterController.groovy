class RecruiterController {

    def index = { }
    //def scaffold = true

    def list = {
        [ recruiters : Recruiter.list() ]
    }
}

class RecruiterController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ recruiters: Recruiter.list( params ) ]
    }

    def show = {
        def recruiterInstance = Recruiter.get( params.id )

        if(!recruiterInstance) {
            flash.message = "Recruiter not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ recruiterInstance : recruiterInstance ] }
    }

    def delete = {
        def recruiterInstance = Recruiter.get( params.id )
        if(recruiterInstance) {
            recruiterInstance.delete()
            flash.message = "Recruiter ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Recruiter not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def recruiterInstance = Recruiter.get( params.id )

        if(!recruiterInstance) {
            flash.message = "Recruiter not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ recruiterInstance : recruiterInstance ]
        }
    }

    def update = {
        def recruiterInstance = Recruiter.get( params.id )
        if(recruiterInstance) {
            recruiterInstance.properties = params
            if(!recruiterInstance.hasErrors() && recruiterInstance.save()) {
                flash.message = "Recruiter ${params.id} updated"
                redirect(action:show,id:recruiterInstance.id)
            }
            else {
                render(view:'edit',model:[recruiterInstance:recruiterInstance])
            }
        }
        else {
            flash.message = "Recruiter not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def recruiterInstance = new Recruiter()
        recruiterInstance.properties = params
        return ['recruiterInstance':recruiterInstance]
    }

    def save = {
        def recruiterInstance = new Recruiter(params)
        if(!recruiterInstance.hasErrors() && recruiterInstance.save()) {
            flash.message = "Recruiter ${recruiterInstance.id} created"
            redirect(action:show,id:recruiterInstance.id)
        }
        else {
            render(view:'create',model:[recruiterInstance:recruiterInstance])
        }
    }
}

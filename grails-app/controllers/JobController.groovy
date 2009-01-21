class JobController {

    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    static authorizations = [
        index: Role.ALL_ROLES,
        list: Role.ALL_ROLES,
        view: Role.ALL_ROLES,
        show: Role.ALL_ROLES,
        feed: Role.ALL_ROLES,

        edit: Role.ALL_ROLES,
        delete: Role.ALL_ROLES,
        save: Role.ALL_ROLES,
        update: Role.ALL_ROLES,
        create: Role.ALL_ROLES
    ]


    def list = {
        if(!params.max) params.max = 10
        [ jobInstanceList: Job.list( params ) ]
    }

    def show = {
        def jobInstance = Job.get( params.id )

        if(!jobInstance) {
            flash.message = "Job not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ jobInstance : jobInstance ] }
    }

    def delete = {
        def jobInstance = Job.get( params.id )
        if(jobInstance) {
            jobInstance.delete()
            flash.message = "Job ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Job not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def jobInstance = Job.get( params.id )

        if(!jobInstance) {
            flash.message = "Job not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ jobInstance : jobInstance ]
        }
    }

    def update = {
        def jobInstance = Job.get( params.id )
        if(jobInstance) {
            jobInstance.properties = params
            if(!jobInstance.hasErrors() && jobInstance.save()) {
                flash.message = "Job ${params.id} updated"
                redirect(action:show,id:jobInstance.id)
            }
            else {
                render(view:'edit',model:[jobInstance:jobInstance])
            }
        }
        else {
            flash.message = "Job not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def jobInstance = new Job()
        jobInstance.properties = params
        return ['jobInstance':jobInstance]
    }

    def save = {
        def jobInstance = new Job(params)
        if(!jobInstance.hasErrors() && jobInstance.save()) {
            flash.message = "Job ${jobInstance.id} created"
            redirect(action:show,id:jobInstance.id)
        }
        else {
            render(view:'create',model:[jobInstance:jobInstance])
        }
    }

    def feed = {
        render(feedType:"atom", feedVersion:"1.0") {
            title = "OKC Java Jobs"
            link = "http://your.test.server/job/feed"
            description = "Oklahoma City Java Users Group, Inc. Job Feed"

            Job.list().each() {
                job ->
                    entry {
                        title = job.jobTitle
                        link = "http://your.test.server/article/"
                        job.detail
                    }
            }
        }
    }
}

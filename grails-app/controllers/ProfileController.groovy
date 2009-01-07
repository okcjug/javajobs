class ProfileController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ profiles : Profile.list( params ) ]
    }

    def show = {
        def profile = Profile.get( params.id )

        if(!profile) {
            flash.message = "Profile not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ profile : profile ] }
    }

    def delete = {
        def profile = Profile.get( params.id )
        if(profile) {
            profile.delete()
            flash.message = "Profile ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Profile not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def profile = Profile.get( params.id )

        if(!profile) {
            flash.message = "Profile not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ profile : profile ]
        }
    }

    def update = {
        def profile = Profile.get( params.id )
        if(profile) {
            profile.properties = params
            if(!profile.hasErrors() && profile.save()) {
                flash.message = "Profile ${params.id} updated"
                redirect(action:show,id:profile.id)
            }
            else {
                render(view:'edit',model:[profile:profile])
            }
        }
        else {
            flash.message = "Profile not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def profile = new Profile()
        profile.properties = params
        return ['profile':profile]
    }

    def save = {
        def profile = new Profile(params)
        if(!profile.hasErrors() && profile.save()) {
            flash.message = "Profile ${profile.id} created"
            redirect(action:show,id:profile.id)
        }
        else {
            render(view:'create',model:[profile:profile])
        }
    }
}

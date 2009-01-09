class RecruiterController {

	static authorizations = [
		home: Role.ALL_ROLES
	]

    def index = { 
		redirect(action:home,params:params)
	}
	
	def home = {
		def profile = Profile.findByUserName(request.remoteUser)
		[profile: profile]
	}
}

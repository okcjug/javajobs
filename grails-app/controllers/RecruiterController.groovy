class RecruiterController {

	static authorizations = [
		home: [Role.ROLE_RECRUITER]
	]

    def index = { 
		redirect(action:home,params:params)
	}
	
	def home = {
		profile = Profile.findByUserName(request.remoteUser)
		[profile: profile]
	}
}

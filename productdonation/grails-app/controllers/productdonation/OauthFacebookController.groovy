package productdonation

import org.scribe.model.Token;

class OauthFacebookController {
	def oauthService
	def grailsApplication
	def springSecurityService
    def facebookCallback() {
		Token token = (Token) session[oauthService.findSessionKeyForAccessToken('facebook')]
		def apiUrl = grailsApplication.config.grails.facebook.api.url
		def result = oauthService.getFacebookResource(facebookAccessToken, apiUrl)?.getBody()
		def facebookResponse = JSON.parse(result)
		String email=facebookResponse("email")
		String userName = facebookResponse['username']
		String facebookId = facebookResponse['id']
		User user = User.findByOauthId(facebookId)
		if (user) {
			// If user found with this facebook id, authenticate him
			springSecurityService.reauthenticate(userName)
			redirect controller:"index"
		} else {
		   redirect controller:"index"
		}
		
	}
}

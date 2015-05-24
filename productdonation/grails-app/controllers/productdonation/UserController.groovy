package productdonation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {
	def springSecurityService
	def mailService
	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond User.list(params), model:[userInstanceCount: User.count()]
	}

	def show(User userInstance) {
		session["avatar"]=userInstance?.avatar
		if(springSecurityService.currentUser!=null){
			respond springSecurityService.currentUser
		}else{
			redirect controller:"login"
		}
	}

	def create() {
		respond new User(params)
	}

	@Transactional
	def save(User userInstance) {
		if (userInstance == null) {
			notFound()
			return
		}

		if (userInstance.hasErrors()) {
			respond userInstance.errors, view:'create'
			return
		}

		userInstance.save flush:false
		def userRole = Role.findByAuthority('ROLE_USER')

		UserRole.create(userInstance,userRole,true)


		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'user.label', default: 'User'),
					userInstance.id
				])
				redirect userInstance
			}
			'*' { respond userInstance, [status: CREATED] }
		}
	}

	def edit(User userInstance) {
		respond userInstance
	}

	@Transactional
	def update(User userInstance) {
		if (userInstance == null) {
			notFound()
			return
		}

		if (userInstance.hasErrors()) {
			respond userInstance.errors, view:'edit'
			return
		}
		if(userInstance?.avatar?.length==0){
			userInstance.avatar=session["avatar"]
		}
		userInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'User.label', default: 'User'),
					userInstance.id
				])
				redirect userInstance
			}
			'*'{ respond userInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(User userInstance) {

		if (userInstance == null) {
			notFound()
			return
		}

		userInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'User.label', default: 'User'),
					userInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'user.label', default: 'User'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
	def sendEmail(){
		List<User> users=User.findAllByIsNewEmailReciever(true)
		List<String> emails=[]
		users.each{
			emails.add(it.username)
		}
		try{
			mailService.sendMail{

				to emails.toArray()
				subject "No Reply"
				body params.content
			}
		}catch(Exception e){
			e.printStackTrace()
		}
		redirect controller:"user", action:"index"
	}
}

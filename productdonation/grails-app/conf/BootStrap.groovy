
import productdonation.RequestMap;
import productdonation.Role
import productdonation.UserRole;
import productdonation.User;
class BootStrap {

	def init = {
		/**
		 * Creare User and Admin role
		 */
		def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
		/**
		 * Create Admin
		 */
		def adminUser = User.findByUsername('admin') ?: new User(
				username: 'admin',
				password: 'admin',
				enabled: true).save(failOnError: true)

		if (!adminUser.authorities.contains(adminRole)) {
			new UserRole(user: adminUser, role:adminRole).save(flush:true)
		}
		/**
		 * Create mapping URL
		 */
		if(RequestMap.count==0){
			for (String url in [
				'/',
				'/index',
				'/index.gsp',
				'/**/favicon.ico',
				'/**/js/**',
				'/**/css/**',
				'/**/images/**',
				'/**/fonts/**',
				'/login',
				'/login.*',
				'/login/*',
				'/logout',
				'/logout.*',
				'/logout/*'
			]) {
				new RequestMap(url: url, configAttribute: 'permitAll').save()
			}

			new RequestMap(url: '/j_spring_security_switch_user',
			configAttribute: 'ROLE_SWITCH_USER,isFullyAuthenticated()').save()
		}
	}
	def destroy = {
	}
}
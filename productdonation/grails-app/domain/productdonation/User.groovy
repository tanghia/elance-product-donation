package productdonation

import java.util.Date;

import productdonation.util.DateUtil;
import sun.management.jmxremote.ConnectorBootstrap.DefaultValues;

class User {

	transient springSecurityService
	String name
	String lastName
	byte[] avatar
	String username
	//String confirmUsername
	String password
    //String confirmPassword
	String phoneNumber
	String address
	String description;
	
	Date createdDate
	
	boolean isNewEmailReciever;
	
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		name blank:false, nullable: true
		lastName blank:false, nullable:true
		//confirmUsername blank:false, nullable:true
		//confirmPassword blank:false, nullable:true
		username blank:false,unique: true,email:true
	    password blank: false, nullable: false
		phoneNumber blank:false, nullable:true
		isNewEmailReciever blank:false
		avatar nullable:true, maxSize:1073741824
		address nullable:true
		description nullable:true  
		createdDate blank:true, nullable:true 
		
	}

	static mapping = {
		isNewEmailReciever defaultValue:false
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		if(createdDate==DateUtil.NULL_DATE){
			createdDate=new Date()
		}
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
	
}

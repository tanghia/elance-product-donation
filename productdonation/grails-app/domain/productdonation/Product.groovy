package productdonation

import javax.persistence.ManyToMany;

import productdonation.util.DateUtil;

class Product {
	transient springSecurityService
	static belongsTo=[user:User,category:Category] 
	String productName
	byte[] photo
	String description
	String summary
	String tag
	String address
	String contactDetail
	boolean isDonation
	boolean status
	Date createdDate
	Date activeDate
	int views
	boolean isHot
	static transients = ['springSecurityService']
	static constraints = {
		tag blank:false, nullable:false, inList:["Usuario", "Hoy por ti"]
		productName blank:false, nullable:false
		description blank:false, nullable:false
		contactDetail blank:true, nullable:true
		summary blank:false, nullable:false
		status blank:false
		address nullable:true
		createdDate blank:true, nullable:true
		activeDate blank:false, nullable:false
		photo blank:false, nullable:false, maxSize:1073741824
	}
	static mapping = {
	//	photos cascade: 'all-delete-orphan'
		status defaultValue:false
		isDonation defaultValue:true
		views defaultValue:1
		isHot defaultValue:false
	}
	def beforeInsert(){
		createdDate=new Date();
		if(activeDate==DateUtil.NULL_DATE){
			activeDate=new Date();
		}
		user=springSecurityService.currentUser
		this.user=user
		Role r=Role.findByAuthority("ROLE_ADMIN")
		if(UserRole.get(user.id, r.id)){
			this.tag="Hoy por ti"
			this.status=true
		}else{
			this.tag="Usuario"
		}
	}
}

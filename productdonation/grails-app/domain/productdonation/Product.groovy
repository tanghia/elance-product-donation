package productdonation

import javax.persistence.ManyToMany;

import productdonation.util.DateUtil;

class Product {
	static belongsTo=[user:User,category:Category] 
	transient springSecurityService
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
	static constraints = {
		tag blank:false, nullable:false, inList:["Usuario", "Hoy por ti"]
		productName blank:false, nullable:false
		description blank:false, nullable:false
		contactDetail blank:false, nullable:false
		summary blank:false, nullable:false
		status blank:false
		address nullable:true
		createdDate blank:true, nullable:false
		activeDate blank:false, nullable:false, min:new Date()
	}
	static mapping = {
	//	photos cascade: 'all-delete-orphan'
		status defaultValue:false
		isDonation defaultValue:true
		views defaultValue:1
		isHot defaultValue:false
	}
	def beforeInsert(){
		if(createdDate==DateUtil.NULL_DATE){
			createdDate=new Date();
		}
		if(activeDate==DateUtil.NULL_DATE){
			activeDate=new Date();
		}
		user=springSecurityService.currentUser
	}
}

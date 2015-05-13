package productdonation

import java.util.Date;

import productdonation.util.DateUtil;

class Category {
	String name
	Date createdDate
	boolean status

	static constraints = {
		name blank:false, nullable:false, minSize:1, maxSize:50
	}
	static mapping={
		status defaultValue:true
	}
	def beforeInsert(){
		if(createdDate==DateUtil.NULL_DATE){
			createdDate=new Date()	
		}
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return name;
	}
}

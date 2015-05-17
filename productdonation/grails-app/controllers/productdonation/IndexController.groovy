package productdonation

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class IndexController {

    def index() { 
			def hotProductCriteria=Product.createCriteria()
			def hotProducts=hotProductCriteria.list{
		
				and{
					eq("status",true)
					eq("isHot",true)
				}
				order("createdDate","desc")
				maxResults(5)
				
			}
			def newProductCriteria=Product.createCriteria()
			def newProducts=newProductCriteria.list{
				
				eq("status",true)
				order("createdDate","desc")
				maxResults(5)
			}
		   def userPostedProductCriteria=Product.createCriteria()
		   def userPostedProducts=userPostedProductCriteria.list{
			   and{
			   eq("tag","Usuario")
			   eq("status",true)
			   }
			   order("createdDate","desc")
		   }
		   def adminPostedProductCriteria=Product.createCriteria()
		   def adminPostedProducts=adminPostedProductCriteria.list{
			  and {
			   eq("tag","Hoy por ti")
			   eq("status",true)
			   }
			   order("createdDate","desc")
		   }		  
		  println adminPostedProducts.size()
		   
		[hotProducts:hotProducts,newProducts:newProducts,userPostedProducts:userPostedProducts, adminPostedProducts:adminPostedProducts]   
		   
	}
	def viewPostedUser(){
		def userPostedProductCriteria=Product.createCriteria()
		def userPostedProducts=userPostedProductCriteria.list{
			and{
			eq("tag","Usuario")
			eq("status",true)
			}
			order("createdDate","desc")
		}
		def adminPostedProductCriteria=Product.createCriteria()
		def adminPostedProducts=adminPostedProductCriteria.list{
		   and {
			eq("tag","Hoy por ti")
			eq("status",true)
			}
			order("createdDate","desc")
		}
		def user=User.get(params.uid)
		[user:user,userPostedProducts:userPostedProducts, adminPostedProducts:adminPostedProducts]
	}
	def applyToProduct(){
		def userPostedProductCriteria=Product.createCriteria()
		def userPostedProducts=userPostedProductCriteria.list{
			and{
			eq("tag","Usuario")
			eq("status",true)
			}
			order("createdDate","desc")
		}
		def adminPostedProductCriteria=Product.createCriteria()
		def adminPostedProducts=adminPostedProductCriteria.list{
		   and {
			eq("tag","Hoy por ti")
			eq("status",true)
			}
			order("createdDate","desc")
		}
	    def postedUser=User.get(params.uid)
		def product=Product.get(params.pid)
		[postedUser:postedUser, product:product,userPostedProducts:userPostedProducts, adminPostedProducts:adminPostedProducts]
	}
}

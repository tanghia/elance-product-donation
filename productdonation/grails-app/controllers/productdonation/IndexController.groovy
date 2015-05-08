package productdonation

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class IndexController {

    def index() { 
		respond new User(params)		
	}
}

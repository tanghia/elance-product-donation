package productdonation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AgreementController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Agreement.list(params), model:[agreementInstanceCount: Agreement.count()]
    }

    def show(Agreement agreementInstance) {
        respond agreementInstance
    }

    def create() {
        respond new Agreement(params)
    }

    @Transactional
    def save(Agreement agreementInstance) {
        if (agreementInstance == null) {
            notFound()
            return
        }

        if (agreementInstance.hasErrors()) {
            respond agreementInstance.errors, view:'create'
            return
        }

        agreementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'agreement.label', default: 'Agreement'), agreementInstance.id])
                redirect agreementInstance
            }
            '*' { respond agreementInstance, [status: CREATED] }
        }
    }

    def edit(Agreement agreementInstance) {
        respond agreementInstance
    }

    @Transactional
    def update(Agreement agreementInstance) {
        if (agreementInstance == null) {
            notFound()
            return
        }

        if (agreementInstance.hasErrors()) {
            respond agreementInstance.errors, view:'edit'
            return
        }

        agreementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Agreement.label', default: 'Agreement'), agreementInstance.id])
                redirect agreementInstance
            }
            '*'{ respond agreementInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Agreement agreementInstance) {

        if (agreementInstance == null) {
            notFound()
            return
        }

        agreementInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Agreement.label', default: 'Agreement'), agreementInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'agreement.label', default: 'Agreement'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

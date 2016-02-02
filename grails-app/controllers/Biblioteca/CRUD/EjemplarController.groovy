package Biblioteca.CRUD



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EjemplarController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ejemplar.list(params), model:[ejemplarInstanceCount: Ejemplar.count()]
    }

    def show(Ejemplar ejemplarInstance) {
        respond ejemplarInstance
    }
    
    def consulta(String busqueda){
        respond Ejemplar.findAllByClaveLike('%'+busqueda+'%'), model:[ejemplarInstanceCount:Ejemplar.count()]        
    }

    def create() {
        respond new Ejemplar(params)
    }

    @Transactional
    def save(Ejemplar ejemplarInstance) {
        if (ejemplarInstance == null) {
            notFound()
            return
        }

        if (ejemplarInstance.hasErrors()) {
            respond ejemplarInstance.errors, view:'create'
            return
        }

        ejemplarInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ejemplar.label', default: 'Ejemplar'), ejemplarInstance.id])
                redirect ejemplarInstance
            }
            '*' { respond ejemplarInstance, [status: CREATED] }
        }
    }

    def edit(Ejemplar ejemplarInstance) {
        respond ejemplarInstance
    }

    @Transactional
    def update(Ejemplar ejemplarInstance) {
        if (ejemplarInstance == null) {
            notFound()
            return
        }

        if (ejemplarInstance.hasErrors()) {
            respond ejemplarInstance.errors, view:'edit'
            return
        }

        ejemplarInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ejemplar.label', default: 'Ejemplar'), ejemplarInstance.id])
                redirect ejemplarInstance
            }
            '*'{ respond ejemplarInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ejemplar ejemplarInstance) {

        if (ejemplarInstance == null) {
            notFound()
            return
        }

        ejemplarInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ejemplar.label', default: 'Ejemplar'), ejemplarInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ejemplar.label', default: 'Ejemplar'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

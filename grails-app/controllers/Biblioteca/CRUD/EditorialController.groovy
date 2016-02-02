package Biblioteca.CRUD



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EditorialController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Editorial.list(params), model:[editorialInstanceCount: Editorial.count()]
    }

    def show(Editorial editorialInstance) {
        respond editorialInstance
    }

    def consulta(String busqueda){
        respond Editorial.findAllByEditorialLike('%'+busqueda+'%'), model:[editorialInstanceCount:Editorial.count()]
    }
    
    def create() {
        respond new Editorial(params)
    }

    @Transactional
    def save(Editorial editorialInstance) {
        if (editorialInstance == null) {
            notFound()
            return
        }

        if (editorialInstance.hasErrors()) {
            respond editorialInstance.errors, view:'create'
            return
        }

        editorialInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'editorial.label', default: 'Editorial'), editorialInstance.id])
                redirect editorialInstance
            }
            '*' { respond editorialInstance, [status: CREATED] }
        }
    }

    def edit(Editorial editorialInstance) {
        respond editorialInstance
    }

    @Transactional
    def update(Editorial editorialInstance) {
        if (editorialInstance == null) {
            notFound()
            return
        }

        if (editorialInstance.hasErrors()) {
            respond editorialInstance.errors, view:'edit'
            return
        }

        editorialInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Editorial.label', default: 'Editorial'), editorialInstance.id])
                redirect editorialInstance
            }
            '*'{ respond editorialInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Editorial editorialInstance) {

        if (editorialInstance == null) {
            notFound()
            return
        }

        editorialInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Editorial.label', default: 'Editorial'), editorialInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'editorial.label', default: 'Editorial'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

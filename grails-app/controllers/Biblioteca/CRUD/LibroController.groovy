package Biblioteca.CRUD



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LibroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Libro.list(params), model:[libroInstanceCount: Libro.count()]
    }

    def show(Libro libroInstance) {
        respond libroInstance
    }
    
    def consulta(String busqueda){
        respond Libro.findAllByTituloLike('%'+busqueda+'%'), model:[libroInstanceCount:Libro.count()]
    }

    def create() {
        respond new Libro(params)
    }

    @Transactional
    def save(Libro libroInstance) {
        if (libroInstance == null) {
            notFound()
            return
        }

        if (libroInstance.hasErrors()) {
            respond libroInstance.errors, view:'create'
            return
        }

        libroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'libro.label', default: 'Libro'), libroInstance.id])
                redirect libroInstance
            }
            '*' { respond libroInstance, [status: CREATED] }
        }
    }

    def edit(Libro libroInstance) {
        respond libroInstance
    }

    @Transactional
    def update(Libro libroInstance) {
        if (libroInstance == null) {
            notFound()
            return
        }

        if (libroInstance.hasErrors()) {
            respond libroInstance.errors, view:'edit'
            return
        }

        libroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Libro.label', default: 'Libro'), libroInstance.id])
                redirect libroInstance
            }
            '*'{ respond libroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Libro libroInstance) {

        if (libroInstance == null) {
            notFound()
            return
        }

        libroInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Libro.label', default: 'Libro'), libroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'libro.label', default: 'Libro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

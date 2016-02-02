package Biblioteca.CRUD

class PrincipalController {

	def index() { 
        //params.max = Math.min(max ?: 10, 100)
        respond Libro.list(params), model:[libroInstanceCount: Libro.count()]
    }

    //def msgBusqueda = message(code:"principal.busqueda" default:"Buscar Libro")

    def show(String busqueda){
    	//render "Busqueda principal por: " + busqueda


    	respond Libro.findAllByTituloLike('%'+busqueda+'%'), model:[libroInstanceCount: Libro.count()]
    	
    }
}

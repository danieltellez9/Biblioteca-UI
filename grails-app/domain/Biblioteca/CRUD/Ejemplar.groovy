package Biblioteca.CRUD

class Ejemplar {

	String clave
	String localizacion
	Libro libro

	static belongsTo = [libro:Libro]

    static constraints = {
    	clave(blank:false)
    	localizacion(blank:false)
    }
}

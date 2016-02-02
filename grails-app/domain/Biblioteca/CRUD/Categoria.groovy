package Biblioteca.CRUD

class Categoria {

	String categoria

    static constraints = {
    	categoria(blank:false)
    }

    String toString(){
    	return categoria
    }

}

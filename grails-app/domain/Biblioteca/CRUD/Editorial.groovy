package Biblioteca.CRUD

class Editorial {

	String editorial

    static constraints = {
    	editorial(blank:false)
    }

    String toString(){
    	return editorial
    }
}

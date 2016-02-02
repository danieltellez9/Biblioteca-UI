package Biblioteca.CRUD

class Libro {

    String titulo
    int numPag
    Autor autor
    Editorial editorial
    Categoria categoria

    static belongsTo = [autor:Autor]

    static constraints = {
    	titulo(blank:false)
    	numPag(blank:false)
    }

    String toString(){
    	return titulo
    }
}

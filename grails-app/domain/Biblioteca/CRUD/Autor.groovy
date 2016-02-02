package Biblioteca.CRUD

class Autor {

	String nombre
	String aPaterno
	String aMaterno
	int edad

	static hasMany = [libros:Libro]

    static constraints = {
    	nombre(blank:false)
    	aPaterno(blank:false)
    	aMaterno(blank:false)
    	edad(range:1..150)
    }

    String toString(){
    	return nombre + " " + aPaterno + " " + aMaterno
    }


}

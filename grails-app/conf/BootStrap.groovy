
import Biblioteca.CRUD.Autor
import Biblioteca.CRUD.Categoria
import Biblioteca.CRUD.Editorial
import Biblioteca.CRUD.Libro

class BootStrap {

    def init = { servletContext ->
        /*/Autores
        new Autor(nombre: "Ana", aPaterno: "Galan", aMaterno: "Galan", edad: 35).save()
        new Autor(nombre: "Margaret", aPaterno: "Wise", aMaterno: "Brown", edad: 23).save()
        new Autor(nombre: "Roger", aPaterno: "Priddly", aMaterno: "Priddly", edad:53).save()
        new Autor(nombre: "Thomas", aPaterno: "Nelson", aMaterno: "Nelson", edad: 85).save()
        new Autor(nombre: "Philip", aPaterno: "D", aMaterno: "Eastman", edad: 45).save()
        new Autor(nombre: "Enrique", aPaterno: "Lazo", aMaterno: "Lazo", edad: 36).save()
        new Autor(nombre: "Chloe", aPaterno: "Santana", aMaterno: "Lazo", edad: 26).save()
        new Autor(nombre: "Sophie", aPaterno: "Saint", aMaterno: "Rose", edad: 65).save()
        new Autor(nombre: "Kristel", aPaterno: "Ralston", aMaterno: "Jorques", edad: 29).save()
        
        //Categorias
        new Categoria(categoria: "Cuentos infantiles").save()
        new Categoria(categoria: "Conocimiento").save()
        new Categoria(categoria: "Fantasia").save()
        new Categoria(categoria: "Suspenso").save()
        new Categoria(categoria: "Romance").save()
        
        //Editoriales
        new Editorial(editorial: "Paperback").save()
        new Editorial(editorial: "Board book").save()
        new Editorial(editorial: "Kindle Edition").save()
        
        //Libros
        new Libro(titulo: "Qué cosas dice mi abuela", categoria: Categoria.get(1), editorial: Editorial.get(1), numPag: 452, autor: Autor.get(1)).save()
        new Libro(titulo: "Goodnight Moon", categoria: Categoria.get(1), editorial: Editorial.get(1), numPag: 471, autor: Autor.get(2)).save()
        new Libro(titulo: "First 100 Words Bilingual", categoria: Categoria.get(2), editorial: Editorial.get(2), numPag: 321, autor: Autor.get(3)).save()
        new Libro(titulo: "¿Sabías que...?", categoria: Categoria.get(2), editorial: Editorial.get(3), numPag: 785, autor: Autor.get(4)).save()
        new Libro(titulo: "Perro grande... Perro pequeño", categoria: Categoria.get(3), editorial: Editorial.get(1), numPag: 452, autor: Autor.get(5)).save()
        new Libro(titulo: "LIBÉLULAS AZULES", categoria: Categoria.get(3), editorial: Editorial.get(3), numPag: 444, autor: Autor.get(6)).save()
        new Libro(titulo: "Efecto dominó", categoria: Categoria.get(4), editorial: Editorial.get(3), numPag: 123, autor: Autor.get(7)).save()
        new Libro(titulo: "Nadie nos separá jamás", categoria: Categoria.get(5), editorial: Editorial.get(3), numPag: 684, autor: Autor.get(8)).save()
        new Libro(titulo: "Un acuerdo inconveniente", categoria: Categoria.get(4), editorial: Editorial.get(3), numPag: 634, autor: Autor.get(9)).save()
        new Libro(titulo: "Mi princesa vikinga", categoria: Categoria.get(3), editorial: Editorial.get(3), numPag: 986, autor: Autor.get(8)).save()
        */
        
    }
    def destroy = {
    }
}

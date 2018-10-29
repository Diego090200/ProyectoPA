#proyecto prueba 1   puts "BOOKSTORE"
#proyecto prueba 1   
autores ={
    tope: nil,
    final: nil,
    esta_vacía: true,
    esta_llena: false,
    max: 5,
    size: 0,
}

autor= {
    tope: nil,
    esta_vacia: true,
    size: 0,
}

libro={
    
    codigo: isbn,
    nombre: n,
    precio: p,
    siguiente: nil,
    autor: autor,
    size: 0
}



def registrar(lista, valor)

    if valor == 'a' or valor == 'A'

        puts 'Ingrese el nombre del libro'
        n = gets.chomp
        puts 'Ingrese el precio del libro'
        p = gets.chomp.to_i
        puts 'Ingrese el numero ISBN del libro'
        isbn = gets.chomp.to_i


        libro = {
            codigo: isbn,
            nombre: n,
            precio: p,
            autor: autor
        }

    elsif valor == 'b' or valor == 'B'

        puts "Ingrese el nombre del autor"
        nombre = gets.chomp

        nombre = autor

        autor = {
            tope: nil
            esta_vacia: true,
            size: 0
        }

    else
        puts 'Ingrese nuevamente su opcion'
    end
end





begin
        
    puts "BOOKSTORE"
    puts "Seleccione una opción: "
    puts "1. Administración de libros"
    puts "2. Control de ventas:"
     puts "3. salir"
    opcion=gets.chomp.to_i
     if opcion==1
        begin
            puts "a. Registre un nuevo libro"
            puts "b. Regiistre un nuevo autor"
            puts "c. listado de libros"
            puts "d. listados de autores"
            puts "e. Buscar libro"
            puts "f. Buscar autor"
            puts "g. Salir"
            valor == gets.chomp

            registrar(lista, valor)
        end while valor != 'g' or valor != 'G'
    else 
        puts "Ingreso un valor inválido"
    end
end while opcion=!3

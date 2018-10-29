#proyecto prueba 1 
require 'byebug'
require 'terminal-table'

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
  size: 0
}

def mostrar(autores)
    aux = autores[:tope]
    if vacia?(autores)
      puts 'La pila esta vacía'
    else
      tabla = Terminal::Table.new do |t|
        t.headings = ['Autores', 'C. Libros']
  
        aux = autores[:tope]
        loop do
          siguiente = aux[:siguiente]
          libro = aux[:valor]
          t.add_row([
            "#{autor[:libro]} - #{autor[:nombre]}",
            obtener_posicion(autores, autor[:libro]),
            siguiente == nil ? 'NIL' : siguiente[:valor][:carnet]
          ])
          if aux[:siguiente] == nil
            break
          end
          aux = aux[:siguiente]
        end
        t.add_row(:separator)
        t.add_row([
          { value: 'Total', colspan: 2, alignment: :right },
          autores[:size]
        ])
      end
      puts tabla
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
    puts "Seleccione la acción que desea"
    puts "a. Registro de nuevos libros" 
    puts "b. Registro de autores"
    puts "c. Listado de libros"
    puts "d. Listado de autores"
    puts "e. Buscar libro"
    puts "f. Buscar autor" 

    opcion1= gets.chomp.downcase
    if opcion1=='a'
        registrol()
    elsif opcion1=='b'
        registroa()
    elsif opcion1=='c'
        listadol()
    elsif opcion1=='d'
        listadoa()
    elsif opcion1=='e'
        buscarl()
    elsif opcion1=='f'
        buscara()
    else
        puts "Ingreso una opción inválida"
    end

elsif opcion==2
    puts "Seleccione la acción que desea"
    puts "a. Registrar una venta" 
    puts "b. Buscar una venta"
    puts "c. Listado de ventas"

    opcion2= gets.chomp.downcase

    if opcion2=='a'
        registrov()
    elsif opcion2=='b'
        buscarv()
    elsif opcion2=='c'
        listadov()
    else
        puts "Ingreso una opción inválida"
    end
else 
    puts "Ingreso un valor inválido"
end
    end while opcion=!3

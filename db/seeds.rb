require 'faker'

def rand_edad
  rand(18...50)
end

def rand_stars
  rand(1...5)
end

def rand_capacity
  rand(50...300)
end

20.times do
starter_platillos = Platillo.new(nombre: Faker::Food.dish)
starter_platillos.save
end

10.times do
starter_empleados = Empleado.new(nombre: Faker::Name.name_with_middle, edad: rand_edad, rol: "personal de linea")
starter_empleados.save
end

resto = Restaurante.new(nombre: Faker::Restaurant.name, direccion: Faker::Address.street_address, estrellas: rand_stars, capacidad: rand_capacity, estilo: Faker::Restaurant.type )
resto.empleado = Empleado.all
resto.platillo = Platillo.all
resto.save
end

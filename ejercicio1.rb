class Person
  def initialize(first,last,age,type)
    @first_name = first
    @last_name = last
    @age = age
    @type = type
  end

  def birthday
    @age += 1
  end
end


class Teacher < Person
  def talk
    "Bienvenidos a la clase de Programación con Ruby!"
  end
  def introduce
    "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}"
  end
end

class Student < Person

  def talk
    "Aquí es la clase de programación con Ruby?"
  end

  def introduce
    "Hola profesor. Mi nombre es #{@first_name} #{@last_name}"
  end

end

class Parent < Person
  def talk
    "Aquí es la reunión de apoderados?"
  end

  def introduce
    "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}"
  end
end


Estudiante1 = Student.new("Agustín","Goycolea",25,"Student")
puts estudiante.birthday
puts estudiante.talk
puts estudiante.introduce  
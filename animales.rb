module Habilidades
  module Volador
    def volar
    'Estoy volandooooo!'
    end
    def aterrizar
    'Estoy cansado de volar, voy a aterrizar'
    end
  end
  module Nadador
    def nadar
    'Estoy nadando!'
    end
    def sumergir
    'glu glub glub glu'
    end
  end
  module Caminante
    def caminar
    'Puedo caminar!'
    end
  end
end
module Alimentacion
  module Herbivoro
    def comer
    'Puedo comer plantas!'
    end
  end
  module Carnivoro
    def comer
    'Puedo comer carne!'
    end
  end
end


class Animal
  attr_reader : nombre
  def initialize (nombre)
    @nombre = nombre
  end


  class Ave < Animal
    include Habilidades
  end

  class Mamifero < Animal
    include Habilidades 
  end

  class Insecto
    include Habilidades
  end


  class Penguin < Ave
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end

  class Paloma < Ave
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herviboro
  end

  class Duck < Ave
    include Habilidades
    include Alimentacion::Herviboro
  end

  class Dog < Mamifero
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end

  class Cat < Mamifero
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Herviboro
  end

  class Cow < Mamifero
    include Alimentacion::Herviboro
    include Habilidades::Caminante
  end

  class Fly < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end
  
  class Butterfly < Insecto
    include Habilidades::Volador
    include Alimentacion::Herviboro
  end

  class Bee < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end

ejemplo=Pato.new("Duck")
puts ejemplo.nadar


class Fruit # ------------------------------------------------
# lista de precios
    ListaPrecios = {} 
	    ListaPrecios["apple"] = 10
		ListaPrecios["orange"] = 5
		ListaPrecios["banana"] = 20
		ListaPrecios["watermelon"] = 50
		ListaPrecios["rice"] = 1
		ListaPrecios["vacuum cleaner"] = 150
		ListaPrecios["anchovies"] = 2

# método inicializar clase
  def initialize(name)  
    @name = name
    @price = ListaPrecios[name]
  end

# devuelve el nombre de la fruta
  def getName
    return @name  
  end  

# devuelve el precio de la fruta
  def getPrice
    return @price  
  end 
end # -------------------------------------------------------

class ShoppingCart # ----------------------------------------

  # método inicializar clase
  def initialize()  
    @articulos = [] 
  end

  # método añadir articulo
  def add(articulo)  
  	# se incluye el articulo a la lista de articulos
    @articulos << articulo 
  end

  # método calcular coste 
  def cost()  
    suma = 0
    # se suman los precios de los articulos en @articulos
    @articulos.each do |articulo|
    	suma = suma + articulo.getPrice
    end
    return suma
  end
end

cart = ShoppingCart.new
apple = Fruit.new("apple")
banana = Fruit.new("banana")

cart.add apple
cart.add banana

puts cart.cost 

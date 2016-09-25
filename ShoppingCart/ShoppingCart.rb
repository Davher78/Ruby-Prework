

class Fruit # ------------------------------------------------
# lista de precios

    ListaPrecios = {} 
	    ListaPrecios["apple"] = 10.00
		ListaPrecios["orange"] = 5.00
		ListaPrecios["banana"] = 20.00
		ListaPrecios["watermelon"] = 50.00
		ListaPrecios["rice"] = 1.00
		ListaPrecios["vacuum cleaner"] = 150.00
		ListaPrecios["anchovies"] = 2.00

	ListaDescuentos = {} 
	    ListaDescuentos["apple"] = 0.00
		ListaDescuentos["orange"] = 0.00
		ListaDescuentos["banana"] = 0.00
		ListaDescuentos["watermelon"] = 0.00
		ListaDescuentos["rice"] = 0.00
		ListaDescuentos["vacuum cleaner"] = 5.00
		ListaDescuentos["anchovies"] = 0.00

# método inicializar clase
  def initialize(name)  
    @name = name
    # inicializamos el precio, si el articulo no está en catalogo el precio es 0$
    if ListaPrecios[name].nil?
       @price = 0
    else
       @price = ListaPrecios[name]
    end  
    # inicializamos el descuento, si el articulo no está en catalogo el descuento es 0%
    if ListaDescuentos[name].nil?
       @discount = 0
    else
       @discount = ListaDescuentos[name]
    end  

  end

# devuelve el nombre del articulo
  def getName
    return @name  
  end  

# devuelve el precio del articulo
  def getPrice
  	# calculamos el precio aplicando el descuento del articulo si procede
  	precio = @price * (1 - (@discount / 100))
    return precio  
  end 

# devuelve el descuento del articulo
  def getDiscount
  	# calculamos el descuento en función del día de la semana
    return @discount  
  end  

end # -------------------------------------------------------

class ShoppingCart # ----------------------------------------


  # variables del descuento por numero de articulos de la compra
  ItemDiscount = {}
    ItemDiscount["Num"] = 5
    ItemDiscount["Discount"] = 10.00

  # variables del descuento por compra en fin de semana
  WeekendDiscount = 10.0  

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
    
    # se suman los precios de los articulos en @articulos con los descuentos por articulo aplicados
    @articulos.each do |articulo|
    	suma = suma + articulo.getPrice
    end

    # se aplica el descuento por numero de articulos si procede
    if @articulos.length > ItemDiscount["Num"]
    	suma = suma * (1 - (ItemDiscount["Discount"]/100))
    end

    # se aplica el descuento de fin de semana si procede
    t= Time.now
    if t.saturday? || t.sunday?
    	suma = suma * (1 - (WeekendDiscount/100))
    end

    # se devuelve el precio de la compra aplicando todos los descuentos
    return suma

  end
end

cart = ShoppingCart.new

apple1 = Fruit.new("apple")
apple2 = Fruit.new("apple")
apple3 = Fruit.new("apple")
apple4 = Fruit.new("apple")
apple5 = Fruit.new("apple")
apple6 = Fruit.new("apple")
#banana = Fruit.new("banana")

cart.add apple1
cart.add apple2
cart.add apple3
cart.add apple4
cart.add apple5
#cart.add apple6

#cart.add banana

puts cart.cost 

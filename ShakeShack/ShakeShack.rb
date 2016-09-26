
class MilkShake
  def initialize
	  @base_price = 3
	  @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
      @ingredients.push(ingredient)
  end

  def price_of_milkshake
	  #Let's establish what our counter should be before we start adding ingredients into the mix
	  total_price_of_milkshake = @base_price
	  #Add each ingredients price to our total
	  @ingredients.each do |ingredient|
	    total_price_of_milkshake += ingredient.price
	  end
	  #return  our total price to whoever called for it
	   total_price_of_milkshake
  end

end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
     @name = name
     @price = price
  end
end

class ShakeShop

  def initialize
	  @milkshakes = [ ]    
  end

  def add_milkshake(milkshake)
      @milkshakes.push(milkshake)
  end

  def checkout_milkshakes()
      return @milkshakes
  end

  def total_price
	  total_price = 0
	  @milkshakes.each do |milkshake|
	    total_price += milkshake.price_of_milkshake
	  end
	  return total_price
  end

end


require 'pry'

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
nizars_milkshake.price_of_milkshake

tienda = ShakeShop.new
tienda.add_milkshake(nizars_milkshake)
tienda.add_milkshake(nizars_milkshake)
tienda.add_milkshake(nizars_milkshake)
tienda.total_price

binding.pry
require 'json'
require 'open-uri'

Cocktail.create(name: "Long Island Ice Tea")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Cosmopolitan")
Cocktail.create(name: "Vodka Martini")
Cocktail.create(name: "Pina Colada")
Cocktail.create(name: "Gin Fizz")
Cocktail.create(name: "Old Fashioned")


Ingredient.destroy_all

result = JSON.parse(open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
drinks = result['drinks']

drinks.each do |hash|
  hash.each do |k, v|
    Ingredient.create(name: v)
  end
end

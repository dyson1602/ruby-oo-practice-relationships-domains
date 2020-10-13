require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###################
#AirBnB domain test
###################

# beaker = Guest.new("Beaker")
# fozzy = Guest.new("Fozzy")
# kermit = Guest.new("Kermit")
# ms_piggy = Guest.new("Ms. Piggy")
# gonzo = Guest.new("Gonzo")

# beach_hut = Listing.new("Beach Hut", "Tulum")
# condo = Listing.new("Condo", "LA")
# walk_up = Listing.new("Walk-up", "East Village")
# house = Listing.new("House", "New Orleans")
# apartment = Listing.new("Apartment", "Barcelona")

# Trip.new(beach_hut, beaker)
# Trip.new(condo, fozzy)
# Trip.new(condo, kermit)
# Trip.new(house, gonzo)
# Trip.new(house, gonzo)
# Trip.new(apartment, gonzo)
# Trip.new(walk_up, ms_piggy)
# Trip.new(house, kermit)



###################
#Bakery domain test
###################

bobs = Bakery.new("Bob's")
hercules = Bakery.new("Hercules")
yeasty = Bakery.new("Yeasty")

sb_icebox = Dessert.new("Strawberry Icebox", bobs)
oreo_pie = Dessert.new("Oreo Ice-cream Pie", bobs)
pb_cups = Dessert.new("Peanut-Butter Cups", hercules)
rice_crispy_treats = Dessert.new("Rice Crispy Treats", yeasty)


chocolate_chips = Ingredients.new("chocolate chips", rice_crispy_treats, 500)
marshmellow = Ingredients.new("marshmellow", rice_crispy_treats, 650)
rice_crispy = Ingredients.new("rice crispies", rice_crispy_treats, 150)
butter = Ingredients.new("butter", pb_cups, 450)
peanut_butter = Ingredients.new("peanut-butter", pb_cups, 300)
sugar = Ingredients.new("sugar", pb_cups, 700)
ice_cream = Ingredients.new("ice cream", oreo_pie, 625)
oreo = Ingredients.new("oreo cookies", oreo_pie, 735)
graham = Ingredients.new("graham cracker", sb_icebox, 100)
strawberry = Ingredients.new("strawberry", sb_icebox, 100)
whipped_cream = Ingredients.new("whipped cream", sb_icebox,225)


binding.pry
puts "Test line for pause"


###################
#  Domain Test
###################
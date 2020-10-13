class Dessert
    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
       Ingredients.all.select do |ingredient_instance|
            if ingredient_instance.dessert == self
                ingredient_instance
            end
       end
    end
    
    def calories
        total_calories = 0.0
        self.ingredients.each {|ingredient_instance| total_calories += ingredient_instance.calories.to_f}
        total_calories
    end

end #Dessert
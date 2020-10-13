class Bakery
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        self.desserts.map {|dessert_instance| dessert_instance.ingredients}
    end

    def desserts
        Dessert.all.select {|dessert_instance| dessert_instance.bakery == self}
    end

    def average_calories
        avg_cal = 0.0
        self.desserts.each do |dessert_instance| 
            avg_cal = (dessert_instance.calories / self.desserts.count)
        end
        avg_cal
    end

    def shopping_list
        list = []
        Ingredients.all.select do |ingredient_instance|
            if ingredient_instance.bakery == self
                list << ingredient_instance.name
            end
        end
        list.join(", ")
    end
    
end #Bakery
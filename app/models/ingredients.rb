class Ingredients
    attr_accessor :name, :dessert, :calories

    @@all = []

    def initialize(name, dessert, calories)
        @name = name
        @calories = calories
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def bakery
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient)
        temp = []
        self.all.select do |ingredient_instance| 
            if ingredient_instance.name.include?(ingredient)
                temp << ingredient_instance.name
            end
        end
        temp.join(", ")
    end

end #Ingredients
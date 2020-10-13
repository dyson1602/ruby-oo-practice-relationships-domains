class Listing
    attr_accessor :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def guests
        trips.all.collect {|trip_instance| trip_instance.guest}
    end

    def trips
        Trip.all.select {|trip_instance| trip_instance.listing == self}
    end

    def trip_count
        trips.count
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city_name)
        self.all.select {|listing_instance| listing_instance.city == city_name}
    end

    def self.most_popular
       max = self.all.max_by {|listing_instance| listing_instance.trip_count}
       self.all.find_all {|listing_instance| listing_instance.trip_count == max.trip_count}
    end
    
end #Listing class end.
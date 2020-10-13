class Guest
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def listings
        trips.map {|trip_instance| trip_instance.listing}
    end
    
    def trips
        Trip.all.select {|trip_instance| trip_instance.guest == self}
    end

    def trip_count
        trips.count
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        self.all.select {|guest_instance| guest_instance.trip_count > 1}
    end

    def self.find_all_by_name(name_search)
        self.all.select {|guest_instance| guest_instance.name == name_search }
    end
    
end #Guest class end
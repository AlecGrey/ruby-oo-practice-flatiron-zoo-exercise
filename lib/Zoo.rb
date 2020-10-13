class Zoo

    attr_reader :name, :location

    @@all = []

    def self.all
        @@all
    end

    def self.find_by_location(location)
        self.all.select {|zoo| zoo.location == location}
    end
    
    def initialize(name, location)
        @name, @location = name, location
        self.save
    end

    def save
        @@all << self
    end

    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        # array of all the species in the zoo as strings
        self.animals.map {|animal| animal.species}.uniq
    end

    def find_by_species(species)
        self.animals.select {|animal| animal.species == species}
    end

    def animal_nicknames
        self.animals.map {|animal| animal.nickname}
    end

end

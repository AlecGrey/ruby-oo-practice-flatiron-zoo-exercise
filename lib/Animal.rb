class Animal

    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select {|animal| animal.species == species}
    end

    def initialize(species, weight, nickname)
        @species, @weight, @nickname = species, weight, nickname
        self.save
    end

    def save
        @@all << self
    end

end

# Add your code here

class Dog
    attr_accessor :name
    @@all =[]

    def initialize(dog_name)
        @name = dog_name
        save
    end

    def self.all
        return @@all
    end

    def self.print_all
        @@all.each do |doggo|
            puts doggo.name
        end
    end

    def self.clear_all
        @@all = []
    end

    def save
        @@all << self
    end







end
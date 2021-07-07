# Add your code here

require 'pry'

class Dog
    attr_accessor 
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def save
        @@all << self
    end
    

    def self.print_all
        self.all.each do |dog|
            puts dog.name
        end
    end



end
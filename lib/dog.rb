require 'pry'
# Add your code here
class Dog
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        save
    
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.select do |x|
        puts x.name
         end
    end

    def save
        @@all << self
        self
    end
end
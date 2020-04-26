require 'pry'

# Add your code here

# write a Dog class that initializes with a name 
# and also stores each new instance of Dog that is instantiated.

class Dog
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end 

    def self.all
        @@all
    end 

    def self.print_all
        self.all.each {|dog| puts "#{dog.name}"}
        
    end 

    def save
        
        self.class.all << self 
    end 

    def self.clear_all
        self.all.clear
    end 

    
end 

# binding.pry
0


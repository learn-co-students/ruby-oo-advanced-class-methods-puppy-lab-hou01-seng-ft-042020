# Add your code here
require 'pry'

class Dog

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        save
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.each do |puppy|
            puts "#{puppy.name}"
        end

    end

    def save
        @@all << self
    end




end

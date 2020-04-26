require 'pry'

class Dog
    attr_reader :name
    attr_writer
    attr_accessor

    @@all = []

    def initialize(name)
        @name = name

        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        self.all.each do |dog|
            puts "#{dog.name}"
        end
    end

    def save
        @@all << self
    end
end
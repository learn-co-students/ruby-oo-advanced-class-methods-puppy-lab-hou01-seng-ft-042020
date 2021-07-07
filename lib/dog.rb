require 'pry'

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
    # binding.pry
    Dog.all.clear
  end

  def self.print_all
    Dog.all.each do |dog|
      puts dog.name
    # binding.pry
    end
  end

  def save
    @@all << self
  end
end
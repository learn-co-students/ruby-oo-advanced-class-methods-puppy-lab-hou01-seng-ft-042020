# Add your code here
class Dog
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name  = name
        save
        # @save = save
    end

    def self.all
        @@all
    end

    def self.print_all
        puts @@all.map{|dog| dog.name}
        # puts self.all.map{|dog| dog.name}
        # puts @@all.map(&:name)
    end

    def save
        @@all << self
    end

    def self.clear_all
        @@all.clear #self.all.clear
    end
end

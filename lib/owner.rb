class Owner

  attr_reader :name, :species

  @@all = []
  

  def initialize(name)
    @name = name
    @species = "human"
    @@all.push(self)
    @all_cats = []
    @all_dogs = []
    @all_pets = []

  end

  def say_species
    "I am a #{species}." # species is really self.species but self is implicit because of method chain lookup
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    @all_cats
  end

  def dogs
    @all_dogs
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    dogs.each do |dog|   
      dog.mood = "happy"
    end
  end

  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @all_pets = @all_cats + @all_dogs
    @all_pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end

    cats.clear
    dogs.clear

  end

  def list_pets
    "I have #{dogs.size} dog(s), and #{cats.size} cat(s)."
  end


end 



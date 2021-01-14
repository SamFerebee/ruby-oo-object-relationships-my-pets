class Owner

  attr_reader :name, :species

  @@all = []
  

  def initialize(name)
    @name = name
    @species = "human"
    @@all.push(self)
    @all_cats = []
    @all_dogs = []

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


end 



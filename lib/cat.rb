class Cat

  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name, owner_object)
    @name = name
    @owner = owner_object
    @mood = "nervous"
    @@all.push(self)
    @owner.cats.push(self)

  end

  def self.all
    @@all
  end

end
 
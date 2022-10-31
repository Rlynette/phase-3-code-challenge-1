class Magazine
  attr_accessor :name, :category

@@all = []
  def initialize(name, category)
    @name = name
    @category = category
#add the initialised objects to a class variable called "all"
 @@all << self
end

def self.all
  @@all
end

end

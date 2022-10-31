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

def contributors
#filter from articles the articles{|article|article.magazine.name==@name}
#.map{|article|article.author.name}.uniq
Article.all.filter{|article|article.magazine.name==@name}
.map{|article|article.author}.uniq
end
end

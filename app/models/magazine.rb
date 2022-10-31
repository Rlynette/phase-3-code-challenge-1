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

def magazine_articles
  Article.all.filter{|article|article.magazine.name==@name}
end

def contributors
#filter from articles the articles{|article|article.magazine.name==@name}
#.map{|article|article.author.name}.uniq
 magazine_articles
.map{|article|article.author}.uniq
end

def self.find_by_name(name)
  Magazine.all.find{|magazine|magazine.name==name}
end

def article_titles
  magazine_articles.map{|article|article.title}
end
end

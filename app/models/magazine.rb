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

def magazine_authors
  magazine_articles
.map{|article|article.author}
end
def contributors
#filter from articles the articles{|article|article.magazine.name==@name}
#.map{|article|article.author.name}.uniq
 magazine_authors.uniq
end

def self.find_by_name(name)
  Magazine.all.find{|magazine|magazine.name==name}
end

def article_titles
  magazine_articles.map{|article|article.title}
end

def contributing_authors#tally authors >2 articles for the magazine
  main_authors = []
magazine_authors.tally.each{
  |key,value|value>2 && (main_authors<<key)}
  main_authors
end
end

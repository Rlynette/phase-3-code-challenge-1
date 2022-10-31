class Author
  attr_reader :name


  def initialize(name)
    @name = name
  end

def articles
#filter from all articles;articles that have article.author==self.name
Article.all.filter{|article|article.author==@name}
end

def magazines
  #get magazine instances from articles
articles.map{|article|article.magazine}.uniq
end
def add_article(magazine, title)
  Article.new(self,magazine,title)
end

def topic_areas
  magazines.map{|magazine|magazine.category}.uniq
end
end

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
end

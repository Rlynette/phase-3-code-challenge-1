require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
at1=Author.new("Author1")
mag1=Magazine.new("Mag1","Cat1")
art1=Article.new(at1,mag1,"Title1")
art2=Article.new(at1,mag1,"Title2")






### DO NOT REMOVE THIS
binding.pry

0

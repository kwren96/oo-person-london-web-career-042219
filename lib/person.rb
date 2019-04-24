# your code goes here
class Person
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness_points = 8
    #[@happiness_points, 0, 10].sort[1]#
    @hygiene_points = 8
  end
  
  attr_accessor :name
  
end

stella = Person.new("Stella")
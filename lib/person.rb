# your code goes here
class Person
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    #[@happiness_points, 0, 10].sort[1]#
    @hygiene_points = 8
  end
  
  attr_reader :name
  attr_accessor :bank_account
  attr_accessor :happiness
  
  def happiness
    @happiness
  end
  
  def happiness=
    
  end
  
end

stella = Person.new("Stella")
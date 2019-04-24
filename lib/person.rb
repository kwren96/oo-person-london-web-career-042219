# your code goes here
class Person
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    #[@happiness_points, 0, 10].sort[1]#
    @hygiene = 8
  end
  
  attr_reader :name
  attr_accessor :bank_account
  
  def happiness
    @happiness
  end
  
  def happiness=(number)
    if number < 11 && number >= 0
      @happiness = number
    elsif number > 10 
      @happiness = 10
    else 
      @happiness = 0 
    end
  end
  
  def hygiene
    @hygiene
  end
  
   def hygiene=(number)
    if number < 11 && number >= 0
      @hygiene = number
    elsif number > 10 
      @hygiene = 10
    else 
      @hygiene = 0 
    end
  end
  
  def happy?
    @happiness > 7 ? true : false
  end
  
  def clean?
    @hygiene > 7 ? true : false
  end
  
end

stella = Person.new("Stella")
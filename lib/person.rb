require 'pry'
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
    @hygiene
  end
  
  def happy?
    @happiness > 7 ? true : false
  end
  
  def clean?
    @hygiene > 7 ? true : false
  end
  
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  
  def take_bath
     self.hygiene = @hygiene + 4
    # binding.pry
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end 
  
  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    return '♪ another one bites the dust ♫'
  end 
  
  
  
  def call_friend(person)
    person.happiness = +3
    
  end 
  
  def start_conversation(person, topic)
    binding.pry
    if topic = 'politics'
      person.happiness = @happiness - 2 
      return 'blah blah partisan blah lobbyist'
    elsif topic = 'weather'
      person.happiness = @happiness + 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end
  
end

stella = Person.new("Stella")
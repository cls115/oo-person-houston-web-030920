class Person
    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
  
    end
    
    def name
        @name
    end
    def bank_account
        @bank_account
    end
    def bank_account=(value)
        @bank_account=value
    end
    def happiness
        @happiness
    end
    def happiness=(value)
        @happiness=value    
          if  value > 10
              @happiness = 10
          elsif value < 0
              @happiness = 0
          else 
              @happiness=value
          end
        end
    def hygiene
        @hygiene
    end
    def hygiene=value
        @hygiene=value
        if value > 10
        @hygiene = 10
        elsif value < 0
        @hygiene = 0
        end
    end


     def happy?
    if @happiness > 7
    return true
    elsif
    @happiness <= 7
    return false
  end
end

     def clean?
    if @hygiene > 7
        return true
    elsif
        @hygiene <= 7
        return false
    end
end

     def get_paid(salary)
         @bank_account+=salary
         return "all about the benjamins"
     end

     def take_bath
         self.hygiene=(@hygiene += 4)
          return '♪ Rub-a-dub just relaxing in the tub ♫'
     end

     def work_out
        self.hygiene=(@hygiene -= 3)
        self.happiness=(@happiness += 2)
        return "♪ another one bites the dust ♫"
     end

     def call_friend(friend)
         friend.happiness += 3
         self.happiness += 3
         return "Hi #{friend.name}! It's #{@name}. How are you?"
    end
       
     def start_conversation(person, topic)
        if topic == "politics"
        person.happiness -= 2
        self.happiness -= 2
        return "blah blah partisan blah lobbyist"
        elsif 
        topic == "weather"
        person.happiness += 1
        self.happiness += 1
        return "blah blah sun blah rain"
        else
        return "blah blah blah blah blah"
        end 
     end
end

    

    


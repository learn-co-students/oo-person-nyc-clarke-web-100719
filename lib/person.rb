require "byebug"
class Person
    attr_reader :name, :hygiene
    attr_accessor :bank_account#, :hygiene
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness
        @happiness
    end
   def happiness=(arg)
        @happiness = arg
     if @happiness > 10
        @happiness = 10
    elsif @happiness < 0
        @happiness = 0
    end
     @happiness
    end

    def hygiene=(arg)
        @hygiene = arg
        if @hygiene > 10
           @hygiene = 10
       elsif @hygiene < 0
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
         @bank_account+= salary 
         "all about the benjamins"
     end
     def take_bath
         @hygiene+=4
         self.hygiene=(@hygiene)
         "♪ Rub-a-dub just relaxing in the tub ♫"
     end
     def work_out
         @hygiene-=3
         self.hygiene=(@hygiene)
         @happiness+=2
         self.happiness=(@happiness)
         "♪ another one bites the dust ♫"
     end

     def call_friend(arg)
         self.happiness+=3
          arg.happiness+=3
          "Hi #{arg.name}! It's #{self.name}. How are you?"
     end

     def start_conversation(name, topic)
        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness+=1
            name.happiness+=1
            'blah blah sun blah rain'
        else
            "blah blah blah blah blah"
        end
     end
end

# your code goes here
class Person


    def initialize(name)
    
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8


    end

    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account

    def hygiene= (hygiene)
    
        if hygiene > 10
            @hygiene = 10
        elsif hygiene  < 0
            @hygiene = 0
        else 
            @hygiene = hygiene
        end


    end

    def happiness= (happiness)
    
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else 
            @happiness = happiness
        end
        

    end



    def clean?
        return @hygiene > 7
    end

    def happy?
        return @happiness > 7
    end

    def get_paid(amount)
        @bank_account+=amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness+=2
        self.hygiene-=3

        "♪ another one bites the dust ♫"
    end

    def call_friend(anotherPerson)
        anotherPerson.happiness+=3
        name = anotherPerson.name
        self.happiness+=3
        
        "Hi #{name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness-=2
            self.happiness-=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness+=1
            self.happiness+=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end





end

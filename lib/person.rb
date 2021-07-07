# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
    end

    def happiness=(new_value)
        new_value = 10 if new_value > 10
        new_value = 0 if new_value < 0
        @happiness = new_value 
    end

    def hygiene=(new_value)
        new_value = 10 if new_value > 10
        new_value = 0 if new_value < 0
        @hygiene = new_value
    end

    def happy?
        return true if @happiness > 7
        false
    end

    def clean?
        return true if @hygiene > 7
        false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4) #Explore more with self
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person_tb_talked, topic)
        if topic == "politics"
            person_tb_talked.happiness -=2
            self.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person_tb_talked.happiness +=1
            self.happiness +=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end
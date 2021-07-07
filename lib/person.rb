class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(new_happiness)
        if new_happiness > 10
            new_happiness = 10
        elsif new_happiness < 0
            new_happiness = 0
        end
        @happiness = new_happiness
    end
    def hygiene=(new_hygiene)
        new_hygiene = 10 if new_hygiene > 10
        new_hygiene = 0 if new_hygiene < 0
        @hygiene = new_hygiene
    end
    def clean?
        @hygiene > 7? true : false
    end
    def happy?
        @happiness > 7? true : false
    end
    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene= (@hygiene + 4)
        #hygiene + 4 > 10? @hygiene = 10 : @hygiene = @hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out #increment happiness by 2 points, decrease hygiene by 3 points
        self.happiness = (@happiness + 2)
        self.hygiene = (@hygiene - 3)
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend_to_be_called)
        self.happiness = (@happiness + 3)
        friend_to_be_called.happiness = (friend_to_be_called.happiness + 3)
        return "Hi #{friend_to_be_called.name}! It's #{@name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = (@happiness - 2)
            person.happiness = (person.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = (@happiness + 1)
            person.happiness = (person.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end
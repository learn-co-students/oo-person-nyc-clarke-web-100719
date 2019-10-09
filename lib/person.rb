class Person 
    @@name = []
    attr_accessor :bank_account, :hygiene
    attr_reader :name, :happiness
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account
        @bank_account
    end

    def happiness=(num)
        if num <= 0 
            @happiness = 0
        elsif num >= 10
            @happiness = 10
        else
            @happiness = num
        end
    end

    def hygiene=(num)
        if num <= 0 
            @hygiene = 0
        elsif num >= 10
            @hygiene = 10
        else
            @hygiene = num
        end
        @hygiene
    end

    def happy?
        if @happiness > 7
            return true
        end
        return false
    end

    def clean?
        if @hygiene > 7
            return true
        end
        return false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        @happiness += 2
        self.happiness=(@happiness)
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness = (@happiness += 3)
        friend.happiness += 3
        
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = (@happiness -= 2)
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = (@happiness += 1)
            friend.happiness += 1
            "blah blah sun blah rain"
        elsif topic != "politics" || topic != "weather"
            "blah blah blah blah blah"
        end
    end

end


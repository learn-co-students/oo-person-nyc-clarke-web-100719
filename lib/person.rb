# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    attr_reader :happiness, :hygiene, :name
    attr_accessor :bank_account

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end 

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
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
        self.bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(call_recipient)
        self.happiness += 3
        call_recipient.happiness += 3
        "Hi #{call_recipient.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(partner, topic)
        case topic
        when 'politics'
            self.happiness -= 2
            partner.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        when 'weather'
            self.happiness += 1
            partner.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end 
    end
end

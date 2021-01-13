require 'pry'

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

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

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
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

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(person, topic)
        case(topic)
            when "politics"
                person.happiness -= 2
                self.happiness -= 2
                "blah blah partisan blah lobbyist"
            when "weather"
                person.happiness += 1
                self.happiness += 1
                "blah blah sun blah rain"
            else 
                "blah blah blah blah blah"
            
        end
    end


end

john = Person.new("John")
karen = Person.new("Karen")


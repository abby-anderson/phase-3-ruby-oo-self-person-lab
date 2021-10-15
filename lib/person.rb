class Person
    # this is a short cut for a name reading method that basically just returns self.name
    # def name
    #     @name
    # end
    attr_reader :name

    # # this automatically gives reader and writer methods for all of these variables
    # def bank_account
    #     @bank_account
    # end

    # def bank_account=(value)
    #     @bank_account = value
    # end
    attr_accessor :bank_account

    def initialize (provided_name)
        @name = provided_name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        @happiness
    end

    def happiness=(value)
        @happiness=value

        if @happiness >= 10
            @happiness = 10
        elsif @happiness < 10 && @happiness > 0 
            @happiness = value
        elsif @happiness <= 0
            @happiness = 0
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(value)
        @hygiene=value

        if @hygiene >= 10
            @hygiene = 10
        elsif @hygiene < 10 && @hygiene > 0
            @hygiene = value
        elsif @hygiene <= 0
            @hygiene = 0
        end
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid (amount)
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = (@happiness + 2)
        self.hygiene = (@hygiene - 3)
        return "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        self.happiness = (@happiness + 3)
        friend.happiness = (friend.happiness + 3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            # [self, friend].each { |person| person.happiness += 1 }
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end

end
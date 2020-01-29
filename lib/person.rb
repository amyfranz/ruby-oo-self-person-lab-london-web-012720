class Person
    attr_accessor :bank_account, :person
    attr_reader :name, :happiness, :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def range_check(input)
        if input < 0
            input = 0
        end
        if input > 10
            input = 10
        end
        input
    end

    def happiness=(happiness)
        @happiness = range_check(happiness)
    end

    def hygiene=(hygiene)
        @hygiene = range_check(hygiene)
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean? 
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
         @bank_account += salary
         return "all about the benjamins"
    end

    def take_bath 
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        person.happiness += 3
        self.happiness += 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topics)

         if topics == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
         elsif topics == 'weather'
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
         else
            return "blah blah blah blah blah"
         end
    end
end
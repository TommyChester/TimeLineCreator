class PersonEventCombiner
    def initialize(person, event)
        @person = person
        @event = event
    end

    def combinifier
        @person.events.push(@event)
        @event.people.push(@person)
    end
end
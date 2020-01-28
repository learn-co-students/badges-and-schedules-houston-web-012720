# Write your code here.

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    list = []
    names.each { |name|
        list.push(badge_maker(name))
    }
    list
end

def assign_rooms(attendees)
    list = []
    attendees.each_with_index { |attendee, index|
        list.push("Hello, #{attendee}! You'll be assigned to room #{index+1}!")
    }
    list
end

def printer(attendees)
    batch_badge_creator(attendees).each { |badge|
        puts badge
    }
    assign_rooms(attendees).each { |room|
        puts room
    }
end
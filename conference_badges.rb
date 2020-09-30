def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    names = names.map{|name| badge_maker(name)}
    return names
end

def assign_rooms(names)
    rooms = []
    names.each_with_index{|name, idx| rooms << "Hello, #{name}! You'll be assigned to room #{idx + 1}!"}
    return rooms
end

def printer(names)
    badges = batch_badge_creator(names)
    rooms = assign_rooms(names)
    badges.each{|badge| puts badge}
    rooms.each{|room| puts room}
end
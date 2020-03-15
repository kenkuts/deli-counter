def take_a_number(katz_deli, name)
    katz_deli << name

    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def line(katz_deli)
    if katz_deli.empty?
        string = "The line is currently empty."
    else 
        string = "The line is currently:"
        katz_deli.each_with_index do |name, index|
            string << " #{index + 1}. #{name}"
        end
    end
    puts string
end

def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
    end
end

    # take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
    # take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
    # take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.
   
    # line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"
   
    # now_serving(katz_deli) #=> "Currently serving Ada."
   
    # line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"
   
    # take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.
   
    # line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"
   
    # now_serving(katz_deli) #=> "Currently serving Grace."
   
    # line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"
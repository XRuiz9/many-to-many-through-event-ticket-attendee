require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Example of a variable definition that will be available in your Pry session once you've built out the model:

lucy = Attendee.new("Lucy", 22)
party = Event.new("On Top", 100, 10)
ticket = Ticket.new(lucy, party)
movie = Event.new("Pikachu", 200, 10)
ticket2 = Ticket.new(lucy, movie)
bob = Attendee.new("Bob", 47)
ticket3 = Ticket.new(bob, party)
jeannie = Attendee.new("Jeannie", 32)
amaris = Attendee.new("Amaris", 19)
ticket4 = Ticket.new(jeannie, movie)
ticket5 = Ticket.new(amaris, party)

#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

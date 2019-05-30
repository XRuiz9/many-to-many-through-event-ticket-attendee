class Event
	attr_accessor :name, :total_cost, :ticket_price
	@@all = []

	def initialize(name, cost, price)
		@name = name
		@total_cost = cost
		@ticket_price = price
		@@all << self
	end


	def sell_to_break_even
		breakeven = (@total_cost/@ticket_price).round
		ticketsSold = Ticket.all.select do |ticket|
			ticket.event == self
		end

		if ticketsSold.size >= breakeven
			0
		else
			breakeven - ticketsSold.size
		end
	end

	def attendees
		Ticket.all.select do |ticket|
			ticket.event == self
		end.map do |ticket|
			ticket.attendee
		end
	end

	def average_age
		ages = 0
		self.attendees.each do |attendee|
			ages += attendee.age
		end
		ages/self.attendees.count
	end

	def self.all
		@@all
	end
end

# Event.all
  # Returns an array of all Events
# Event#sales_to_break_even
  # Returns the number of Tickets that still need to be "purchased" for this Event before the Event reaches the break-even point.
  # If the Event has sold enough Tickets to break-even, return the number 0. 
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event

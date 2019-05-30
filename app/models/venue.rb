class Venue
	attr_accessor :name, :location, :rental_fee
	@@all = []

	def initialize(name_, location, rental_fee)
		@name = name_
		@location = location
		@rental_fee = rental_fee
		@@all << self 
	end

	def events
		Event.all.select do |event|
			event.venue == self
		end
	end

	def revenue
		@rental_fee * self.events.count
	end

	def attendees
		attendees = []
		self.events.each do |event|
			attendees << event.attendees 
		end
		attendees
	end

	def self.all
		@@all
	end
end
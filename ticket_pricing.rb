class TicketPricing
	def self.solution(arr)
		one_day_cost = 2
		seven_day_cost = 7
		thirty_day_cost = 30

		arr.sort!

		is_trip_taken_on_day = []

		# initializing  is_trip_taken_on_day
		0..30.each do |day|
			is_trip_taken_on_day[day] = false
		end

		# Marking days as true in is_trip_taken_on_day for day the trip has been taken
		arr.each do |el|
			is_trip_taken_on_day[el] = true
		end	

		# Using tabulation to calculate minimum/optimal cost up to some day
		min_cost_upto_day =[] 

		min_cost_upto_day[30]

	end
end
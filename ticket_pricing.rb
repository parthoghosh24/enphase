class TicketPricing
	def self.solution(arr)
		return 0 if arr.nil?
		one_day_cost = 2
		seven_day_cost = 7
		thirty_day_cost = 30

		arr.sort!

		is_trip_taken_on_day = []

		# initializing  is_trip_taken_on_day
		(0..30).each do |day|
			is_trip_taken_on_day[day] = false
		end

		# Marking days as true in is_trip_taken_on_day for day the trip has been taken
		arr.each do |el|
			is_trip_taken_on_day[el] = true
		end	

		# Using tabulation to calculate minimum/optimal cost up to some day
		min_cost_upto_day =[] 

		min_cost_upto_day[0] = 0 # Just to initialize the table. Day 0 doesnt mean anything


		(1..30).each do |day|
			if !is_trip_taken_on_day[day]
				min_cost_upto_day[day] = min_cost_upto_day[day-1]
				next
			end

			# Option 1 : optimal cost for "day" with one_day_cost
			min_cost = 	min_cost_upto_day[day-1] + one_day_cost

			# Option 2 : optimal cost for on or ending on "day" with seven_day_cost
			prev_day = [0,day-7].max
			while prev_day <= (day - 4) 
				min_cost = [min_cost, min_cost_upto_day[prev_day]+seven_day_cost].min #optimal cost between min cost or 7 days cost
				prev_day+= 1
			end

			# Option 3 : optimal cost for thirty_day_cost
			min_cost = [min_cost,thirty_day_cost].min

			min_cost_upto_day[day] = min_cost
		end

		min_cost_upto_day[30]

	end
end
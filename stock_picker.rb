def stock_picker(arr)
	#setting values for global variables
	current_profit = 0
	highest_profit = 0
	end_day_index = 0

	
	arr.each do |beg_day| #cycling through the options for begining days
	beg_day_index = arr.index(beg_day)
	end_day_index = beg_day_index+1 #I only want to see ends AFTER the beg day
		while (end_day_index < arr.length) do
			@end_day = arr[end_day_index]
			current_profit = @end_day-beg_day
				if current_profit > highest_profit #only change values if it's the highest profit found so far
				highest_profit = current_profit
				@best_beg_day_index = beg_day_index
				@best_end_day_index = end_day_index
				end
			end_day_index += 1
		end
	
end
puts "You should buy on day #{@best_beg_day_index} and sell on day #{@best_end_day_index}. Your profit will be #{highest_profit}"
return [@best_beg_day_index, @best_end_day_index]

end

#test cases
stock_picker([1, 2, 3, 4, 1])
stock_picker([2,5,1,0,4,2])
stock_picker([1,9,2,13])
stock_picker([10, 9, 8, 7, 6, 7])
stock_picker([100, 2, 15, 29, 4, 18])
stock_picker([20, 30, 40, 40, 10, 50, 5])



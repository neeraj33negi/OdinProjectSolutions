def StockPicker( prices )
	lowest = prices.max + 1
	highest = -1
	profit = highest - lowest
	minPos = -1
	maxPos = 0
	temp = -1
	for i in (0..prices.size-1)
		if ( prices[i] < lowest && i > minPos)
			for j in ( i+1..prices.size-1 )
				if ( ( prices[j] - prices[i] ) > profit )
					profit = prices[j] - prices[i]
					highest = prices[j]
					maxPos = j
					minPos = i
				end
			
			end
			

		end

	end
	
	return [minPos, maxPos]

end
prices = Array.new(15){rand(1..99)}
puts prices.inspect
puts StockPicker( prices ).inspect

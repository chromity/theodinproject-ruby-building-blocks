stock_prices = [17,3,6,9,15,8,6,1,10]
highest_combi_of_days = [0, 0, 0]

stock_prices.each_with_index do |value, index|
  for j in index+1...stock_prices.length
      profit = stock_prices[j] - stock_prices[index];

      if profit > highest_combi_of_days[0]
        highest_combi_of_days[0] = profit
        highest_combi_of_days[1] = index
        highest_combi_of_days[2] = j
      end
  end

end

print "buy: #{highest_combi_of_days[1]} sell: #{highest_combi_of_days[2]} "
print "profit: #{highest_combi_of_days[0]}"

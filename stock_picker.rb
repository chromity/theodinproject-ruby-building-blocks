def stockprice(stock_prices)
  max = [0, 0, 0] # profit, buy_day, sell_day

  stock_prices.each_with_index do |value, index|
    for j in index + 1...stock_prices.length
      profit = stock_prices[j] - stock_prices[index]

      if profit > max[0]
        max[0] = profit
        max[1] = index
        max[2] = j
      end
    end
  end

  puts "profit: #{max[0]}, buy: #{max[1]} sell: #{max[2]}"
end

stockprice([17,3,6,9,15,8,6,1,10])

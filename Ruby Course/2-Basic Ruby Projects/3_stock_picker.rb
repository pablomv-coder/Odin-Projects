def stock_picker(prices)
    # Initialize variables to track the best buy and sell days and the maximum profit
    best_buy_day = 0
    best_sell_day = 0
    max_profit = 0
  
    # Iterate through each day to find the best buy and sell days
    prices.each_with_index do |buy_price, buy_day|
      # Iterate through the remaining days to find the best sell day after the current buy day
        prices[buy_day+1..-1].each_with_index do |sell_price, sell_day|
        # Calculate the profit from buying on the buy day and selling on the sell day
            profit = sell_price - buy_price
        # Update the best buy and sell days if the current profit is greater than the maximum profit
            if profit > max_profit
                max_profit = profit
                best_buy_day = buy_day
                best_sell_day = buy_day + 1 + sell_day
            end
        end
    end
  
    # Return the pair of best buy, sell days and the maximum profit
    return [best_buy_day, best_sell_day, max_profit]
end
  
  # Test the stock_picker method
puts stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1, 4]  # for a profit of $15 - $3 == $12
  
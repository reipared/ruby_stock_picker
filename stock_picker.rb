def stock_picker(prices)
  # Initialize variables to keep track of the best days to buy and sell
  best_buy_day = 0
  best_sell_day = 0
  max_profit = 0

  # Iterate over each day in the prices array
  (0...prices.length).each do |buy_day|
    # Iterate over each subsequent day in the prices array
    ((buy_day + 1)...prices.length).each do |sell_day|
      # Calculate the potential profit for buying on the current day and selling on the current sell_day
      profit = prices[sell_day] - prices[buy_day]

      # If the potential profit is greater than the current maximum profit, update the best buy and sell days
      if profit > max_profit
        best_buy_day = buy_day
        best_sell_day = sell_day
        max_profit = profit
      end
    end
  end

  # Return the best buy and sell days as an array
  [best_buy_day, best_sell_day]
end

# Example usage:
prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts stock_picker(prices) # => [1, 4]

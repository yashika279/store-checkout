# You are given an integer array prices where prices[i] is the price of a given crypto coin on the ith day.

# On each day, you may decide to buy and/or sell the crypto coin. You can only hold at most one share of the crypto coin at any time. However, you can buy it then immediately sell it on the same day.

# Find and return the maximum profit you can achieve.

# Input: prices = [7,1,5,3,6,4]
# Output: 7
# Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
# Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
# Total profit is 4 + 3 = 7.



def max_profit(prices)
  max_profit = 0

  (1...prices.length).each do |i|
    if prices[i] > prices[i - 1] # 5 > 7
      max_profit += prices[i] - prices[i - 1]
    end
  end

  max_profit
end

prices = [7,5, 4, 10, 3,6,4]
puts max_profit(prices)

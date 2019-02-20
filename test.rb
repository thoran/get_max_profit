require_relative 'get_max_profit'

# example
stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
p get_max_profit(stock_prices_yesterday) == 6

# unprofitable
stock_prices_yesterday = [50, 47, 35, 28, 11, 9]
p get_max_profit(stock_prices_yesterday) == 0

# earliest maximum profit
stock_prices_yesterday = [1, 7, 5, 6, 1, 6]
p get_max_profit(stock_prices_yesterday) == 6

# latest maximum profit
stock_prices_yesterday = [10, 7, 5, 8, 1, 9]
p get_max_profit(stock_prices_yesterday) == 8

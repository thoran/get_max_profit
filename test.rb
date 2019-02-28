test_subject = ARGV[0]

require_relative "get_max_profit#{test_subject}"

def assert(lmbda)
  print (lmbda.call ? '.' : 'x')
end

# example
stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
assert(lambda{get_max_profit(stock_prices_yesterday) == 6})

# unprofitable
stock_prices_yesterday = [50, 47, 35, 28, 11, 9]
assert(lambda{get_max_profit(stock_prices_yesterday) == 0})

# earliest maximum profit
stock_prices_yesterday = [1, 7, 5, 6, 1, 6]
assert(lambda{get_max_profit(stock_prices_yesterday) == 6})

# latest maximum profit
stock_prices_yesterday = [10, 7, 5, 8, 1, 9]
assert(lambda{get_max_profit(stock_prices_yesterday) == 8})

# longest wait for maximum profit
stock_prices_yesterday = [1, 7, 5, 8, 11, 90]
assert(lambda{get_max_profit(stock_prices_yesterday) == 89})

puts

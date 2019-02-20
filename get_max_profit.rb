# get_max_profit.rb

# 20190220

def get_max_profit(stock_prices_yesterday)
  max_profit = 0
  stock_prices_yesterday.each_with_index do |e,i|
    indices_remaining = i+1..stock_prices_yesterday.count - 1
    indices_remaining.each do |index_remaining|
      if stock_prices_yesterday[index_remaining] - e > max_profit
        max_profit = stock_prices_yesterday[index_remaining] - e
      end
    end
  end
  max_profit
end

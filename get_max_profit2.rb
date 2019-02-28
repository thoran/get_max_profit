# get_max_profit2.rb

# 20190220, 28

def get_max_profit(stock_prices_yesterday)
  indices_in_sorted_order = (0..stock_prices_yesterday.size - 1).sort_by { |i| stock_prices_yesterday[i] }
  lowest_price_index_with_index_below_highest_price = nil
  highest_price_index_with_index_above_lowest_price = nil
  success = false
  (indices_in_sorted_order.size - 1).downto(0) do |high_price_index|
    highest_price_index_with_index_above_lowest_price = indices_in_sorted_order[high_price_index]
    0.upto(high_price_index - 1) do |low_price_index|
      if indices_in_sorted_order[low_price_index] < highest_price_index_with_index_above_lowest_price
        lowest_price_index_with_index_below_highest_price = indices_in_sorted_order[low_price_index]
        success = true
        break
      end
    end
    break if success
  end
  if success
    stock_prices_yesterday[highest_price_index_with_index_above_lowest_price] - stock_prices_yesterday[lowest_price_index_with_index_below_highest_price]
  else
    0
  end
end

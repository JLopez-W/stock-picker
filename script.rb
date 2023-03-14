stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices)
  pairs = []
  stock_prices.combination(2) { |combination| pairs.push(combination) }
  pairs.keep_if {|buy, sell| sell > buy }
  pairs

  pairs.each do |pair| 
    profit = pair[1] - pair[0]
    pair.push(profit)
    pairs
  end

  stock_choices = pairs.sort_by { |pair| pair[2] }
  stock_pick = stock_choices.last
  profit = []
  profit.push(stock_pick[-1])
  stock_pick.pop
  p stock_pick
  profit
  p "Buy at $#{stock_pick[0]} and sell at $#{stock_pick[1]} for a profit of $#{profit[-1]}"
end

stock_picker(stock_prices)
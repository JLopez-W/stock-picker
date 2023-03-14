stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices)
  pairs = []
  stock_prices.combination(2) { |combination| pairs.push(combination) }
  pairs.keep_if {|buy, sell| sell > buy }
  p pairs

  pairs.each do |pair| 
  profit = pair[1] - pair[0]
  p pair.push(profit)
  pairs
  end
end

p stock_picker(stock_prices)

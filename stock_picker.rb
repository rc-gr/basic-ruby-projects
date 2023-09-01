def stock_picker(prices)
  if prices.length < 2
    return [nil, nil]
  end

  pending_best_buy = prices.first
  pending_best_buy_day = 0
  best_buy = prices.first
  best_buy_day = 0
  best_sell = prices.first
  best_sell_day = 0
  best_profit = 0
  previous_price = prices.first
  prices[1..-1].each_with_index do |price, index|
    if price <= previous_price && price <= best_buy
      pending_best_buy = price
      pending_best_buy_day = index + 1
    elsif price > previous_price && price - pending_best_buy > best_profit
      best_buy = pending_best_buy
      best_buy_day = pending_best_buy_day
      best_sell = price
      best_sell_day = index + 1
      best_profit = price - pending_best_buy
    end
    previous_price = price
  end
  [best_buy_day, best_sell_day]
end
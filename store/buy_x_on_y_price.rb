# frozen_string_literal: true

# buy_x_on_y_price.rb
class BuyXOnYPrice
  def apply(group, rule)
    return unless group&.any? && group.count >= rule['threshold']

      on_price_item_count = rule['threshold'] - rule['on_price']# 3
      selected_items = group.take(rule['threshold']) 
      selected_items#1 #[voucher voucher ..]
      selected_items&.each { |item| item.price = 0 }
    # end
  end
end

# Voucher, Voucher, Voucher, Voucher
# threshold 2
# on price 1

# on_price_item_count 1

# m.take(p)
# 5.take(2)
# 2
n items
q items -> threshold

q= n/selected_items
r n%selected_items

q*r
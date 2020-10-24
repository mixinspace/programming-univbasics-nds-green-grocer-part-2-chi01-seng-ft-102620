require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  index = 0
  coupons.each do |coupon|
    item_coupon = find_item_by_name_in_collection(coupon[:item], cart)
    item_in_basket = !!item_coupon
    big_count = item_in_basket && item_coupon[:count] >= coupon[:num]
    if item_in_basket and big_count
      cart << { item: "#{item_coupon[:item]} W/COUPON",
                price: coupon[:cost] / coupon[:num],
                clearance: item_coupon[:clearance],
                count: coupon[:num]
              }
              item_coupon[:count] -= coupon[:num]
            end
            index += 1
          end
          cart
        end
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

def apply_clearance(cart)
  cart.map do |item|
    if item[:clearance]
      item[:price] *= 0.8
    end
    item
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end

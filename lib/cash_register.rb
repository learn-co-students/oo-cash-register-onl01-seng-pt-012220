require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price, :cart, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []


  end

  def add_item(item, price, quantity = 1)
    @last_transaction = price * quantity
    @price = price
    @total += @last_transaction



    item_info = {}
    item_info[:name] = item
    item_info[:price] = price
    item_info[:quantity] = quantity
      # Adds qualities to the item_info object item/price/quantity
    @cart << item_info
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else @total -= @total * discount / 100
      return "After the discount, the total comes to $#{@total}."
  end
end

  def items
    item_names = []
    @cart.each do |item_info|
      #test expects product name * quantity
      for qty in 1..item_info[:quantity]
        item_names << item_info[:name]
      end
    end
    item_names
  end

  def void_last_transaction
    @total -= @last_transaction



  end

end

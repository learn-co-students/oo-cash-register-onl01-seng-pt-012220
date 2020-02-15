require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :price, :receipt
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @price = price
  end
  
  def add_item(item, price, quantity = 1)
       @total += price * quantity
       quantity.times do 
         @items << item
      end
      @receipt = price * quantity
  end
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else 
    self.total = (total * ((100.0 - @discount.to_f) / 100)).to_i
    @total
    "After the discount, the total comes to $#{@total}."
  end
  end
 
  def void_last_transaction
    self.total = @total - @receipt
  end
  
  
end
class CashRegister
  attr_accessor :discount, :item, :last_transaction, :total
def initialize (discount = 0)
  @total = 0
  @discount = discount
  @items = []
end
 def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

    @items << item_info

    @total += price * quantity
end
def apply_discount
  if discount == 0
      "There is no discount to apply."
    else
   @total -= @total * @discount / 100
    "After the discount, the total comes to $#{@total}."
  end
end 
def items
   item_names = []
  @items.collect do |item|
    for q in 1..item[:quantity] 
  item_names << item[:name]
end
end
item_names
end

def void_last_transaction
  @total -= @items.last[:price]* @items.last[:quantity]
end
end

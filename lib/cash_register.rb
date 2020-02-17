class CashRegister
  
  attr_accessor :total, :employee_discount, :items, :last_item_price
  
  
  def initialize(discount = 0)
    @total = 0 
    @employee_discount = discount
    @items = []
  end
  
  def discount
    @employee_discount
  end
  
  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    i = quantity
    while i > 0 
      @items << title
      i -= 1 
    end
    @last_item_price = (price * quantity)
  end
  
  def apply_discount
    if employee_discount != 0
      percentage = (@employee_discount.to_f / 100.00) 
      @total =(@total - (@total * percentage)).to_i
      #@total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
      @last_item_price = (@last_item_price - (@last_item_price * percentage)).to_i
    else
      return "There is no discount to apply."
    end
  end
  
  def total
    @total
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @total - @last_item_price
  end
    
    

end
  
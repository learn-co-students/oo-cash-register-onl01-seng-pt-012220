require pry 

class CashRegister
  attr_accessor :CashRegister, :CashRegister.new 
  @cash_register = cash_register
  @CashRegister = CashRegister.new
  @@all = []

end

def initialize.new(CashRegister).to eq(0)
  cash_register = 0 
  cash_register_with_discount = (20)
end

def total = current_total
  @total = total
cash_register.total = 100 
(cash_register.total).to eq (100)
end

def add_item = add_item_and_price += (num)
  {cash_register.add_item("eggs",0.98)}.to eq
  change {cash_register.total}.by(0.98)
end

def optional = (optional)
  {cash_register.add_item("book", 5.00, 3)}.to eq
  change {cash_register.total}.by (15.00)
end

def employee_discount = total_price + discount = price 
  {cash_register_with_discount.add_item ("air", 1000)}
  (cash_register_with_discount.total).to eq (800)
end

def updated_total = current_total
  cash_register_with_discount.add_item ("air", 1000)
  (cash_register_with_discount.apply_discount) .to eq
  ("after the discount, the total comes to $800")
end

def reduces the total = 0 
  cash_register.total = 0 
  cash_register_with_discunt.additem ("air", 1000)
  {cash_register_with_discount.apply_discount} .to eq
  change {cash_regsiter_with_discount.total}.by(-200)
end

def 'the cash register was not initialized with an employee discount'
  'returns a string error message that there is no discount to apply'
end

def items 
  new_register = CashRegister.new 
  new_register.add_item ("eggs", 1.99)
  new_register.add_item("tomato", 1.78, 3)
  (new_register.items).to eq(["eggs","tomato", "tomato"])
end

def void_last_transaction =(subtracts the last item from the total)
  cash_register.add_item ("apple", 0.99)
  cash_register.add_item ("tomato", 1.76)
  cash_register.void_last_transaction
  (cash_register.total).to eq(0.99)
end

def total = returns total to 0.0 when all items have been removed.
  cash_register.add_item ("tomato", 1.76,2)
  {cash_register.void_last.transaction}.to eq
  change {cash_regsiter.total}.from (3.52).to eq (0.0)
end
end

end
end










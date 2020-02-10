require "pry"
class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount, :total, :previous_total, :item_list

  def initialize(disc = 0, emp_disc = nil)
    @cash_register_with_discount = disc
    @total = 0.0
    @item_list = []
    #binding.pry
  end

  def discount
    @cash_register_with_discount = 20
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @previous_total = @total
    quantity.times do
      @item_list << title
    end
    if quantity > 1
      @total += price * quantity
    else
      @total += price
    end
  end

  def apply_discount
    if @cash_register_with_discount == 0
      "There is no discount to apply."
    else
      @total -= @total * @cash_register_with_discount.fdiv(100)
      "After the discount, the total comes to $#{@total.to_i}."
    end

  end

  def items
    @item_list
  end

  def void_last_transaction
    @total = @previous_total
  end
end

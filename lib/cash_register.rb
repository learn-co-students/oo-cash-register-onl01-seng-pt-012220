#create class
class CashRegister

    #returns the current total (make attr_accessor to access data but never to call?)
    #last transaction add for reference and void_last_transaction
    #add items for #items test

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount = 0)
        #sets an instance variable @total on initialization to zero
        @total = 0
        #optionally takes an employee discount on initialization
        @discount = discount
        #add items empty array for add item
        @items = []

    end

    #also accepts an optional quantity
    #accepts a title and a price 
    def add_item(title, price, quantity=1)
        #and increases the total
        self.total += price * quantity
        #times.do for all the items
        quantity.times do
            @items << title
        end
        #doesn't forget about the previous total
        self.last_transaction = price * quantity
    end

    def apply_discount
        if discount != 0
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i #applies the discount to the total price
            "After the discount, the total comes to $#{self.total}." #reduces the total
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        #subtracts the last item from the total
        #returns the total to 0.0 if all items have been removed
        self.total = self.total - self.last_transaction
    end

end
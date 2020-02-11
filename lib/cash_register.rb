class CashRegister
    attr_accessor :total, :discount, :title, :price, :quantity, :items, :last
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quanitity = 1)
        @title = title
        self.total += price * quanitity
        quanitity.times do 
            @items.push title
        end
        self.last = price * quanitity
    end
    
    def items
        self.items = @items
    end

    def apply_discount
        if discount != 0
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last
    end
end
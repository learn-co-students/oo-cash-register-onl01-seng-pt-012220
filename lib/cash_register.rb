class CashRegister

    attr_accessor :total, :discount, :cart, :items, :last_transaction

        def initialize(discount = 0)
            @total = 0 
            @discount = discount
            @cart = []
        end

        def total
            @total
        end

        def add_item(item,price,quantity = 1)
          @price = price
          @total += price * quantity
          @last_transaction = price * quantity

          if quantity > 1
            counter = 0
            while counter < quantity 
                @cart << item
                counter += 1
            end
          else
            @cart << item 
          end
        end

        def apply_discount
            @total = @total - @total * @discount / 100
            if @discount == 0
                return "There is no discount to apply."
            else
            return "After the discount, the total comes to $#{@total}."
            end
        end

        def items
            @cart
        end

        def void_last_transaction
            @total -= @last_transaction
          

        end

    end

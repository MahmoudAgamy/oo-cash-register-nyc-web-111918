class CashRegister
  
    attr_accessor :discount, :total
    #attr_reader :total
    
    @@items = []
    def initialize(discount = 0)
      @total = 0
      @discount = discount
    end

    def apply_discount
      if @discount == 0 
        return "There is no discount to apply." if @discount == 0
      else
        discount_val = (self.total * (self.discount/100.0))
        total_val = @total
        self.total = total_val - discount_val
        return "After the discount, the total comes to $#{@total.to_i}."
      end
      
    end
    
        def add_item(item, price, quantity = 1)
      @total += price*quantity
      @price = price
      @@items << item
    end
    
    def items
      @@items
    end
    
    def void_last_transaction
      @total -= @price
    end
  
    
    # def total
    #   @total
    # end
  end
  
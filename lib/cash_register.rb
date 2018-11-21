class CashRegister
  
    attr_accessor :discount, :total
    #attr_reader :total
    
    @@items = []
    def initialize(discount = 0)
      @total = 0
      @discount = discount
    end
  
    
    def add_item(item, price, quantity = 1)
      @total += price*quantity
      @price
      @@items << item
    end
    
    def apply_discount
      if @discount == 0 
        return "There is no discount to apply." if @discount == 0
      else
        discount_val = (self.total * (self.discount/100))
        total_val = self.total
        @total = total_val - discount_val
        #puts "After the discount, the total comes to #{@total}"
      end
      
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
  
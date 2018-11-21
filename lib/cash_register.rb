class CashRegister
  
    attr_reader :total, :discount
    
    @@items = []
    def initialize(discount = 20)
      @total = 0
      @discount = discount
    end
  
    
    def add_item(item, price, quantity = 1)
      @total += price*quantity
      @price
      @@items << item
    end
    
    def items
      @@items
    end
    
    def void_last_transaction
      @total -= @price
    end
    
    def apply_discount
      return "There is no discount to apply." if @discount == 0
      self.total = @total - (@total * (@discount/100))
      #puts "After the discount, the total comes to #{@total}"
      self.total
    end
    
    def total=(total = @total)
      @total = total
    end
  end
  
require 'pry'

class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
 
  def add_item(item, price, quantity = 1,last_transaction)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

    def void_last_transaction(last_transaction)
    
     @total -= last_transaction
     
     
     
      @items.each do |items|
        if @items.empty? 
          @total = 0.0
        else
          @total -= @price
      #end
    end
  end
end
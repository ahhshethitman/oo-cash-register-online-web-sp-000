require 'pry'

class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
 
  def add_item(item, price, quantity = 1)
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

    def void_last_transaction
     # @total -= @price 
     voided_transaction = @items[-1]
     voided_transaction = price,quantity
     #voided_transaction = !add_item
     
      #@items.each do |items|
        if @items.empty? 
          @total = 0.0
        else
          @total -= @price
      #end
    end
  end
end
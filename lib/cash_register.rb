class CashRegister
  
  attr_accessor :total, :discount, :price, :items, :prices
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    # if discount > 1
      counter = 0 
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
    @items
  end
  
  def apply_discount
    if discount > 0 
      discounted = (price * discount)/100
      @total -= discounted
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end 
  
  def void_last_transaction
    @total -= @price
  end
end

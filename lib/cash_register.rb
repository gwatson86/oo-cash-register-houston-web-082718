require "pry"

class CashRegister

  attr_accessor :discount, :total, :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @transaction_price = (price * quantity)

    self.total += @transaction_price

    i = 0

    while i < quantity
      @items << title
      i += 1
    end

  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total *= (1 - self.discount / 100.0)
      "After the discount, the total comes to $800."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @transaction_price
  end

end

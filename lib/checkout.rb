class Checkout
  def initialize(promotional_rules)
    @promotional_rules = promotional_rules
    @items = [
      { name: 'Lavender Heart', price: 9.25 },
      { name: 'Personalised Cufflinks', price: 45.00 },
      { name: 'Kids T-shirt', price: 19.95 }
    ]
    @basket = []
    @total = 0
  end

  def all
    @items
  end

  def scan(item)
    @basket << @items[item]
    p @basket
  end

  def total
    @basket.each do |item|
      @total += item[:price]
    end
    @total
  end

  def apply_promo
  end
end

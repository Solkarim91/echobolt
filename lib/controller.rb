require_relative 'checkout'
require_relative 'view'

class Controller
  def initialize(checkout)
    @checkout = checkout
    @view = View.new
  end

  def scan
    item = @view.get_item
    @checkout.scan(item)
  end

  def total
    @view.show_total
  end
end

require_relative 'checkout'
require_relative 'view'

class Controller
  def initialize(checkout)
    @checkout = checkout
    @view = View.new
  end

  def list_items
    @view.list(@checkout.all)
  end

  def scan
    list_items
    item = @view.get_index
    @checkout.scan(item)
  end

  def total
    @view.show_total(@checkout.total)
  end
end

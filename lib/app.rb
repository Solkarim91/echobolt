require_relative 'checkout'
require_relative 'controller'
require_relative 'router'
require 'minitest/autorun'

promotional_rules = [

]
co = Checkout.new(promotional_rules)
controller = Controller.new(co)
router = Router.new(controller)

# Start the app
router.run

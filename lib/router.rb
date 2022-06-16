class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts ''
    puts "---------------------------------------------------"
    puts "--------------Welcome to the checkout--------------"
    puts "---------------------------------------------------"
    puts ''
    @controller.list_items
    # puts "Here are today's items:"
    # puts "---------------------------------------------------"
    # puts "Product Code  |          Name          |     Price"
    # puts "    001       |     Lavender Heart     |     £9.25"
    # puts "    002       | Personalised Cufflinks |     £45.00"
    # puts "    003       |      Kids T-shirt      |     £19.95"

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def stop
    @running = false
  end

  def route_action(action)
    case action
    when 1 then @controller.scan
    when 2 then @controller.total
    when 3 then stop
    else
      puts "Please press 1, 2, 3 or 4"
    end
  end

  def display_tasks
    puts ""
    puts ""
    puts "What do you want to do next?"
    puts "1 - Scan an item"
    puts "2 - Continue to checkout"
    puts "3 - Stop and exit the program"
  end
end

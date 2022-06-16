class View

  def list(items)
    puts "Here are today's items:"
    puts "---------------------------------------------------"
    puts "Product Code  |          Name          |     Price"
    puts "    001       |     Lavender Heart     |     £9.25"
    puts "    002       | Personalised Cufflinks |     £45.00"
    puts "    003       |      Kids T-shirt      |     £19.95"
    puts ""
  end

  def get_index
    puts "Which item would you like to scan? (Enter number)"
    print "> "
    gets.chomp.to_i - 1
  end

  # def get_quantity
  #   puts "How many?"
  #   print "> "
  #   gets.chomp.to_i - 1
  # end

  def show_total(price)
    puts "The total cost of your basket is: £#{price}"
    puts "This includes a discount of: X"
  end
end

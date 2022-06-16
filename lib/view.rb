class View
  def get_index
    puts "Which item would you like to scan? (Enter number)"
    print "> "
    gets.chomp.to_i - 1
  end

  def show_total
    puts "The total cost of your basket is: X"
    puts "This includes a discount of: X"
  end
end

#Asks the user for number of prime elements and performs error handling
def ask_user_for_input
  valid_input = true

  p "How many prime numbers?"
  total_els = gets.chomp.to_i
  valid_input = check_input(total_els)

  until valid_input
    p "Invalid input! Please try again"
    total_els = gets.chomp.to_i
    valid_input = check_input(total_els)
  end

  total_els
end

def check_input(total_els)
  total_els > 0
end

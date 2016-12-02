#Prints formatted multiplication array table of primes to console in n^2 time
def print_table(table)

  #Determine formatting constants
  #Used to format first column
  max_prime_width = table[0][-1].to_s.length + 2
  #Used to format entire table width
  table_width = table[-1].map{ |el| el.to_s }.join("  ").length - max_prime_width + 1
  #Used to determine spacing of elements inside of table
  idx_widths = []
  table[-1].each{ |el| idx_widths << el.to_s.length + 1}

  #Print header
  puts ''
  (max_prime_width + 1).times {print " "}
  table[0].each_with_index do |el, idx|
    print "#{el}"
    num_spaces = idx_widths[idx + 1] - el.to_s.length + 1
    num_spaces.times {print " "}
  end
  puts ''
  max_prime_width.times {print " "}
  table_width.times {print "-"}
  puts ''

  #Print remaining rows
  table[1..-1].each do |row|
    print "#{row[0]}"
    (max_prime_width - row[0].to_s.length - 1).times {print " "}
    print "| "
    row[1..-1].each_with_index do |el, idx|
      print "#{el}"
      num_spaces = idx_widths[idx + 1] - el.to_s.length + 1
      num_spaces.times {print " "}
    end
    puts ''
  end
end

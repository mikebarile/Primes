#Prints formatted multiplication array table of primes to console in n^2 time
def print_table(table)

  #Determine formatting constants
  table_width = table[-1].map{ |el| el.to_s }.join(" ").length
  max_prime_width = table[0][-1].to_s.length + 1

  #Print header
  puts ''
  max_prime_width.times{print " "}
  table[0].each {|el| print "#{el} "}
  puts ''
  max_prime_width.times{print " "}
  table_width.times {print "-"}
  puts ''

  #Print remaining rows
  table[1..-1].each do |row|
    print "#{row[0]}| "
    row[1..-1].each do |el|
      print "#{el} "
    end
    puts ''
  end
end

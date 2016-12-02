#Primes.rb
#Written by Mike Barile on December 2nd, 2016
#Generates a formatted, terminal-based multiplication table for prime numbers
require_relative 'gen_primes'
require_relative 'gen_table'
require_relative 'user_input'
require_relative 'print_table'

total_els = ask_user_for_input
primes = gen_primes(total_els)
table = gen_table(primes)
print_table(table)

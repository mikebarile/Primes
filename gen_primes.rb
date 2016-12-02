#Generate an array of total_els number of prime numbers in n^2 time
def gen_primes(total_els)
  ten_primes = []
  idx = 2
  until ten_primes.length == total_els
    ten_primes << idx if is_prime(idx)
    idx += 1
  end
  ten_primes
end

#Helper method to determine if idx is prime
def is_prime(idx)
  is_prime = true;
  (2...idx/2+1).each do |num|
    if idx % num == 0
      is_prime = false
    end
  end
  is_prime
end

p gen_primes(10)

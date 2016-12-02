#Initialize primes multiplication table array in n^2 time
def gen_table(primes)
  table = []
  total_els = primes.length
  table << [" "].concat(primes)

  (0..total_els - 1).each do |row_idx|
    row = []
    row[0] = primes[row_idx]
    (1..total_els).each do |sub_idx|
      row[sub_idx] = row[0] * table[0][sub_idx]
    end
    table << row
  end

  table
end

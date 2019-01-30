def int_reverse(num)
  return false unless num.class == Integer
  return num if num.zero?

  output, multi, parser = init_variable(num)

  while parser >= 1
    output += ((num % (parser * 10)) / parser) * multi
    parser /= 10
    multi  *= 10
  end

  output
end

def init_variable(num)
  [0, 1, 10**(int_digits(num) - 1)]
end

def int_digits(num)
  digits = 1
  digits += 1 while num >= 10**digits
  digits
end

puts int_reverse(10_104)
puts int_reverse(0.083)
puts int_reverse(2_000_000_001)
puts int_reverse(0)

# can't express like 01
puts int_reverse(10)

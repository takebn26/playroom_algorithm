def int_reverse(num)
  return num if num.class != Integer || num.zero?

  output = 0
  multi = 1
  div = 1

  div *= 10 until div > num

  while div > 1
    output += ((num % div) / (div / 10)) * multi
    div /= 10
    multi *= 10
  end

  output
end

puts int_reverse(10_104)
puts int_reverse(0.083)
puts int_reverse(2_000_000_001)
puts int_reverse(0)

# can't express like 01
puts int_reverse(10)

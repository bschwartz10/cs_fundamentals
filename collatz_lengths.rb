def collatzSum(maxNumber, minLength)
  range = (maxNumber..1)
  result = []
  range.first.downto(range.last).each do |num|
    previous = num
    sequence = [num]
    until previous == 1
      previous = previous.even? ? even_condition(previous) : odd_condition(previous)
      sequence << previous
    end
    result << num if sequence.length > minLength
  end
  result.reduce(:+)
end

def even_condition(number)
  number / 2
end

def odd_condition(number)
  (number * 3) + 1
end

puts collatzSum(5, 4)
puts collatzSum(50, 20)

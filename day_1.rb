# step 1 (terminal)
input = "the captcha".split('').map(&:to_i)
input.select.with_index { |item, index| item if input[index+1] == item || index == input.size - 1 && input.first == item }.sum

# step 2 (script)
input = "the captcha".split('').map(&:to_i)
step = input.size / 2

items = input.select.with_index do |item, index|
  step_index = index + step

  item if input[step_index] == item
end

puts items.map { |i| i + i }.sum

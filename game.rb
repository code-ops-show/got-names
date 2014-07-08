name = "Zack Siri"

# first_letter_first_name = name.split(' ').first[0]
# last_letter_last_name   = name.split(' ').last[0]

first_initial, last_initial = name.split(' ').map { |n| n[0] }

puts first_initial
puts last_initial
require 'yaml'

name = "Zack Siri"

# first_letter_first_name = name.split(' ').first[0]
# last_letter_last_name   = name.split(' ').last[0]

first_initial, last_initial = name.split(' ').map { |n| n[0] }

puts first_initial
puts last_initial

got_data = YAML.load(File.open(File.join(File.dirname(__FILE__), 'got_names.yaml')))

mens_first_name = got_data[:mens_first_name]
house_name = got_data[:house_name]

puts "#{mens_first_name[first_initial.downcase.to_sym]} of house #{house_name[last_initial.downcase.to_sym]}"



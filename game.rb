require 'yaml'


def data_loader(file_name)
  @data ||= YAML.load(File.open(File.join(File.dirname(__FILE__), file_name)))
end

def name_initials_for(name)
  name.split(' ').map { |n| n[0] }
end

def data(file, set)
  data_loader(file + '.yaml')[set]
end

def name_and_house
  first_initial, last_initial = name_initials_for("Zack Siri")

  [data('got_names', :mens_first_name)[first_initial.downcase.to_sym], 
   data('got_names', :house_name)[last_initial.downcase.to_sym]].join(' of house ')
end


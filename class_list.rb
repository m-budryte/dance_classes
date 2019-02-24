@classes = []

def menu_main
    puts "1. Add new classes (and add to list.rb)"
    puts "2. List classes for the particular day"
    puts "3. Show all classes"
    puts "9. Exit" # 9 because we'll be adding more items
end


def menu_days
    puts "1. Monday"
    puts "2. Tuesday"
    puts "3. Wednesday"
    puts "4. Thursday"
    puts "5. Friday"
    puts "6. Saturday"
    puts "7. Sunday"
    puts "8. Last menu"
    puts "9. Exit" # 9 because we'll be adding more items
end

def interactive_menu_main
  loop do
    menu_main
    process_main(STDIN.gets.chomp)
  end
end

def interactive_menu_days
  loop do
    menu_days
    process_days(STDIN.gets.chomp)
  end
end

def process_main(selection)
  case selection
  when "1"
    new_class
  when "2"
    interactive_menu_days
  when "3"
    puts "show_list"
  when "9"
    exit
  else
    puts "I don't know what you mean, try again"
  end
end

=begin
def new_class

#type

  while true do
    puts "Please enter the type of the class"
    type = gets.chomp
    type == !"\n" ? type = type.downcase.to_sym

    puts "TYPE: #{type}, correct? (return)"
    input = gets.chomp
    break if input == "\n"
  end


#location

  while true do
    puts "Please enter the location of the class"
    location = gets.chomp
    puts "LOCATION: #{location.to_s.capitalize}, correct? (Y/any key)"
    input = gets.chomp.upcase
    break if input == "Y"
  end

#day

  while true do
    puts "Please enter the day:\n1. Monday\n2. Tuesday\n3. Wednesday\n4. Thursday\n5. Friday\n6. Saturday\n7. Sunday"
    input = gets.chomp
    case input
    when "1"
      day = :monday
    when "2"
      day = :tuesday
    when "3"
      day = :wednesday
    when "4"
      day = :thursday
    when "5"
      day = :friday
    when "6"
      day = :saturday
    when "7"
      day = :sunday
    else
      puts "Sorry, try again"
    end
    puts "This class is happening on #{day.to_s.capitalize}, correct? (Y/any key)"
    input = gets.chomp.upcase
    break if input == "Y"
  end

#full address

  while true do
    puts "Please enter the full address of the class"
    address = gets.chomp
    puts "ADDRESS: #{address}\ncorrect? (Y/any key)"
    input = gets.chomp.upcase
    break if input == "Y"
  end

#times_and_levels

  while true do
    puts 'Please enter levels and times (level1: time1 level2: time2...)'
    times_and_levels = gets.chomp
    puts "LEVELS AND TIMES: #{times_and_levels}, correct? (Y/any key)"
    input = gets.chomp.upcase
    break if input == "Y"
  end

  file = File.open("classes.csv", "w", "a")
  csv_line = [type.to_s.capitalize, location.to_s.capitalize, day.to_s.capitalize, address, times_and_levels].join(",")
  file.puts csv_line
  puts "Here is your new class info:\nTYPE -#{type.to_s.capitalize}\nLOCATION -#{location.to_s.capitalize}\nDAY -#{day.to_s.capitalize}\nADDRESS -#{address}\nTIMES AND LEVELS -#{times_and_levels}"
  file.close
end

def load_classes(filename = "classes.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  type, location, day, address, times_and_levels = line.chomp.split(',')
    @classes << {type: type.downcase.to_sym, location: location.downcase.to_sym, day: day.downcase.to_sym, address: address, times_and_levels: times_and_levels}
  end
  file.close
end



def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def try_load_students
  filename = ARGV.first # first argument from the command line
  return if filename.nil? # get out of the method if it isn't given
  if File.exists?(filename) # if it exists
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

load_classes
interactive_menu_main
=end

class Swingclass
  def initialize
    @location = ""
    @address = ""
    @level1 = ""
    @level1_5 = ""
    @level2 = ""
    @level3 = ""
  end

  def location
    while true do
      puts "Type location"
      @location = gets.chomp

      puts "Your location is #{@location}, correct? (Y/N)"
      input = gets.chomp

      if input.upcase == "Y"
        break
      elsif input.upcase == "N"
        puts "Update location from #{@location}"
        @location = gets.chomp
      end
    end
    File.write('./classlist.txt', "location: #{@location}\n", mode: 'a')
  end

  def address
    while true do
      puts "Type address"
      @address = gets.chomp

      puts "Your address is #{@address}, correct? (Y/N)"
      input = gets.chomp

      if input.upcase == "Y"
        break
      elsif input.upcase == "N"
        puts "Update address from #{@address}"
        @address = gets.chomp
      end
    end
    File.write('./classlist.txt', "address: #{@address}\n", mode: 'a')
  end
end

def adding_a_class
  puts "Welcome to the program! Please, add a new entry in the format location_typeofdance:)"
  new_class = gets.chomp.downcase
  new_class = Swingclass.new
  new_class.location
  new_class.address
end

adding_a_class

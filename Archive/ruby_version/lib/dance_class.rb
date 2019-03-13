class DanceClass

  attr_accessor :location, :address, :day, :levels_and_times, :teachers

  def initialize
    @location = "Add location"
    @address = "Add full address"
    @day = "Choose day"
    @levels_and_times = {}
    @teachers = []
  end

end

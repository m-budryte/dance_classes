class DanceClass

  attr_accessor :location, :type, :day

  def initialize
    @location = nil
    @type = nil
    @day = nil
  end
end

class ClassList
  attr_accessor :list
  def initialize
    @list = []
  end

  def save_class(dance_class)
    @list << dance_class
  end
end

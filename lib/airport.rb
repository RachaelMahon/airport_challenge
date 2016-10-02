require_relative 'plane.rb'

class Airport

    DEFAULT_CAPACITY = 10

    attr_reader :planes, :capacity
    attr_accessor :stormy

    def  initialize(capacity=DEFAULT_CAPACITY)
      @planes = []
      @capacity = capacity
      @stormy = [true, false, false].shuffle.sample
    end

    def land(plane_name)
      fail "Airport is full." if @planes.length >= DEFAULT_CAPACITY
      fail "That plane has already landed." if @planes.include?(plane_name)
      fail "The weather is too bad. Try again later." if @stormy == true
      @planes << plane_name
      #@in_air = false
      end

    def take_off(plane_name)
      fail "Airport is empty" if @planes.length == 0
      fail "The weather is too bad. Try again later." if @stormy == true
      fail "That plane is not at this airport" unless @planes.include?(plane_name)
      @planes.delete(plane_name)
      #@in_air = true
    end

end

class Timer
	attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
  	t = Time.new(0) + seconds
  	@seconds = t.strftime("%H:%M:%S")
  end

end

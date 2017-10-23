class Timer
  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def seconds
    @seconds % 60
  end

  def minutes
    @seconds / 60 % 60
  end

  def hours
    @seconds / 60**2
  end

  def time_string
    to_s
  end

  def to_s
    [hours, minutes, seconds]
      .map(&method(:padded))
      .join(':')
  end

  def padded(digits)
    "%02d" % digits
  end
end

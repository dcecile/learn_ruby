def ftoc(fahrenheit)
  fahrenheit_to_celsius(fahrenheit)
end

def ctof(celsius)
  celsius_to_fahrenheit(celsius)
end

TemperatureScale = Struct.new(:freezing, :boiling)

def fahrenheit_scale
  TemperatureScale.new(32.0, 212.0)
end

def celsius_scale
  TemperatureScale.new(0.0, 100.0)
end

def fahrenheit_to_celsius(fahrenheit)
  convert_temperature(
    fahrenheit,
    fahrenheit_scale,
    celsius_scale)
end

def celsius_to_fahrenheit(celsius)
  convert_temperature(
    celsius,
    celsius_scale,
    fahrenheit_scale)
end

def convert_temperature(from_value, from_scale, to_scale)
  (from_value - from_scale.freezing) /
    (from_scale.boiling - from_scale.freezing) *
    (to_scale.boiling - to_scale.freezing) +
    to_scale.freezing
end

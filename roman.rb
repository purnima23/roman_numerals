#OLD ROMAN TO ARABIC

def to_old_roman(n)
roman_output = ""

# Create hash of roman to arabic number conversions
# map out key, value pairs
old_roman_mapping = {
  "M" => 1000,
  "D" => 500,
  "C" => 100,
  "L" => 50,
  "X" => 10,
  "V" => 5,
  "I" => 1
}

#iterate keys & values

old_roman_mapping.each do |key, value|

#if the argument is divisible by the value
  if n >= value
    roman_number = n/value
# round down to integer
    roman_number = roman_number.floor
    n %= value
    roman_number.times{roman_output += key}
  end
end
# call method
roman_output


end

# Drive code... this should print out trues.

puts to_old_roman(1) == "I"
puts to_old_roman(3) == "III"
puts to_old_roman(6) == "VI"

#MODERN ROMAN TO ARABIC

def modern_roman (n)
  roman_output = ""

# Create hash of roman to arabic number conversions
# map out key, value pairs
  old_roman_mapping = {
    "M"  => 1000,
    "CM" => 900,
    "D"  => 500,
    "CD" => 400,
    "C"  => 100,
    "XC" => 90,
    "L"  => 50,
    "XL" => 40,
    "X"  => 10,
    "IX" => 9,
     "V" => 5,
    "IV" => 4,
    "I" => 1
  }


old_roman_mapping.each do |key, value|

#if the argument is divisible by the value
  if n >= value
    roman_number = n/value
# round down to integer
    roman_number = roman_number.floor
    n %= value
    roman_number.times{roman_output += key}
  end
end
# call method
roman_output


end

puts modern_roman(1) == "I"
puts modern_roman(3) == "III"
puts modern_roman(6) == "VI"

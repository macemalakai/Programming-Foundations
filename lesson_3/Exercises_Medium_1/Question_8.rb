def titleize(string)
  string.split.map { |word| word.downcase.capitalize! }.join(" ")
end

puts titleize("the briTISH are COMING!")
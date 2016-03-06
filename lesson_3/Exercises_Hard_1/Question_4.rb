# Write a method that returns one UUID when called with no parameters.

def create_uuid
  letters_and_numbers = [[1, 2, 3, 4, 5, 6, 7, 8, 9, 0].each { |number| number.to_s }, [("a".."z").to_a]].flatten
  uuid = ""
  segments = [8, 4, 4, 4, 12]

  segments.each_with_index do |segment, index|
    segment.times { uuid += letters_and_numbers.sample.to_s }
    uuid += "-" unless index >= segments.length - 1
  end
  puts uuid
end
create_uuid

require "./piglatin_converter"
puts "Enter a word to be converted to latin or 'exit' to end the program"

while true
  puts "Enter word"
  word = gets.chomp
  break if word == "exit"
  puts PiglatinConverter.convert(word)
end


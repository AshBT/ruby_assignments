# Pig Latin

# Pig Latin is a language game of altering words. To form the Pig Latin of an English word the first consonant (or group of consonants) is moved to the end of the word and an 'ay' is affixed.

# Your assignment is to write the PiglatinConverter.convert method that takes in a word and returns the piglatin.  

# Here are some sample inputs and the expected output for the method PiglatinConverter.convert:
#
#   INPUT            OUTPUT
# -------------------------------
#   pig             igpay
#   computer        omputercay
#   freedom         eedomfray
#   string          ingstray
#   String          ingstray
#   StrinG          ingstray
#   <EMPTY STRING>  <EMPTY STRING>
#   nil             nil

class PiglatinConverter
  VOWELS = ["a", "e", "i", "o", "u"]

  def self.convert(word)
    return word if word.nil? or word.empty?

    # Convert word from a String to an Array
    letters = word.split("")

    first_vowel_index = nil

    # Find the index of the first vowel within word
    letters.each_with_index do |letter, index|
      if VOWELS.include?(letter)
        first_vowel_index = index
        break
      end
    end

    consonants       = letters.join[0..first_vowel_index-1]
    after_vowel      = letters.join[first_vowel_index..-1]

    # Put the word back together
    return (after_vowel + consonants + "ay").downcase

  end


end
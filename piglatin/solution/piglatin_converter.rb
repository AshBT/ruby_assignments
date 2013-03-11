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
require 'test/unit'
require './piglatin_converter'

class TestAdd < Test::Unit::TestCase

  def test_single_consonant
    assert_equal "ellohay", PiglatinConverter.convert("hello")
  end

  def test_two_consonants
    assert_equal "eedomfray", PiglatinConverter.convert("freedom")
  end

  def test_three_consonants
    assert_equal "ingstray", PiglatinConverter.convert("string")
  end

  def test_capitalized
    assert_equal "ingstray", PiglatinConverter.convert("String")
  end

  def test_mixed_case
    assert_equal "ingstray", PiglatinConverter.convert("StRinG")
  end

  def test_short_word
    assert_equal "ipay", PiglatinConverter.convert("pi")
  end

  def test_empty_string
    assert_equal "", PiglatinConverter.convert("")
  end

  def test_nil
    assert_equal nil, PiglatinConverter.convert(nil)
  end
end
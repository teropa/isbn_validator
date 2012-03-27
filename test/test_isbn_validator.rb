require 'helper'

class TestIsbnValidator < Test::Unit::TestCase
  
  
  should "be valid with dashes" do
    assert IsbnValidator.new.valid?("951-98548-9-4")
  end

  should "an ISBN with whitespace is valid" do
    assert IsbnValidator.new.valid?("951 98548 9 4")
  end

  should "an empty string is not valid" do
    assert !IsbnValidator.new.valid?("")
  end

  should "a string with letters other than x is not valid" do
    assert !IsbnValidator.new.valid?("951-98548-9-p")
  end

  should "a string with 14 digits is not valid" do
    assert !IsbnValidator.new.valid?("12345678901234")
  end

end

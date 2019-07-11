require "test_helper"

class JhudsonPalindromeTest < Minitest::Test

  def test_non_palindrome
    refute  "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RACCaR".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_interger_non_palindrome
    refute 12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

  def test_empty_palindrome
    refute "  ".palindrome?
  end
end

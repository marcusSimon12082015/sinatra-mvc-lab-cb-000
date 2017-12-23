class PigLatinizer
  def piglatinize(word)
    binding.pry
  end
  private
  def is_vowel(letter)
    ("aeoui").include?(letter)
  end
end

class PigLatinizer
  def piglatinize(word)
    n = 0
    while word.length > n || !is_vowel(word[n])
      n+=1
      binding.pry
    end
  end
  private
  def is_vowel(letter)
    ("aeoui").include?(letter)
  end
end

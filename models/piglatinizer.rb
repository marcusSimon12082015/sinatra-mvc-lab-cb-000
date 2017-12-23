class PigLatinizer
  def piglatinize(word)
    n = 0
    while word.length > n || !is_vowel(word[n])
      n+=1
    end
    binding.pry
    starting_string = word[n..word.size-1]
    ending_string = word[0..n]+"ay"
  end
  private
  def is_vowel(letter)
    ("aeoui").include?(letter)
  end
end

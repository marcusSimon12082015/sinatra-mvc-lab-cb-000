class PigLatinizer
  def piglatinize(word)
    n = 0
    while word.length > n || is_vowel?(word[n])
      n+=1
    end
    starting_string = word[n..word.length-1]
    if n > 1
      ending_string = word[0..n]+"ay"
    else
      ending_string = word[0]+"ay"
    end
    starting_string + ending_string
    binding.pry
  end
  private
  def is_vowel?(letter)
    ("aeoui").include?(letter)
  end
end

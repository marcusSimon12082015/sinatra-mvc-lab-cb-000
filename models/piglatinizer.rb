class PigLatinizer
  def piglatinize(sentence)
    array_of_words = sentence.split(" ")
    array_of_words.map do |word|
      piglatinize_word(word)
      binding.pry
    end.join(" ")
  end
  private
  def is_vowel?(letter)
    ("aeoui").include?(letter.downcase)
  end
  def piglatinize_word(word)
    n = 0
    while word.length > n && is_vowel?(word[n]) == false do
      n+=1
    end
    starting_string = word[n..word.length-1]
    if n > 1
      ending_string = word[0..n-1]+"ay"
    else
      ending_string = is_vowel?(word[0]) ? "way" : word[0]+"ay"
    end
    starting_string + ending_string
  end
end

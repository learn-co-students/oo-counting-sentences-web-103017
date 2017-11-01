require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    word_array = self.split
    word_array.count do |word|
      word.end_with?(".", "?", "!")
    end
  end

end

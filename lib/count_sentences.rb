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
    new_arr = self.split(" ")
     arr = new_arr.select do |item|
         item.end_with?("." , "?", "!")
    end
     arr.length
  end

end

"one. two, three?".count_sentences

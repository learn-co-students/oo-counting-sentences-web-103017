require 'pry'

class String

  def sentence?
    return true if self[-1] == "."
    return false
  end

  def question?
    return true if self[-1] == "?"
    return false
  end

  def exclamation?
    return true if self[-1] == "!"
    return false
  end

  def count_sentences
    count = 0
    arr = self.split(" ")
    arr.collect {|x| count += 1 if x.end_with?(".", "?","!")==true}
    count
  end
end

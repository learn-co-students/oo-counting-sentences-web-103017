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
    string = self.split(/\.|!|\?/)
    # binding.pry
    string.select{ |x| x.length > 0 }.count
  end
end

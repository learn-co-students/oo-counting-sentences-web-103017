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
    if self.length == 0
      0
    else
      # self.split(/[.!?]+/).select{|element| element if element != ""}.length
      # THe plus sign after the [] indicates look for multiple values of .!?
      self.split(/[.!?]+/).length
    end
  end
end

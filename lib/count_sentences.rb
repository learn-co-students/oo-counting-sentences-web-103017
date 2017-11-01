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
    self.split.select do |phrase|
      phrase.exclamation? || phrase.sentence? || phrase.question?
    end.length
  end
end

require 'pry'

class String

  def sentence?
    # binding.pry
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    if self[-1] == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true
    else
      false
    end
  end

  def count_sentences
    self.split.select do |word|
      word if word.exclamation? || word.question? || word.sentence?
      # binding.pry
    end.count
  end
end

require 'pry'

class String

  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    # This method is not generic enough! Ask a question!
    ((self.split(/[!?.]/)).select {|x| x if x != ''}).length
  end
end

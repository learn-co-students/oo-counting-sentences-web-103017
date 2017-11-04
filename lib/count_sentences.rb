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
    return self.split(/\?|\.|\!+/).length #/ then question mark \? then "or" | then period \. then "or" | then exclamation point ! then / to end the expression.

#"This, well, is a sentence. This is too!! And so is this, I think? Woo..."
#["This, well, is a sentence", " This is too", "", " And so is this, I think", " Woo"]
  end
end

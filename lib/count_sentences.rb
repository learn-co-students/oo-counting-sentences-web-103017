require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    exclam = ".!?"
    chs = self.chars
    chs.select.with_index{|el, idx| el unless !exclam.include?(el) || chs[idx] == chs[idx + 1]}.count
  end
end

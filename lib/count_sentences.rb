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
    all_sentences = self.split(/[\.+!+?+]/)
    all_sentences.reject{|x| x.empty?}.size
  end
end
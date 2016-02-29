require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
    
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end

  end

  def count_sentences

    split_sentence1 = self.split(".").delete_if{|item| item == ""}
    split_sentence2 = self.split("?").delete_if{|item| item == ""}
    split_sentence3 = self.split("!").delete_if{|item| item == ""}

    return [0, split_sentence1.count + split_sentence2.count + split_sentence3.count - 2].max
  end
end
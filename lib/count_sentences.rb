require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    count = 0
    self.split('').each_with_index do |ch, index|
      if is_terminator(ch) && !is_terminator(self.split('')[index - 1])
        count += 1
      end
    end
    count 
  end

  def is_terminator(ch)
    ch == '.' || ch == '?' || ch == '!'
  end
end
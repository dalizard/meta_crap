require_relative 'word'

class Noun < Word
  def self.specifics
    [:grammatical_gender, :plural]
  end
end

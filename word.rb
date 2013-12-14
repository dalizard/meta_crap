require_relative 'accessors_definer'

class Word
  extend AccessorsDefiner
  def self.specifics
    raise "Please, override this method in your subclasses"
  end
end

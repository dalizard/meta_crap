require_relative 'word'

describe Word do
  describe '.specifics' do
    it 'raises an exception' do
      expect { Word.specifics }.to raise_error
    end
  end
end

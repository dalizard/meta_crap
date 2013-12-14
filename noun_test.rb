require_relative 'noun'

describe Noun do
  describe '.specifics' do
    it 'returns an array' do
      expect(Noun.specifics).to be_an Array
    end
  end

  it 'has getters and setters for specifics' do
    Noun.grammatical_gender = 'male'
    expect(Noun.grammatical_gender).to eq 'male'

    expect(Noun.plural).to be_nil
    Noun.plural = 'males'
    expect(Noun.plural).to eq 'males'
  end

  it 'raises exception when not in specifics' do
    expect { Noun.foobar }.to raise_error
  end
end

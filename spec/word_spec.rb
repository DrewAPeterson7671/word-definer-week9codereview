require 'rspec'
require 'word'
require 'pry'
require 'definition'

describe '#Word' do

  before(:each) do
    Word.clear
    # Definition.clear
  end

  describe('#save') do
      it("saves a word into the list") do
      word = Word.new("landscape", nil)
      word.save()
      word2 = Word.new("consequence", nil)
      word2.save()
      expect(Word.all).to(eq([word, word2]))
    end
  end

end

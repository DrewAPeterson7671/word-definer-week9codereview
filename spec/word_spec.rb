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

  describe(".all") do
    it("returns and empty array when there are no words") do
      expect(Word.all).to(eq([]))
    end
  end

  describe(".clear") do
    it("clears all words") do
      word = Word.new("landscape", nil)
      word.save()
      word2 = Word.new("consequence", nil)
      word2.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe("#==") do
    it("is the same word if it has the same attributes of another word") do
      word = Word.new("landscape", nil)
      word2 = Word.new("landscape", nil)
      expect(word).to(eq(word2))
    end
  end

end

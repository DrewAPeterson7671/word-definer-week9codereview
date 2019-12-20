require 'rspec'
require 'word'
require 'pry'
require 'definition'

describe '#Word' do

  before(:each) do
    Word.clear
    Definition.clear
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

  describe(".find") do
    it("finds a word by id") do
      word = Word.new("landscape", nil)
      word.save()
      word2 = Word.new("consequence", nil)
      word2.save()
      expect(Word.find(word.id)).to(eq(word))
    end
  end

  describe("#update") do
    it("updates a word by id") do
      word = Word.new("landscape", nil)
      word.save()
      word.update("casual")
      expect(word.word_name).to(eq("casual"))
    end
  end

  describe("#delete") do
    it("deletes a word by id") do
      word = Word.new("landscape", nil)
      word.save()
      word2 = Word.new("consequence", nil)
      word2.save()
      word.delete()
      expect(Word.all).to(eq([word2]))
    end
  end

  describe('word_definitions') do
    it("returns an words definitions") do
      word = Word.new("silly word", nil)
      word.save()
      definition = Definition.new("A sad mood", word.id, nil)
      definition.save()
      definition2 = Definition.new("A dreary day", word.id, nil)
      definition2.save()
      expect(word.word_definitions).to(eq([definition, definition2]))
    end
  end

  describe('.search') do
    it("searches for a word") do
      word = Word.new("landscape", nil)
      word.save()
      word2 = Word.new("consequence", nil)
      word2.save()
      word3 = Word.new("content", nil)
      word3.save()
      expect(Word.search("con")).to(eq([word2, word3]))
    end
  end

  describe('.sort') do
    it("sorts the words by name") do
      word = Word.new("landscape", nil)
      word.save()
      word2 = Word.new("consequence", nil)
      word2.save()
      word3 = Word.new("content", nil)
      word3.save()
      expect(Word.sort()).to(eq([word2, word3, word]))
    end
  end


end

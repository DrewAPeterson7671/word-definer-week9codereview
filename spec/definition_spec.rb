require 'rspec'
require 'definition'
require 'word'
require 'pry'

describe '#Definition' do

  before(:each) do
    @word = Word.new("somber", nil)
    @word.save()
  end

  describe('#==') do
    it("is the same definition if it has the same attributes as the other definition") do
      definition = Definition.new("A sad mood", @word.id, nil)
      definition2 = Definition.new("A sad mood", @word.id, nil)
      expect(definition).to(eq(definition2))
    end
  end

  # describe('#save') do
  #   it("saves a definition") do
  #     definition = Definition.new("A sad mood", @word.id, nil)
  #     definition.save()
  #     expect(Definition.all).to(eq([definition]))
  #   end
  # end

  describe('.all') do
    it("returns a list of all definitions") do
      definition = Definition.new("A sad mood", @word.id, nil)
      definition.save()
      definition2 = Definition.new("A dreary day", @word.id, nil)
      definition2.save()
      expect(Definition.all).to(eq([definition, definition2]))
    end
  end



end

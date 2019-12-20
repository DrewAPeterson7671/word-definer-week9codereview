require 'rspec'
require 'definition'
require 'word'
require 'pry'

describe '#Definition' do

  before(:each) do
    Word.clear
    Definition.clear
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

  describe('#save') do
    it("saves a definition") do
      definition = Definition.new("A sad mood", @word.id, nil)
      definition.save()
      expect(Definition.all).to(eq([definition]))
    end
  end

  describe('.all') do
    it("returns a list of all definitions") do
      definition = Definition.new("A sad mood", @word.id, nil)
      definition.save()
      definition2 = Definition.new("A dreary day", @word.id, nil)
      definition2.save()
      expect(Definition.all).to(eq([definition, definition2]))
    end
  end

  describe('.clear') do
    it("clears all definitions") do
      definition = Definition.new("A sad mood", @word.id, nil)
      definition.save()
      definition2 = Definition.new("A dreary day", @word.id, nil)
      definition2.save()
      Definition.clear
      expect(Definition.all).to(eq([]))
    end
  end

  describe('.find') do
    it("finds a definition by id") do
      definition = Definition.new("A sad mood", @word.id, nil)
      definition.save()
      definition2 = Definition.new("A dreary day", @word.id, nil)
      definition2.save()
      expect(Definition.find(definition.id)).to(eq(definition))
    end
  end

  describe('#update') do
    it("updates a definition by id") do
      definition = Definition.new("A sad mood", @word.id, nil)
      definition.save()
      definition.update("dreary mood", @word.id)
      expect(definition.definition_text).to(eq("dreary mood"))
    end
  end

  describe("#delete") do
    it("deletes a definition by id") do
      definition = Definition.new("A sad mood", @word.id, nil)
      definition.save()
      definition2 = Definition.new("A dreary day", @word.id, nil)
      definition2.save()
      definition.delete()
      expect(Definition.all).to(eq([definition2]))
    end
  end

end

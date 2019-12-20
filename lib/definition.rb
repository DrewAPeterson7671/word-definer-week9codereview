class Definition
  attr_reader :id
  attr_accessor :definition_text, :word_id

  @@definitions = {}
  @@total_rows = 0

  def initialize(definition_text, word_id, id)
    @definition_text = definition_text
    @word_id = word_id
    @id = id || @@total_rows += 1
  end

  def ==(def_to_compare)
    (self.definition_text() == def_to_compare.definition_text()) && (self.word_id() == def_to_compare.word_id())
  end

  def save
    @@definitions[self.id] = Definition.new(self.definition_text, self.word_id, self.id)
  end

  def self.all
    @@definitions.values()
  end

  def self.clear
    @@definitions = {}
  end

  def self.find(id)
    @@definitions[id]
  end

  def update (definition_text, word_id)
    self.definition_text = definition_text
    self.word_id = word_id
    @@definitions[self.id] = Definition.new(self.definition_text, self.word_id, self.id)
  end

  def delete
  end
end
#

class Word
  attr_reader :id
  attr_accessor :word_name
  @@words = {}
  @@total_rows = 0

  def initialize(word_name, id)
    @word_name = word_name
    @id = id || @@total_rows += 1
  end

  def self.all
    @@words.values()
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def save
    @@words[self.id] = Word.new(self.word_name, self.id)
  end

  def ==(word_to_compare)
    self.word_name() == word_to_compare.word_name()
  end

  def self.find(id)
    @@words[id]
  end

  def update(word_name)
    self.word_name = word_name
    @@words[self.id] = Word.new(self.word_name, self.id)
  end

  def delete()
    @@words.delete(self.id)
  end

  def word_definitions
    Definition.find_def_by_word(self.id)
  end

  def self.search(search_word)
    @@words.values().select { |word| word.word_name.match(/#{search_word}/i)}
  end

  def self.sort()
    sorted_array = []
    self.all.each do |a|
      sorted_array.push(a.word_name)
    end
    results = sorted_array.sort.map {|a| self.search(a) [0] }
  end

end

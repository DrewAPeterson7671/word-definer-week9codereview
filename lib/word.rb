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
    # self.word_name = word_name
    # @@words[self.id] = Album.new(self.name, self.id)
  end

end

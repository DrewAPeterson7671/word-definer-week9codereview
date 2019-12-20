class Word
  attr_reader :id, :word_name
  attr_accessor :word_name
  @@words = {}
  @@total_rows = 0

  def initialize(name, id)
    @word_name= word_name
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
  end



end

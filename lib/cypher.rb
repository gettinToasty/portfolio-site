class Cypher

  MORSE = {"a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....",
  "i" => "..", "j" => ".---", "k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.", "o" => "---", "p" => ".--.", "q" => "--.-",
  "r" => ".-.", "s" => "...", "t" => "-", "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-", "y" => "-.--", "z" => "--.."}

  REVERSAL = {"a" => "z", "b" => "y", "c" => "x", "d" => "w", "e" => "v", "f" => "u", "g" => "t", "h" => "s",
  "i" => "r", "j" => "q", "k" => "p", "l" => "o", "m" => "n", "n" => "m", "o" => "l", "p" => "k", "q" => "j",
  "r" => "i", "s" => "h", "t" => "g", "u" => "f", "v" => "e", "w" => "d", "x" => "c", "y" => "b", "z" => "a"}

  NUMERIC = {"a" => "1", "b" => "2", "c" => "3", "d" => "4", "e" => "5", "f" => "6", "g" => "7", "h" => "8",
  "i" => "9", "j" => "10", "k" => "11", "l" => "12", "m" => "13", "n" => "14", "o" => "15", "p" => "16", "q" => "17",
  "r" => "18", "s" => "19", "t" => "20", "u" => "21", "v" => "22", "w" => "23", "x" => "24", "y" => "25", "z" => "26"}

  def initialize(lib={})
    @lib = lib
    @multichar = false
    multichar
  end

  attr_reader :seed

  def create(seed=nil)
    @seed = seed
    @seed = rand(0..9999999) if !@seed
    srand @seed
    "a".upto("z") { |i| check(i) }
    multichar
  end

  def encode(str)
    words = str.split(" ")
    encoded_str = words.map { |word| encode_word(word) }
    encoded_str.join()
  end

  def decode(str, seed=@seed)
    create(seed) if @lib == {}
    @multichar ? (words = str.split("  ")) : (words = str.split(" "))
    decoded_str = words.map { |word| decode_word(word) }
    decoded_str.join(" ")
  end

private

  def check(letter)
    num = rand(0..9999)
    !@lib.has_value?(num) ? (@lib[letter] = num.to_s) : (check(letter))
  end

  def decode_word(word)
    @multichar ? (word = word.split(" ")) : (word = word.split(//))
    decoded_word = word.map { |char| @lib.key(char) if @lib.has_value?(char) }
    decoded_word.join()
  end

  def encode_word(word)
    word = word.split(//)
    encoded_word = []
    word.each do |char|
      if @lib.has_key?(char)
        @multichar ? (encoded_word << @lib[char]+" ") : (encoded_word << @lib[char])
      end
    end
    encoded_word.join()+" "
  end

  def multichar
    @lib.each { |key, val| @multichar = true if val.length > 1 }
  end

end

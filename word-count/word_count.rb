class Phrase

  def initialize(phrase="")
    @word_count = {}
    phrase.gsub(",", " ").gsub(/[!&@$%^&:.]/, "").split(" ").each{ |k|
      key = k.to_s.gsub(/(\A')|('\z)/, "").downcase
      @word_count[key] = @word_count[key].nil? && 1 || @word_count[key] + 1
    }
  end

  def word_count
    @word_count
  end

end

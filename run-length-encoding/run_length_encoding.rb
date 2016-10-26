class RunLengthEncoding
  def self.encode(string)
    string.chars.chunk{ |i| i }.map do |char, array|
      if array.length > 1
        [ array.length, char]
      else
        ['', char]
      end
    end.join
  end

  def self.decode(string)
    string.scan(/(\d*)(\D)/).collect do |length, char| 
      length = 1 if length.empty?
      char * length.to_i
    end.join
  end
end

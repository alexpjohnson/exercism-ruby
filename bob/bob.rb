class Bob
  def hey(remark)
    remark = remark.split("\n").last || ''
    if remark.strip.empty? # Empty
      'Fine. Be that way!'
    elsif remark == remark.upcase && /[A-Z]+/.match(remark) # Yell
      'Whoa, chill out!'
    elsif /\b\?/.match(remark) # Question
      'Sure.' 
    else
      'Whatever.'
    end
  end
end

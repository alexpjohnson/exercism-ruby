class Grains
  def self.square(square_num)
    2 ** (square_num - 1)
  end

  def self.total
    past_vals = [0]
    (1..64).each do |el|
      past_vals[el] = past_vals[el-1] + square(el) 
    end
    past_vals.last
  end
end

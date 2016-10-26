class Binary
  def initialize(binary_string)
    if /[^01]/.match(binary_string)
      raise ArgumentError
    end
    @input_string = binary_string
  end

  def to_decimal
    @input_string.
      chars.
      reverse.
      map.with_index do |el, i|
        el.to_i * 2**i
      end.
      reduce(:+)
  end
end

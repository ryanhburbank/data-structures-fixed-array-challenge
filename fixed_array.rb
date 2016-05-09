class OutOfBoundsException < StandardError; end

class FixedArray
  attr_reader :array

  def initialize(size)
    @array = {}
    size.times {|i| @array[i] = nil }
  end

  def get(index)
    raise OutOfBoundsException if array.length < index
    @array[index]
  end

  def set(index, value)
    raise OutOfBoundsException if array.length < index
    @array[index] = value
  end
end

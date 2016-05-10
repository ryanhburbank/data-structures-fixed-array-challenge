class OutOfBoundsException < StandardError; end

class FixedArray
  attr_reader :array

  def initialize(size)
    @array = {}
    @size = size
    size.times {|i| @array[i] = nil }
  end

  def get(index)
    ensure_within_bounds(index)
    array[index]
  end

  def set(index, value)
    ensure_within_bounds(index)
    array[index] = value
  end

  def length
    @size
  end

  def each(&block)
    array.length.times { |i| block.call(array[i]) }
    array
  end

  private

  def ensure_within_bounds(index)
    raise OutOfBoundsException if length < index
  end
end

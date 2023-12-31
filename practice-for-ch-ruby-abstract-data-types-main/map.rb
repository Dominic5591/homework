# this one is from the solutions..... :(  no time..

class Map
  def initialize
    @array = []
  end

  def set(key, value)
    pair_idx = array.index { |pair| pair[0] == key }
    if pair_index
      underlying_array[pair_index][1] = value
    else
      underlying_array.push([key, value])
    end
    value
  end

  def get(key)
    array.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete(key)
    value = get(key)
    array.reject! { |pair| pair[0] == key }
    value
  end

  def show
    deep_dup(array)
  end

  private

  attr_reader :underlying_array
  
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end  
end
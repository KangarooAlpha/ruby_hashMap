require_relative "node.rb"

class HashMap
  def initialize
    @bucket = Array.new(16)
  end

  def get_index(key)
    hash(key) % @bucket.length
  end

  def hash(key)
   hash_code = 0
   prime_number = 31
      
   key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
      
   hash_code
  end

  def set(key, value)
    index = get_index(key)
    @bucket[index] = Node.new(key, value)
    @bucket
  end

  def get(key)
    index = get_index(key)
    unless @bucket[index].nil? || @bucket[index].key != key
      return @bucket[index].value
    end
    return nil
  end
  
  def has(key)
    index = get_index(key)
    unless @bucket[index].nil? || @bucket[index].key != key
      return true
    end
    return false
  end

  def remove(key)
    index = get_index(key)
    unless @bucket[index].nil? || @bucket[index].key != key
      v = @bucket[index].value
      p @bucket[index] = nil
      return v
    end
    return nil
  end

  def length
    count = 0
    @bucket.map {|pair| count+= 1 unless pair.nil?}
    return count
  end

  def clear
    initialize
    p @bucket
  end

  def keys
    k = @bucket.map {|pair| pair.key unless pair.nil?}
    return k
  end
end
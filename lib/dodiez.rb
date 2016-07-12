require "dodiez/version"

class << Hash
  def [](key)
    self[converted_key(key)]
  end

  def []=(key, value)
    self[converted_key(key)] = value
  end

  def converted_key(key)
    if key.class == String
      key.to_sym
    else
      key
    end
  end
end

class Dodiez < Hash
  class << self
    def to_cool_hash(hash)
      return "You can modify only hashes" unless hash.class == Hash
      new_hash = {}

      hash.each do |key, value|
        new_hash[converted_key(key)] = value
      end
      new_hash
    end

    def converted_key(key)
      if key.class == String
        key.to_sym
      else
        key
      end
    end
  end
end

#  h = { "qw" => 1 }
#  h1 = Dodiez.to_cool_hash(h)
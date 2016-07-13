require "dodiez/version"

class CoolHash
  def initialize(hash)
    @hash = hash
  end

  def [](key)
    if needed_type?(key)
      @hash[key] ? @hash[key] : @hash[key.to_sym] || @hash[key.to_s]
    else
      @hash[key]
    end
  end

  private
    def needed_type?(key)
      key.class == String || key.class == Symbol
    end
end

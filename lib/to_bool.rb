class String
  def to_bool
    if self =~ /^(true|false)$/
      return true if $1 == 'true'
      return false if $1 == 'false'
    else
      raise ArgumentError.new("invalid value for `to_bool': '#{self}'")
    end
  end
end

class TrueClass
  def to_bool
    self
  end
end

class FalseClass
  def to_bool
    self
  end
end

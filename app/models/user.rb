class User
  attr_accessor :name

  def initialize(name = nil)
    @name = name
  end

  def valid_name?
    @name.length > 3
  end
end
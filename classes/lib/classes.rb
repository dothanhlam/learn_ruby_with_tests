class Dog
  attr_reader :name
  attr_accessor :color

  def initialize(name)
    @name = name
  end

  def bark
    'Woof!'
  end
end

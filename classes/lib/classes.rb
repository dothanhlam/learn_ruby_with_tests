module Swimmable
  def swim
    'I am swimming!'
  end
end

class Dog
  include Swimmable
  attr_reader :name
  attr_accessor :color

  def initialize(name)
    @name = name
  end

  def bark
    'Woof!'
  end
end

class Poodle < Dog
  def bark
    'Yip!'
  end
end

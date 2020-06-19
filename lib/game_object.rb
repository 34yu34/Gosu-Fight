require_relative 'transform'

class GameObject
  attr_accessor :transform

  def initialize
    @transform = Transform.new()
  end

  def draw
    @transform.draw do
    end
  end
end

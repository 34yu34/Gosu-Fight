# frozen_string_literal: true

require_relative 'transform'

class GameObject
  attr_accessor :transform, :shape

  def initialize
    @transform = Transform.new
    @shape = nil
  end

  def draw
    @transform.draw do
      @shape.draw
    end
  end
end

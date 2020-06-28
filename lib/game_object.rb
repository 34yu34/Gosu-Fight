# frozen_string_literal: true

require_relative 'transform'

class GameObject
  attr_accessor :transform, :shape, :game_objects

  def initialize
    @transform = Transform.new
    @shape = nil
    @game_objects = []
  end

  def render; end

  def draw
    @transform.draw do
      @game_objects.each(&:draw)
      render
      if shape
        shape.render()
      end
    end
  end
end

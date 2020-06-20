# frozen_string_literal: true

require 'gosu'

class Square
  attr_accessor :color

  def initialize(color)
    @color = color
  end

  def draw
    draw_quad(0.5, 0.5, @color,
              0.5, -0.5, @color,
              -0.5, -0.5, @color,
              -0.5, 0.5, @color)
  end
end

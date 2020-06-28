# frozen_string_literal: true

require 'gosu'

class Triangle
  attr_accessor :color

  def initialize(color)
    @color = color
  end

  def renders
    draw_triangle(-0.5, -0.5, @color,
                  0.5, -0.5, @color,
                  0, 0.5, @color)
  end
end

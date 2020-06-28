# frozen_string_literal: true

require 'gosu'
require_relative 'vector'
require_relative 'game_object'

class Mouse < GameObject
  PATH = 'textures/mouse.png'
  SIZE = 20

  def initialize
    super()
    @transform.scale.x = SIZE
    @transform.scale.y = SIZE
  end

  def update(x, y)
    @transform.pos.x = x
    @transform.pos.y = y
  end

  def render
    draw_triangle(0, 0, Color::WHITE, 0.3, 1, Color::WHITE, 0.4, 0.4, Color::WHITE, 10)
    draw_triangle(0, 0, Color::WHITE, 1, 0.3, Color::WHITE, 0.4, 0.4, Color::WHITE, 10)
  end
end

# frozen_string_literal: true

require 'gosu'
require_relative '../lib/game_object'
require_relative '../lib/vector'

class Board < GameObject
  PATH = "textures/board.png"
  BORDER = 10

  def initialize
    super()
    @image = Gosu::Image.new(PATH, :tileable => true)
  end

  def center(width, height)
    @transform.pos = V.new(width /2, height / 2)
    @transform.scale = V.new(width-BORDER, height-BORDER)
  end

  def render
    @image.draw_as_quad(-0.5, -0.5, Color::WHITE, 0.5, -0.5, Color::WHITE, 0.5, 0.5, Color::WHITE, -0.5, 0.5, Color::WHITE, 0)
  end
end

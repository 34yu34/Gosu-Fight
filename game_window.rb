# frozen_string_literal: true

require 'gosu'

require_relative 'lib/game_object'
require_relative 'lib/triangle'
require_relative 'lib/vector'
require_relative 'lib/mouse'

require_relative 'game/board'

include Gosu

class GameWindow < Window
  WIDTH = 1080
  HEIGHT = 720

  def initialize
    super WIDTH, HEIGHT
    self.caption = 'Test'
    # self.fullscreen = true
    @mouse = Mouse.new
    @board = Board.new
    @board.center(width, height)
  end

  def update
    @mouse.update(mouse_x, mouse_y)
  end

  def draw
    @board.draw
    @mouse.draw
  end
end

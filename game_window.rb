# frozen_string_literal: true

require 'gosu'

require_relative 'lib/game_object'
require_relative 'lib/square'
require_relative 'lib/vector'

include Gosu

class GameWindow < Window
  WIDTH = 1080
  HEIGHT = 720

  def initialize
    super WIDTH, HEIGHT
    self.caption = 'Test'

    @obj = GameObject.new
    @obj.transform.pos = V.new(100, 100)
    @obj.transform.scale = V.new(50, 50)
    @obj.shape = Square.new(Color::RED)
  end

  def update; end

  def draw
    @obj.draw
  end
end

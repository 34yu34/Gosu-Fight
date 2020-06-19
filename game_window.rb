require 'gosu'

include Gosu

class GameWindow < Window
  WIDTH = 1080
  HEIGHT = 720

  def initialize()
    super WIDTH, HEIGHT
    self.caption = "Test"
  end

  def update
  end

  def draw
  end
end

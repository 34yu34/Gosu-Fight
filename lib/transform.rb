# frozen_string_literal: true

require 'gosu'
require_relative 'vector.rb'

class Transform
  attr_accessor :pos, :scale
  attr_reader :angle

  def initialize
    @pos = V.new(0, 0)
    @angle = 0
    @scale = V.new(0, 0)
  end

  def angle=(val)
    @angle = val % 360
  end

  def draw
    Gosu.translate(@pos.x, @pos.y) do
      Gosu.rotate(@angle) do
        Gosu.scale(@scale.x, @scale.y, 0, 0) do
          yield
        end
      end
    end
  end
end

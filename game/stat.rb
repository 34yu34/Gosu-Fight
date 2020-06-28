# frozen_string_literal: true
require_relative 'lib/game_object'

class Stat < GameObject
  attr_reader :base_val

  def initialize(val)
    @base_val = val
    @val = val
    @modifiers = []
  end

  def <<(modifier)
    @modifier << modifier
    @modifier[-1]
  end

  def mul; end

  def draw; end
end

class Modifier
  PER = 0
  FIX = 1

  def initialize()
  end
end

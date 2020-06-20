# frozen_string_literal: true

class V
  attr_accessor :x, :y

  def initialize(x = 0, y = 0)
    @x = x
    @y = y
  end

  def +(pts)
    operate(pts, :+)
  end

  def -(pts)
    operate(pts, :-)
  end

  def /(pts)
    operate(pts, :/)
  end

  def *(pts)
    operate(pts, :*)
  end

  def %(pts)
    operate(pts, :%)
  end

  def operate(pt, op)
    if pt === V
      V(@x.send(op, pt.x), @y.send(op, pt.y))
    else
      V(@x.send(op, pt), @y.send(op, pt))
    end
  end
end



class StaticFont
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def text=(text)
    @text= text
  end
end

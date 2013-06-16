class Editroid
  attr_accessor :pos
  def initialize
    @text = ""
    self.pos = 0
  end
  def load(io)
    @text << if io.is_a?(String)
      io
    else
      io.read
    end
    self.pos = 0
    io
  end
  def save(io)
    io << @text
  end
  def insert_char(ch)
    @text[self.pos, 0] = ch
  end
end

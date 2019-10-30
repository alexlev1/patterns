class Prototype
  attr_accessor :data

  def initialize(data)
    @data = data
  end
end

p1 = Prototype.new('Hello, world!!!')

p2 = p1.clone # standart ruby method for cloning

puts p1.data
puts p2.data
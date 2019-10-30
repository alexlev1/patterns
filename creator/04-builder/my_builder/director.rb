class Director
  attr_accessor :builder

  def initialize
    @builder = nil
  end

  def build_house
    @builder.create_foundation
    @builder.create_walls
    @builder.create_roof
  end

  def build_villa
    @builder.create_foundation
    @builder.create_walls
    @builder.create_roof
    @builder.create_pool
    @builder.create_trees
  end
end
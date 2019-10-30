class VillaBuilder < Builder
  def initialize
    reset
  end

  def reset
    @villa = Villa.new
  end

  # Фактически это getResult
  def villa
    villa = @villa
    reset
    villa
  end

  def create_foundation
    @villa.add_part('Foundation')
  end

  def create_walls
    @villa.add_part('Walls')
  end

  def create_roof
    @villa.add_part('Roof')
  end

  def create_pool
    @villa.add_part('Pool')
  end

  def create_trees
    @villa.add_part('Trees')
  end
end
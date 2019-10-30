class HouseBuilder < Builder
  def initialize
    reset
  end

  def reset
    @house = House.new
  end

  # Фактически это getResult
  def house
    house = @house
    reset
    house
  end

  def create_foundation
    @house.add_part('Foundation')
  end

  def create_walls
    @house.add_part('Walls')
  end

  def create_roof
    @house.add_part('Roof')
  end
end
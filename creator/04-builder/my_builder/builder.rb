class Builder
  def create_foundation
    raise NotImplementedError, "#{self.class} has not implemented!"
  end

  def create_walls
    raise NotImplementedError, "#{self.class} has not implemented!"
  end

  def create_roof
    raise NotImplementedError, "#{self.class} has not implemented!"
  end

  def create_pool
    raise NotImplementedError, "#{self.class} has not implemented!"
  end

  def create_trees
    raise NotImplementedError, "#{self.class} has not implemented!"
  end
end
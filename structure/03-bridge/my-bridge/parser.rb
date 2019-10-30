class Parser
  attr_reader :search_type

  def initialize(search_type)
    @search_type = search_type
  end

  def parsing
    search_type.make
  end
end
class House
  def initialize
    @parts = []
  end

  def add_part(part)
    @parts << part
  end

  def list_parts
    puts "House parts: #{@parts.join(', ')}"
  end
end
class Villa
  def initialize
    @parts = []
  end

  def add_part(part)
    @parts << part
  end

  def list_parts
    puts "Vills parts: #{@parts.join(', ')}"
  end
end
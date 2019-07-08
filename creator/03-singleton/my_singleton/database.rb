class Database
  @connection = new

  private_class_method :new

  def self.connection
    @connection
  end

  def get_data
    'This is data from Database'
  end
end
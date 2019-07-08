# Singleton code
class Singleton
  @instance = new

  private_class_method :new

  def self.instance
    @instance
  end

  def some_business_logic
    'I making some business logic...'
  end
end

# Client code
s1 = Singleton.instance
s2 = Singleton.instance

if s1.equal?(s2)
  p 'Singleton works, both variables contain the same instance'
else
  p 'Singleton failes, variables contain different instances'
end
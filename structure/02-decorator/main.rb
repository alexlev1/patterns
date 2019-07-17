# Base Component which Decorator can change
class Component
  def operation
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class ConcreteComponent < Component
  def operation
    'ConcreteComponent'
  end
end

# Base Decorator class
class Decorator < Component
  attr_accessor :component

  # @param [Component] component
  def initialize(component)
    @component = component
  end

  def operation
    @component.operation
  end
end

class ConcreteDecoratorA < Decorator
  def operation
    "ConcreteDecoratorA(#{@component.operation})"
  end
end

class ConcreteDecoratorB < Decorator
  # @return [String]
  def operation
    "ConcreteDecoratorB(#{@component.operation})"
  end
end

def client_code(component)
  puts "RESULT: #{component.operation}"
end

# Client can start concrete component
simple = ConcreteComponent.new
puts 'Client: I\'ve got a simple component:'
client_code(simple)
puts "\n\n"

# And decorators with other decorators inside...
decorator1 = ConcreteDecoratorA.new(simple)
decorator2 = ConcreteDecoratorB.new(decorator1)
puts 'Client: Now I\'ve got a decorated component:'
client_code(decorator2)
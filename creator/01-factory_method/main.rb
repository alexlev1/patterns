class Creator
  def factory_method
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def some_operation
    product = factory_method

    # Далее, работаем с этим продуктом.
    result = "Creator: The same creator's code has just worked with #{product.operation}"

    result
  end
end

# Конкретные Создатели переопределяют фабричный метод для того, чтобы изменить
# тип результирующего продукта.
class ConcreteCreator1 < Creator
  def factory_method
    ConcreteProduct1.new
  end
end

class ConcreteCreator2 < Creator
  def factory_method
    ConcreteProduct2.new
  end
end

class Product
  def operation
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Конкретные Продукты предоставляют различные реализации интерфейса Продукта.
class ConcreteProduct1 < Product
  def operation
    '{Result of the ConcreteProduct1}'
  end
end

class ConcreteProduct2 < Product
  def operation
    '{Result of the ConcreteProduct2}'
  end
end

# Клиентский код работает с экземпляром конкретного создателя, хотя и через его
# базовый интерфейс. Пока клиент продолжает работать с создателем через базовый
# интерфейс, вы можете передать ему любой подкласс создателя.
#
# @param [Creator] creator
def client_code(creator)
  print "Client: I'm not aware of the creator's class, but it still works.\n"\
        "#{creator.some_operation}"
end

puts 'App: Launched with the ConcreteCreator1.'
client_code(ConcreteCreator1.new)
puts "\n\n"

puts 'App: Launched with the ConcreteCreator2.'
client_code(ConcreteCreator2.new)
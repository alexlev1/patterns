class Decorator < Notifier
  attr_accessor :notifier

  def initialize(notifier)
    @notifier = notifier
  end

  def send
    "#{notifier.user} - alarm!"
  end
end
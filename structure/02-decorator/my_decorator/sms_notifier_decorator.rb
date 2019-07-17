class SmsNotifierDecorator < Decorator
  def send
    if notifier.user != nil
      "#{notifier.user} - alarm! (by sms)"
    else
      "#{notifier.notifier.user} - alarm! (by facebook and sms)"
    end
  end
end
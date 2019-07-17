class FacebookNotifierDecorator < Decorator
  def send
    if notifier.user != nil
      "#{notifier.user} - alarm! (by facebook)"
    else
      "#{notifier.notifier.user} - alarm! (by sms and facebook)"
    end
  end
end
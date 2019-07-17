require_relative 'notifier'
require_relative 'decorator'
require_relative 'sms_notifier_decorator'
require_relative 'facebook_notifier_decorator'

def client_code(notifier)
  p notifier.send
end

# Send Email notification
@notifier = Notifier.new('Alex')
client_code(@notifier)

# Send SMS notification
@sms_notifier = SmsNotifierDecorator.new(@notifier)
client_code(@sms_notifier)

# Send Facebook notification
@facebook_notifier = FacebookNotifierDecorator.new(@notifier)
client_code(@facebook_notifier)

# Send SMS and Facebook notifications
@notifications = FacebookNotifierDecorator.new(@sms_notifier)
client_code(@notifications)
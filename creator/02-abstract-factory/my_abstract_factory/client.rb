require_relative 'communicate'
require_relative 'communicate/notification'
require_relative 'communicate/subscribe'

require_relative 'type'
require_relative 'type/sms_notification'
require_relative 'type/phone_notification'
require_relative 'type/email_notification'
require_relative 'type/sms_subscribe'
require_relative 'type/phone_subscribe'
require_relative 'type/email_subscribe'


def client(communicate)
  sms = communicate.create_sms_message
  email = communicate.create_email_message
  phone = communicate.create_phone_call

  p sms.send
  p email.send
  p phone.call(sms)
end

p 'Client: Send notification'
client(Communicate::Notification.new)

p ''

p 'Client: Create Subscribe'
client(Communicate::Subscribe.new)
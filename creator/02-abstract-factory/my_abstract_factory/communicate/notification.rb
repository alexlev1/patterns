class Communicate::Notification < Communicate
  def create_sms_message
    Type::SmsNotification.new
  end

  def create_email_message
    Type::EmailNotification.new
  end

  def create_phone_call
    Type::PhoneNotification.new
  end
end
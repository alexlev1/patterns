class Communicate::Subscribe < Communicate
  def create_sms_message
    Type::SmsSubscribe.new
  end

  def create_email_message
    Type::EmailSubscribe.new
  end

  def create_phone_call
    Type::PhoneSubscribe.new
  end
end
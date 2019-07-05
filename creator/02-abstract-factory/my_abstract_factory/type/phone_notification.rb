class Type::PhoneNotification < Type
  def call( sms = nil )
    sms ? "Notification phone call with sms" : "Notification phone call"
  end
end
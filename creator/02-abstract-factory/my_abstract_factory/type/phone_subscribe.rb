class Type::PhoneSubscribe < Type
  def call( sms = nil )
    sms ? "Subscribe phone call with sms" : "Subscribe phone call"
  end
end
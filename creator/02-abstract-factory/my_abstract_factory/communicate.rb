class Communicate
  def create_sms_message
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def create_email_message
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def create_phone_call
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
class Notifier
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def send
    "#{user} - alarm! (by emeail)"
  end
end
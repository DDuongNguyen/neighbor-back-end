class ApplicationController < ActionController::API

  def encoded_token(user)
    payload= {user_id: user.id}
    JWT.encode(payload, secret, 'HS256')
  end

  def token
    request.headers["Authorization"]
  end

  def secret
    Rails.application.credentials.very_secret_secret
  end

  def decoded_token
    JWT.decode(token, secret, true, {algorithm: 'HS256'})
  end

  def auth_current_user
    user_id = decoded_token[0]['user_id']
    User.find(user_id)
  end

  def account_sid
    Rails.application.credentials.account_sid
  end

  def auth_token
    Rails.application.credentials.auth_token
  end

  def twilio_number
    '+18482259039'
  end

  def send_message(phone_number, message)
    # debugger
    @client= Twilio::REST::Client.new(account_sid, auth_token)
    message= @client.messages.create(
      body:message,
      from: twilio_number,
      to: phone_number
    )
    puts message.sid
  end
end

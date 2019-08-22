class MessagesController < ApplicationController
  def index
    messages = Message.all
    render json: messages
  end

  def show
    message = Message.find_by(id: params[:id])
    render json: message
  end

  def create
    regular_phone_number= User.find(params[:receiver_id]).phone_number.split(/[^\d]/).join
    edited_phone_number = "+1" + regular_phone_number
    # debugger
    message = params[:content]
    send_message(edited_phone_number,message)
  end

  private
  def message_params
    params.require(:message).permit(:sender_id,:receiver_id,:content)
  end

end

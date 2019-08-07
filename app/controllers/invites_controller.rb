class MessagesController < ApplicationController
  def index
    invites = Invite.all
    render json: invites
  end

  def show
    invite = Invite.find_by(id: params[:id])
    render json: invite
  end
end

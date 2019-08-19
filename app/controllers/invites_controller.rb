class InvitesController < ApplicationController
  def index
    invites = Invite.all
    render json: invites
  end

  def show
    invite = Invite.find_by(id: params[:id])
    render json: invite
  end

  def create
    invite = Invite.create(invite_params)
    render json: invite
  end

  private
  def invite_params
    params.require(:invite).permit(:inviter_id,:invitee_id,:event_id)
  end
end

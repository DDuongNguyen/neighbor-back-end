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
    # if !Invites.all.find(invite_params)
    invite = Invite.create(invite_params)
    render json: invite.inviter
  end

  def delete_invite
    # byebug
    inviter= User.find_by(id:params[:inviter_id])
    invite =
    Invite.find_by(inviter_id:params[:inviter_id],invitee_id:params[:invitee_id],event_id:params[:event_id])
    invite.destroy
    render json: inviter
  end

  private
  def invite_params
    params.require(:invite).permit(:inviter_id,:invitee_id,:event_id)
  end

end

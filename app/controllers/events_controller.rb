class EventsController < ApplicationController
  def index
    events = Event.all
    render json: events
  end

  def show
    event = Event.find_by(id: params[:id])
    render json: event
  end

  def create
    # debugger
    event= Event.create(event_params)
    render json: auth_current_user
  end

  def update
    # byebug

    # rails_blob_path(event.params[:image], disposition: "attachment")

    event= Event.find(params[:id])
    event.image.attach(params[:image])
    user = event.user
    render json: user
  end

  private

  def event_params
    params.require(:event).permit(:user_id,:name,:description, :time)
  end

end

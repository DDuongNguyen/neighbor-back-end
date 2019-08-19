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
    # byebug
    user = User.create(user_params)
  end

  private

  def event_params
    params.require(:event).permit(:name,:user_id,:description, :time)
  end

end

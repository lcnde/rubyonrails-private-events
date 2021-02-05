class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]

  def index
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.new(event_params)
  end

  private
  def event_params
    params.require(:event).permit(:name, :date)
  end

end

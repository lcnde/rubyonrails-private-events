class InvitedsController < ApplicationController

  def create
    @event = Event.all.find(params[:id])
    Invited.create(user_id: current_user.id, event_id: @event.id)
    redirect_to event_path(@event)
  end
end

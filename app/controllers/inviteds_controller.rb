class InvitedsController < ApplicationController

  def create
    @event = Event.all.find(params[:id])
    if Invited.where(user_id: current_user.id, event_id: @event.id).blank? == true#need to check if user is already invited to the event of the page youy're viewing
      Invited.create(user_id: current_user.id, event_id: @event.id)
      redirect_to event_path(@event)
    else
      flash.alert = "You're already subscribed for the event."
      redirect_to event_path(@event)
    end
  end
end

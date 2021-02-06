class InvitedsController < ApplicationController

  def create
    @event = Event.all.find(params[:id])
    Invited.create(user_id: current_user.id, event_id: @event.id)
    redirect_to event_path(@event)
    
    if Invited.where(user_id: current_user.id, event_id: @event.id)#need to check if user is already invited to the event of the page youy're viewing
      flash.alert = "You're already subscribed for the event."
      #redirect_to event_path(@event)
    end
  end
end

# README

notes

the custom routes in routes serves so in the events#show view you can use the special path for the button. The special path adds a route that let's you use `partecipate_path(@event)`. The partecipate path links to inviteds#create, wich creates a new record in the Invited table. the @event inherits from the inviteds_controller in the create action. It basically gives to partecipate_path the id of the event at which the user partecipates.

It gets all the info needed from the create action method in inviteds_controller

I have no idea what '/event/:id/invited' from the routes does. I am not familiar with a 3rd element in the path.

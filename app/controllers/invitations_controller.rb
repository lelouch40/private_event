class InvitationsController < ApplicationController
	@attendee=Attendee.find(2)
	  def new
	  	@invite=Invitation.new
  end
  def create
 @event = Event.find_by("event_id")
  @event.attendees << Attendee.find_by("attendee_id")
  if @event.save
  	flash[:notice] = "Successfully Created"
  	redirect_to(:controller=> "events",:action=> "index")
  else
  	flash[:notice]="Something Happened"
  	render("new")
  end
  end

  def destroy
  end

  def delete
  end

end

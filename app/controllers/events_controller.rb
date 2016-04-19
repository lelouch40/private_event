class EventsController < ApplicationController
before_filter :authenticate_user!

    def index
        @event=Event.sorted
  end
  def new
    @event=Event.new
  end

  def create
    @event=current_user.events.build(strong_params)
    if @event.save
      flash[:notice] = "Created"
      redirect_to(:action => "index")
    else
      render("new")
    end
  end

  def delete
  @event=Event.find(params[:id])
  end

  def destroy
         event=Event.find(params[:id]).destroy
        flash[:notice]="Destroyed Successfully"
        redirect_to(:action => "index")
  end
    def edit
          @event=Event.find(params[:id])
  end
  def update
  @event=Event.find(params[:id])
  if @event.update_attributes(attendee_params)
   flash[:notice] = "Updated"
     #redirect
   else
   #render
   end
   end
      def show
    @event = Event.find(params[:id])
     end
     private
       def strong_params
    params.require(:event).permit(:description,:place)
end
end
class AttendeeController < ApplicationController
  def edit
  	@att=Attendee.find(params[:id])
  end
 # def update
  #	@att=Attendee.find(params[:id])
  #end
#end

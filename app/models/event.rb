class Event < ActiveRecord::Base
	has_many :invitations
	belongs_to :user
	  has_many :attendees, :through=> :invitations

	       scope :sorted, lambda { order("created_at ASC") }

	  	     #validates_presence_of :place
   #validates_length_of :place, :maximum => 25
   #validates_presence_of :time
   #validates_length_of :time, :maximum => 50
end
#link_to event.user.username, :controller=> "user", :action=>"show", :id=>User.find_by(params[:id])%>

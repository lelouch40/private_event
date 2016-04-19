class Attendee < ActiveRecord::Base
	has_many :invitations
	  has_many :events, :through => :invitations


	       scope :sorted, lambda { order("time ASC") }
	     validates_presence_of :first_name
   validates_length_of :first_name, :maximum => 25
   validates_presence_of :last_name
   validates_length_of :last_name, :maximum => 50
end

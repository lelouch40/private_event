class Invitation < ActiveRecord::Base
	belongs_to :attendee
		belongs_to :invitation
		belongs_to :editor, :class_name => "User", :foreign_key => "user_id"
				belongs_to :event
end

class AddUserAttendeeEventJoin < ActiveRecord::Migration
  def change
  	    add_column :events, :user_id, :integer
  	    add_column :attendees, :user_id, :integer
  end
end

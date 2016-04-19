class AddAttendeeIdToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :attendee_id, :integer
  end
end

class AddAttendeeIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :attendee_id, :integer
  end
end

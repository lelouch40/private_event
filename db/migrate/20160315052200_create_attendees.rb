class CreateAttendees < ActiveRecord::Migration
  def up
    create_table :attendees do |t|
      t.string "event"
    	t.string "first_name"
    	t.string "last_name"
      t.string "email"
      t.timestamps null: false
    end
  end
  def down
  	drop_table :attendees
  end
end

class CreateInvitations < ActiveRecord::Migration
  def up
    create_table :invitations do |t|
    	t.references :event
    	t.references :attendee
    	t.references :user
    	t.string :summary

      t.timestamps
    end
    add_index :invitations, ["event_id", "user_id", "attendee_id"]
  end
  def down
  	drop_table :invitations
  end
end

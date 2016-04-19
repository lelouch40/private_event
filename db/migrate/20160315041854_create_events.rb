class CreateEvents < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.text "description"
    	t.string "place"
    	t.string "time"
      t.timestamps
    end
  end
  def down
  	drop_table :events
  end
end

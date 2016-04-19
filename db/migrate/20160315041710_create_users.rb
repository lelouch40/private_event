class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string "name", :limit => 25
      t.string "email"
      t.timestamps
    end
  end
  def down
    drop_table :users
  end
end

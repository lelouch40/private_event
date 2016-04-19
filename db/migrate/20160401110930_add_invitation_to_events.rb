class AddInvitationToEvents < ActiveRecord::Migration
  def change
    add_column :events, :invitation_id, :integer
  end
end

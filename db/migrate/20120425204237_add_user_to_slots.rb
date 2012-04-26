class AddUserToSlots < ActiveRecord::Migration
  def change
    add_column :slots, :user_id, :integer
  end
end

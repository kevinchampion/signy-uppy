class RenameTypeColumn < ActiveRecord::Migration
  def up
    rename_column :slots, :type, :slot_type
  end

  def down
    rename_column :slots, :slot_type, :type
  end
end

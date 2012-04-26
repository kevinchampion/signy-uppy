class RemoveReservedByFromSlots < ActiveRecord::Migration
  def up
    remove_column :slots, :reserved_by
  end

  def down
    add_column :slots, :reserved_by, :string
  end
end

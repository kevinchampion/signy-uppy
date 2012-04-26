class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.string :name
      t.string :reserved_by
      t.timestamp :reserved_at
      t.string :type

      t.timestamps
    end
  end
end

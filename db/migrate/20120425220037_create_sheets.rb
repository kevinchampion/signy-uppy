class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :name
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end

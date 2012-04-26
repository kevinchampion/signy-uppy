class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :auth
      t.string :name

      t.timestamps
    end
  end
end

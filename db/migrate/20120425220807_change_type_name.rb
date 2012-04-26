class ChangeTypeName < ActiveRecord::Migration
  def up
    rename_column :sheets, :type, :sheet_type
  end

  def down
    rename_column :sheets, :sheet_type, :type
  end
end

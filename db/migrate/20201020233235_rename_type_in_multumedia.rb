class RenameTypeInMultumedia < ActiveRecord::Migration[6.0]
  def change
    rename_column :multimedia, :type, :kindof
  end
end

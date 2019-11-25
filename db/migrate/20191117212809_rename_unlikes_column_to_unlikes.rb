class RenameUnlikesColumnToUnlikes < ActiveRecord::Migration[5.2]
  def change
    rename_column :unlikes, :unlikes, :unlike
  end
end

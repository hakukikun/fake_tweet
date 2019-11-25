class RenameLikesColumnToLikes < ActiveRecord::Migration[5.2]
  def change
    rename_column :likes, :likes, :like
  end
end

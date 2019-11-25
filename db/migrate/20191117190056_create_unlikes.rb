class CreateUnlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :unlikes do |t|
      t.integer :user_id
      t.integer :tweet_id
      t.integer :unlike
      t.timestamps
    end
  end
end

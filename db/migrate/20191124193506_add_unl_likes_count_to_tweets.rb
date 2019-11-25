class AddUnlLikesCountToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :unlikes_count, :integer
  end
end

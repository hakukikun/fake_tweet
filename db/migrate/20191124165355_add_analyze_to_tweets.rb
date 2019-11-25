class AddAnalyzeToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :analyze, :integer
  end
end

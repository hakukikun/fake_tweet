class CreateAnalyzes < ActiveRecord::Migration[5.2]
  def change
    create_table :analyzes do |t|

      t.timestamps
    end
  end
end

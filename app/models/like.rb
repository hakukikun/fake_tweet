class Like < ApplicationRecord
  belongs_to :user,counter_cache: :score
  belongs_to :tweet,counter_cache: :likes_count
  validates :user_id, {presence: true}
  validates :tweet_id, {presence: true}
end

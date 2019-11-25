class Unlike < ApplicationRecord
  belongs_to :user
  belongs_to :tweet, counter_cache: :unlikes_count
  validates :user_id, {presence: true}
  validates :tweet_id, {presence: true}
end

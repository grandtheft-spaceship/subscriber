class Channel < ApplicationRecord
  has_many :subscriptions
end
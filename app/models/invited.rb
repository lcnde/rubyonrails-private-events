class Invited < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :user_id, uniqueness: {scope: :event_id} #makes sure a user cant sign up twice for the same event
end

class Shout < ActiveRecord::Base
  belongs_to :user

  # Look this up
  default_scope { order("created_at DESC") }
  validates :body, presence: true
end

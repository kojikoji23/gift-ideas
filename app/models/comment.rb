class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gift

  validates :text, presence: true
end

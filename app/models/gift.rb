class Gift < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  has_many :gift_tag_relations
  has_many :tags, through: :gift_tag_relations

  validates :title, presence: true
  validates :content, presence: true
  validates :image, presence: true

end

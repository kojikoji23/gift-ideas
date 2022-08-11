class Gift < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :gender
  belongs_to :price
  belongs_to :scene
  belongs_to :age
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :image, presence: true

  validates :age_id, :gender_id, :scene_id, :price_id,
  numericality: { other_than: 0, message: "can't be blank" }

end

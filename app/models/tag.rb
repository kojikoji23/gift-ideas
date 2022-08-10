class Tag < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age
  belongs_to :scene
  belongs_to :price
  belongs_to :gender
  has_many :gift_tag_relations, dependent: :destroy
  has_many :gifts, through: :gift_tag_relations, dependent: :destroy

  validates :age_id, :price_id, :gender_id, :scene_id,
  numericality: { other_than: 1, message: "can't be blank" }
end

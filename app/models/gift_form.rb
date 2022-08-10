class GiftForm
  include ActiveModel::Model

  attr_accessor(
    :title, :image, :content, :url, :user_id,
    :id, :created_at, :datetime, :updated_at, :datetime,
    :age_id, :price_id, :gender_id, :scene_id, :gift_id
  )

  with_options presence: true do
    validates :title
    validates :image
    validates :content
    validates :age_id
    validates :scene_id
    validates :price_id
    validates :gender_id
  end

  validates :age_id, :price_id, :gender_id, :scene_id,
  numericality: { other_than: 1, message: "can't be blank" }

  def save
    gift = Gift.create(title: title, image: image, content: content, url: url, user_id: user_id)
    tag = Tag.where(age_id: age_id, price_id: price_id, gender_id: gender_id, scene_id: scene_id).first_or_initialize
    tag.save
    GiftTagRelation.create(gift_id: gift.id, tag_id: tag.id)
  end

  def update(params, gift)
    gift.gift_tag_relations.destroy_all
    scene_id = params.delete(:scene_id)
    age_id = params.delete(:age_id)
    price_id = params.delete(:price_id)
    gender_id = params.delete(:gender_id)

    tag = Tag.where(age_id: age_id, price_id: price_id, gender_id: gender_id, scene_id: scene_id).first_or_initialize

    tag.save
    gift.update(params)
    GiftTagRelation.create(gift_id: gift.id, tag_id: tag.id)
  end
end
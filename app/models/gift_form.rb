class GiftForm
  include ActiveModel::Model

  attr_accessor(
    :title, :image, :content, :url, :user_id,
    :id, :created_at, :datetime, :updated_at, :datetime
  )

  with_options presence: true do
    validates :title
    validates :image
    validates :content
  end

  def save
    Gift.create(title: title, image: image, content: content, url: url, user_id: user_id)
  end

  def update(params, gift)
    gift.update(params)
  end
end
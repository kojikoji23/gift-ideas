class GiftForm
  include ActiveModel::Model

  attr_accessor :title, :image, :content, :url, :user_id

  with_options presence: true do
    validates :title
    validates :image
    validates :content
  end

  def save
    Gift.create(title: title, image: image, content: content, url: url, user_id: user_id)
  end
end
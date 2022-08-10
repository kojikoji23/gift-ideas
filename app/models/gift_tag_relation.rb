class GiftTagRelation < ApplicationRecord
  belongs_to :gift
  belongs_to :tag
end

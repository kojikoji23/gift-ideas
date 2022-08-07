class ChangeDataUrlToGifts < ActiveRecord::Migration[6.0]
  def change
    change_column :gifts, :url, :text
  end
end

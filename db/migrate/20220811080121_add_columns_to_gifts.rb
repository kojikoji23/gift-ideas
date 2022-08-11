class AddColumnsToGifts < ActiveRecord::Migration[6.0]
  def change
    add_column :gifts, :price_id, :integer, null: false
    add_column :gifts, :age_id, :integer, null: false
    add_column :gifts, :gender_id, :integer, null: false
    add_column :gifts, :scene_id, :integer, null: false
  end
end

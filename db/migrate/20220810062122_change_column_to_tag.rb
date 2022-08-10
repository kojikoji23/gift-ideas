class ChangeColumnToTag < ActiveRecord::Migration[6.0]
  def change
    add_index :tags, [:age_id, :scene_id, :gender_id, :price_id ], unique: true
  end
end

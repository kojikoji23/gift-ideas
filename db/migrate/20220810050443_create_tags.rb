class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.integer :age_id,    null: false
      t.integer :scene_id,  null: false
      t.integer :price_id,  null: false
      t.integer :gender_id, null: false
      t.timestamps
    end
  end
end

class CreateGiftTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :gift_tag_relations do |t|
      t.references :gift, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end

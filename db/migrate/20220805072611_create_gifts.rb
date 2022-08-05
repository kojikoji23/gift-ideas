class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.string      :title, null: false
      t.text      :content, null: false
      t.string      :url
      t.references  :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

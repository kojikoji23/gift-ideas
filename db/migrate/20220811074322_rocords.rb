class Rocords < ActiveRecord::Migration[6.0]
  def change
    drop_table :gift_tag_relations
    drop_table :tags
  end
end

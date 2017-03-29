class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :url, null: false
      t.string :caption
      t.integer :sort_order, null: false
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end

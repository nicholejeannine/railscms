class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :image_uid, null: false
      t.string :title, null: false
      t.integer :sort_order, unique: true
      t.timestamps null: false
    end
  end
end

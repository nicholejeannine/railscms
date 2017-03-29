class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.text :description
      t.string :cover
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :albums, :title, unique: true
  end
end

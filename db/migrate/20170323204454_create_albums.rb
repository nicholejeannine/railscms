class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.string :cover

      t.timestamps
    end
    add_index :albums, :title, unique: true
  end
end

class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :heading, null: false
      t.string :label, null: false
      t.integer :sort_order, null: false
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :pages, :label, unique: true
    add_index :pages, :sort_order, unique: true
  end
end

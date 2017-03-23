class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name, limit: 40
      t.password_digest :password

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end

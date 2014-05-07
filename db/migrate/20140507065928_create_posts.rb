class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :source
      t.text :result
      t.string :token
      t.references :user
      t.string :slug

      t.timestamps
    end
    add_index :posts, :token, unique: true
    add_index :posts, :slug, unique: true
  end
end

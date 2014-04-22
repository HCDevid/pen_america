class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :picture
      t.integer :user_id

      t.timestamps
    end
  add_index :posts, [:user_id, :created_at]
  end
end

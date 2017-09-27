class CreatePosts < ActiveRecord::Migration[5.1]
  def up
    create_table :posts do |t|
      t.string    :title
      t.text      :body

      t.timestamps null: false
    end
  end

  def down
    drop_table :posts
  end
end

class AddMetaToPosts < ActiveRecord::Migration[5.1]
  def up
    add_column :posts, :meta_description, :text
  end

  def down
    remove_column :posts, :meta_description
  end
end

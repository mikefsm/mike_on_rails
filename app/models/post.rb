# create_table :posts, force: :cascade do |t|
#   t.string :title
#   t.text :body
#   t.datetime :created_at, null: false
#   t.datetime :updated_at, null: false
#   t.integer :user_id
#   t.text :meta_description
#   t.string :slug
#   t.index [:slug], name: :index_posts_on_slug, unique: true
# end

class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user

end

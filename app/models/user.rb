# create_table :users, force: :cascade do |t|
#   t.string :email, default: "", null: false
#   t.string :encrypted_password, default: "", null: false
#   t.string :reset_password_token
#   t.datetime :reset_password_sent_at
#   t.datetime :remember_created_at
#   t.integer :sign_in_count, default: 0, null: false
#   t.datetime :current_sign_in_at
#   t.datetime :last_sign_in_at
#   t.inet :current_sign_in_ip
#   t.inet :last_sign_in_ip
#   t.datetime :created_at, null: false
#   t.datetime :updated_at, null: false
#   t.integer :role
#   t.index [:email], name: :index_users_on_email, unique: true
#   t.index [:reset_password_token], name: :index_users_on_reset_password_token, unique: true
# end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts

  enum role: [:reader, :admin]

end

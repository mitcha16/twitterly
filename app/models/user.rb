class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
  uniqueness: true

  has_secure_password

  def tweets
    Post.where("user_id = ?", id)
  end
end

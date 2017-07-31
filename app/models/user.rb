class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :current_followers,  class_name:  "Follow",
  foreign_key: "follower_id",
  dependent:   :destroy
  has_many :current_following, class_name:  "Follow",
  foreign_key: "followed_id",
  dependent:   :destroy
  has_many :following, through: :current_followers,  source: :followed
  has_many :followers, through: :current_following
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
  uniqueness: true

  has_secure_password

  def unfollow(other_user)
    following.delete(other_user)
  end

  def tweets
    Post.where("user_id = ?", id)
  end

  def follow(other_user)
    following << other_user
  end

  def following?(other_user)
    following.include?(other_user)
  end
end

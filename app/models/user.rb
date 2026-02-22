class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :comments

  # FOLLOW SYSTEM 👇
  has_many :follower_relationships, class_name: "Follow", foreign_key: "followed_id"
  has_many :followed_relationships, class_name: "Follow", foreign_key: "follower_id"

  has_many :followers, through: :follower_relationships, source: :follower
  has_many :following, through: :followed_relationships, source: :followed
end

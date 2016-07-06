class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_many :shouts

  has_many :followed_user_relationships,
    foreign_key: :follower_id,
    class_name: 'FollowingRelationships'
  has_many :followed_users, through: :followed_user_relationships

  has_many :follower_relationships,
    foreign_key: :followed_user_id,
    class_name: 'FollowingRelationships'
  has_many :followers, through: :following_relationships
end

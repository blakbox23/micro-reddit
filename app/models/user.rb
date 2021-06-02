class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true,
                       length: { minimum: 3, message: '%<count>s characters is the minimum allowed ' }
  validates :email, presence: true, uniqueness: true, length: { in: 6..50 }
  validates :password, presence: true, length: { in: 6..50 }

  has_many :posts
  has_many :comments
end

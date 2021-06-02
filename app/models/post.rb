# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, message: '%{count} characters is the minimum allowed ' }
  validates :body, presence: true, length: { minimum: 10 }

  belongs_to :user
  has_many :comments
end

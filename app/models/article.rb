# Model used to save Article
class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
end

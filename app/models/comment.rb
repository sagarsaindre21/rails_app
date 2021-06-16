# Model used to save Comment
class Comment < ApplicationRecord
	belongs_to :commentable, polymorphic: true
  # has_many :comments, as: :commentable
  has_many :replies, class_name: 'Comment', foreign_key: :comment_id
end

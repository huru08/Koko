class Comment < ApplicationRecord

  validates :comment_content, presence: true
  validates :comment_content,    length: { maximum: 140 }

  belongs_to :user
  belongs_to :article
end

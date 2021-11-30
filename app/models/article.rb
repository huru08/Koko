class Article < ApplicationRecord
    validates :day, presence: true
    validates :title, presence: true

    has_many :comments, dependent: :destroy
end

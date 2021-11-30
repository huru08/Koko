class Info < ApplicationRecord

    validates :content, presence: true
    validates :day, presence: true

end

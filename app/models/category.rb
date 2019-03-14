class Category < ApplicationRecord
    has_many :articles
    validates :category, presence: true
end


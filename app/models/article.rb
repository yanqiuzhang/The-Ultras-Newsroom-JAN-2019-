class Article < ApplicationRecord
    belongs_to :category
    validates :title, presence: true
    validates :content, presence: true
    validates :lead, presence: true
end
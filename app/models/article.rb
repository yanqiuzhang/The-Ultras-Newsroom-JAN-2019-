class Article < ApplicationRecord
    has_and_belongs_to_many :category
    validates :title, presence: true
    validates :content, presence: true
    validates :lead, presence: true
end
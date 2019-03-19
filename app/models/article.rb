class Article < ApplicationRecord
    has_one :user
    validates :title, presence: true
    validates :content, presence: true
    validates :lead, presence: true
    has_and_belongs_to_many :categories
end
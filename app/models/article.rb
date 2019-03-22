class Article < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :content, presence: true
    validates :lead, presence: true
    has_and_belongs_to_many :categories
    has_one_attached :image
end
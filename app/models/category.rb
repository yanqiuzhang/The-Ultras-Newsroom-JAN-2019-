class Category < ApplicationRecord
    has_and_belongs_to_many :articles
    validates :name, presence: true
    validates_uniqueness_of :name
end

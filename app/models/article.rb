class Article < ApplicationRecord
    validates_presence_of :title, :lead, :content, :premium 
    has_and_belongs_to_many :categories
end
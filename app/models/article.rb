class Article < ApplicationRecord
    validates_presence_of :title, :lead, :content
    validates :premium, inclusion: { in: [true, false] }
    validates :premium, exclusion: { in: [nil] }
    has_and_belongs_to_many :categories
end
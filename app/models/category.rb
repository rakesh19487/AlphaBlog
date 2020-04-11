class Category < ApplicationRecord
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 3, maximum: 25}

    before_save :category_capitalize

    has_many :ac_links
    has_many :articles, through: :ac_links


    def category_capitalize
        self.name = name.capitalize
    end    
end    
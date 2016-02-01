class Category < ActiveRecord::Base
    has_many :subcategories
    has_many :articles, through: :subcategories
    
    def to_s
        name
    end
end

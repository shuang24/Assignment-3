class Article < ActiveRecord::Base
    
    has_many :comments, dependent: :destroy 
    validates :title, presence: true,
                    length: { minimum: 5 }
                    
    has_many :subcategories
    has_many :categories, through: :subcategories
    
    def category_list=(categories_string)
       cat_names = categories_string.split(",").collect{|s| s.strip.downcase}.uniq
       new_or_found_categories = cat_names.collect { |name| Category.find_or_create_by(name: name) }
        self.categories = new_or_found_categories
    end
end

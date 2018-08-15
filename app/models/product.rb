class Product < ApplicationRecord
    
    has_many :order_items
    
    validates_numericality_of :price
    validates :stock, numericality: { only_integer: true }
    
    def price=(input)
        input.delete!("$")
        super
    end
end

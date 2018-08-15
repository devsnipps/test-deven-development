class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product
    
    validates :order_id, :product_id, presence: true
    
    def sub_total
       sum {|q| q.quantity * q.product.price}
    end
end

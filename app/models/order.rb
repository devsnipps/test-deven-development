class Order < ApplicationRecord
    has_many :order_items
    
    def total
        self.order_items.sum {|q| q.quantity * q.product.price}
    end
    
    def add_product(product)
        item = order_items.find_by(product_id: product.id)
        if item
            item.quantity +=1
        else
            item = order_items.build(product_id: product.id, quantity: 1)
        end
        item
    end
end

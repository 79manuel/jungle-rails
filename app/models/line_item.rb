class LineItem < ActiveRecord::Base

  belongs_to :order
  belongs_to :product

  monetize :item_price_cents, numericality: true
  monetize :total_price_cents, numericality: true
  def get_product_name
    @order.line_items.each do |item|
       @product = item.product.name
    end
  end
end

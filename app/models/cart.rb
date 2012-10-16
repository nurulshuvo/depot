# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ActiveRecord::Base
  # attr_accessible  :product
  has_many :line_items, dependent: :destroy
  def total_price
    line_items.to_a.sum{|item| item.total_price}
  end
  def add_product(product_id)
  	current_item=line_items.find_by_product_id(product_id)
  	if current_item
  		current_item.quantity +=1
  	else
  		current_item=line_items.build(product_id: product_id)
  	end
	current_item  	
  end
end

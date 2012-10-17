class StoreController < ApplicationController
  def index
  	@count=action_count
  	@products=Product.order(:title)
  	@cart=current_cart
  end
end

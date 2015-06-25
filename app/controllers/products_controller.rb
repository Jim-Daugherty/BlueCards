class ProductsController < ApplicationController



before_filter :authenticate_user!
before_filter :is_admin?

def is_admin?
  if current_user.admin?
    true
  else
    render :text => 'You Do not have Access'
  end
end



  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end
end

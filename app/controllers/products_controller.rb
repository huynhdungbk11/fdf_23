class ProductsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @products = Product.paginate page: params[:page],
      per_page: Settings.per_page.products
  end

  def show
  end

end



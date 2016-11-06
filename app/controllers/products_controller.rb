class ProductsController < ApplicationController
  def index
    @categories = Category.all
    params[:filter_by] = :all if params[:filter_by].blank?
    @products = params[:filter_by] == :all ? Product.all :
      Product.send(params[:filter_by])
    @products = @products.search_name(params[:search]).by_category(params[:category_id])
      .page(params[:page]).per Settings.per_page.products
  end

  def show
  end
end

class ProductsController < ApplicationController
  before_filter :authorize

  def index
    products = Product.page(params[:page]).per(1)
    render json: {
      collection: products,
      limit: products.limit_value.try(:to_i),
      offset: products.offset_value.try(:to_i),
      total_count: products.total_count.try(:to_i)
    }.to_json
  end

  def show
    render json: Product.find(params[:id]).to_json
  end

  protected

  def authorize
    if request.headers["X-Token"] != '2889'
      render nothing: true, status: :unauthorized
    end
  end
end
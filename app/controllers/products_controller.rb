class ProductsController < ApplicationController
  before_filter :authorize

  def index
    render json: Product.all.to_json
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
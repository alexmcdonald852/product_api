class ProductsController < ApplicationController
  def create
    render json: Product.create(product_params)
  end

  def destroy
    product = Product.find(params[:id])
    render json: product.destroy
  end

  def index
    render json: Product.all
  end

  def show
    render json: Product.find(params[:id])
  end

  def latest
    render json:  Product.last
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :category_id)
  end
end

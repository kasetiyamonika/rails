class HomeController < ApplicationController
  def index
    @products = @products.where('name like ?', "%#{params[:name]}%") if params[:name].present?
    @products = @products.where(product_id: params[:product_id]) if params[:Product_id].present?
    @services =  @services.where('name like ?', "%#{params[:name]}%") if params[:name].present?
    @services = @services.where(service_id: params[:service_id]) if params[:service_id].present?
  end
end

# def services
#   @services = Service.all
#   @services = @services.where('services.name like ?', "%#{params[:name]}%") if params[:name].present?
# end
#
# def products
#   @products = Product.all
#   @products = @products.where('products.name like ?', "%#{params[:name]}%") if params[:name].present?
# end

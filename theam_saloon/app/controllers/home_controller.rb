class HomeController < ApplicationController

  def index

  end

  def services
    @services = Service.all
    @services = @services.where('services.name like ?', "%#{params[:name]}%") if params[:name].present?
  end

  def products
    @products = Product.all
    @products = @products.where('products.name like ?', "%#{params[:name]}%") if params[:name].present?
  end

  def abouts
  end

  def blogs
  end

  def contacts
  end

  def search
  end
end

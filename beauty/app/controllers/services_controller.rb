class ServicesController < ApplicationController
  def index
    page = params[:page].to_i > 0 ? params[:page] : 1
    @services = Service.page(page).per(6)
    @services = @services.where('services.name like ?', "%#{params[:name]}%") if params[:name].present?
  end
end

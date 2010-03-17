class PricesController < ApplicationController
  layout 'main'
  def index
    @pricelist = Price.find(:all, :conditions=>["razdel=? and accept=true",2])
    @price = Price.new
  end
  
  def new
  end

  def create
    @price = Price.new(params[:price])
    if @price.save
      flash[:notice] = "После модерации модуль будет добавлен в общий список!"
      redirect_to prices_path
    else
      @pricelist = Price.find(:all, :conditions=>["razdel=? and accept=true",2])
      render :action => :index
    end
  end

  def delete
  end

end

class InvoicesController < ApplicationController
  layout 'main'
  
  def index
  end

  def edit
  end

  def show
    @invoice = Invoice.find_by_permalink(params[:id])
    render :text => "Инвойс  #{@invoice.fio}"
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(params[:invoice])
    if @invoice.save
      flash[:notice] = 'Счет создан!'
      redirect_to invoice_path(@invoice.permalink)
    else
      render :action => "new"
    end
  end

end


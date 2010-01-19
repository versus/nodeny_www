class InvoicesController < ApplicationController

  def show
    @invoice=Invoice.find_by_permalink(params[:id])
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(params[:invoice])
    if @invoice.save
      redirect_to invoice_path(@invoice)
    else
      render :action => 'new'
    end
  end

end

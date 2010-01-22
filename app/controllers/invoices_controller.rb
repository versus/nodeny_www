class InvoicesController < ApplicationController
  layout 'main'
  
  def index
  end

  def edit
  end

  def new
    @invoice = Invoice.new
  end

  def create
  end
end

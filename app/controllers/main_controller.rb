class MainController < ApplicationController
  def index
  end
  def detail
  end
  def price
  end
  def sale
  end
  def policy
  end
  def demo
  end
  def arhitectura
  end
  def forum
    redirect_to "http://forum.nodeny.com.ua"
  end
  def changelog
  end
  def gallery
    render :layout => false
  end
  def get49
    redirect_to "http://code.google.com/p/nodeny49/downloads/list"
  end

end

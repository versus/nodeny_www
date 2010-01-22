class WikiPagesController < ApplicationController
  
  acts_as_wiki_pages_controller
  
  def show_allowed?
    true # Показывать всем
  end 
  
  def history_allowed?
    true # И историю пусть все смотрят
  end
  
  def edit_allowed?
    true # А редактируют только те, кто залогинены
  end
  
  def not_allowed
    redirect_to root_path # Всех нарушителей редиректим на страницу логина
  end
end

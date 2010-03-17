class Price < ActiveRecord::Base
  validates_presence_of  :price, :message=>'Поле цена не заполнено' 
  validates_presence_of  :author, :message=>'Поле автор не заполнено' 
  validates_presence_of  :note, :message=>'Описание не заполнено' 
  validates_presence_of  :contact, :message=>'Поле контакт не заполнено' 
end

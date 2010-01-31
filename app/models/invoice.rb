class Invoice < ActiveRecord::Base
  before_validation_on_create :generate_permalink
  
  validates_presence_of :permalink, :fio, :email,:count_user, :network_name,:summa
  validates_numericality_of :summa, :count_user
  
  
  def to_param
    permalink
  end

  protected
  def generate_permalink
    string = random_string
    while Invoice.find_by_permalink(string)
      string = random_string
    end
    self.permalink = string
  end
 
  def random_string(size = 8)
    chars = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a)
    (1..size).collect{|a| chars[rand(chars.size)] }.join
  end
end

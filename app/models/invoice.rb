class Invoice < ActiveRecord::Base
  before_validation_on_create :generate_permalink

  def to_param
    permalink
  end

  private
  def generate_permalink
    string = random_string
    while Foo.find_by_permalink(string)
      string = random_string
    end
    self.permalink = string
  end
 
  def random_string(size = 8)
    chars = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a)
    (1..size).collect{|a| chars[rand(chars.size)] }.join
  end
end

require 'spec_helper'

describe Invoice do
  before(:each) do
    @valid_attributes = {
      :network_name => "value for network_name",
      :fio => "value for fio",
      :email => "value for email",
      :count_user => 1,
      :city => "value for city"
    }
  end

  it "should create a new instance given valid attributes" do
    Invoice.create!(@valid_attributes)
  end
end

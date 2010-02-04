When /^I insert aminet address "([^\"]*)"$/ do |ipaddr|
   aaa = Aminet.new
   aaa.remote_ip=ipaddr
   aaa.save
end


Then /^I should be redirected to "(.*)"$/ do |url|
  response.should redirect_to(url)
end



When /^I insert aminet address "([^\"]*)"$/ do |ipaddr|
   aaa = Aminet.new
   aaa.remote_ip=ipaddr
   aaa.save
end


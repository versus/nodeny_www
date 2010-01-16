class AminetController < ApplicationController
  def index
    @aminet_ips=Aminet.find(:all, :limit=>'10',:order => "updated_at desc")
  end

  def add
    @remote_ip = request.remote_ip
    #@remote_ip = request.env["HTTP_X_FORWARDED_FOR"] request.env['REMOTE_ADDR']
    aminet_ip=Aminet.find_or_create_by_remote_ip(@remote_ip)
    aminet_ip.update_attribute(:updated_at, Time.now)
  end

end

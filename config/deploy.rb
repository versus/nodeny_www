set :application, "nodeny"
set :repository,  "git://github.com/versus/nodeny_www.git"
set :scm, "nodeny.ukrindex.com"
set :scm, :git
set :branch, "master"
set :ssh_options, { :forward_agent => true }
set :use_sudo, false
set :deploy_to, "~/#{application}"

role :web, "nodeny.ukrindex.com"                          # Your HTTP server, Apache/etc
role :app, "nodeny.ukrindex.com"                          # This may be the same as your `Web` server
role :db,  "nodeny.ukrindex.com", :primary => true 

task :restart_mongrel_cluster, :roles => [:app, :db, :web] do
  run "sudo /usr/bin/mongrel_cluster_ctl restart"
end

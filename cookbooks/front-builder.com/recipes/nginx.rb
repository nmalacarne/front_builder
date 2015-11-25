package 'nginx'

default_path = '/etc/nginx/sites-enabled/default'
execute "rm -f #{default_path}" do
  only_if { File.exists? default_path }
end

service 'nginx' do
  supports [:status, :restart]
  action :start
end

template '/etc/nginx/sites-enabled/default' do
  source 'nginx.conf.erb'
  notifies :restart, 'service[nginx]', :delayed
end

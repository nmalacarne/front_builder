#
# Cookbook Name:: front-builder.com
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
execute 'apt-get update'

package 'libpq-dev'
package 'nodejs'
package 'bundler'

bash 'navigate to project directory on ssh' do
  code <<-EOH
    echo 'cd /front-builder.com/' >> /home/vagrant/.bashrc
  EOH
end

bash 'run bundler' do
  code <<-EOH
    cd /front-builder.com/ && bundle
  EOH
end

include_recipe 'front-builder.com::nginx'
include_recipe 'front-builder.com::postgres'

bash 'setup database' do
  code <<-EOH
    cd /front-builder.com/ && rake db:setup
  EOH
end

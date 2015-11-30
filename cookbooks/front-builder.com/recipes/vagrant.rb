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

bash 'setup database' do
  code <<-EOH
    cd /front-builder.com/ && rake db:setup
  EOH
end

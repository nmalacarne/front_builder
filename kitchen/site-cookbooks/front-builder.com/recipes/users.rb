require 'digest/sha2'

salt = rand(36**8).to_s(36)

encrypted_password = node[:user][:password].crypt(salt) 

user node[:user][:name] do
  supports :manage_home => true
  home "/home/#{node[:user][:name]}/"
  password encrypted_password 
  shell '/bin/bash'
end

execute "usermod -a -G sudo #{node[:user][:name]}"

package 'postgresql'
package 'postgresql-contrib'

bash 'setup postgres password' do
  user 'postgres'
  code <<-EOH
    psql -c "ALTER USER postgres WITH PASSWORD '#{node['db']['root_password']}';" 
  EOH
end


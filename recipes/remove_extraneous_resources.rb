#
# Cookbook:: chef-cis-tomcat-hardening
# Recipe:: remove_extraneous_resources
#
# Copyright:: 2018, The Authors, All Rights Reserved.


node['tomcat']['extraneous-resources'].each do |app|
  directory "#{node['tomcat']['dir']['webapps']}/#{app}" do
    action :delete
    recursive true
  end
end

#
# Cookbook:: chef-cis-tomcat-hardening
# Recipe:: minimize_access
#
# Copyright:: 2018, The Authors, All Rights Reserved.


directory node['tomcat']['dir']['home'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

directory node['tomcat']['dir']['base'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

directory node['tomcat']['dir']['conf'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

directory node['tomcat']['dir']['logs'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0770'
end

directory node['tomcat']['dir']['temp'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0770'
end

directory node['tomcat']['dir']['bin'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

directory node['tomcat']['dir']['webapps'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

file node['tomcat']['file']['policy'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0770'
end

file node['tomcat']['file']['properties'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

file node['tomcat']['file']['context'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

file node['tomcat']['file']['logging'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

file node['tomcat']['file']['server'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

file node['tomcat']['file']['tomcat-users'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

file node['tomcat']['file']['web'] do
  owner node['tomcat']['owner']
  group node['tomcat']['group']
  mode '0750'
end

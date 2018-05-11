#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'java-1.7.0-openjdk-devel'

# Creating a group called `tomcat`
group 'tomcat'

# creating a user called `tomcat_admin`
user 'tomcat_admin' do
  manage_home false
  shell '/bin/nologin'
  gid 'tomcat'
  home '/opt/tomcat'
end

# Download tomcat from remote url
remote_file 'apache-tomcat-8.5.31.tar.gz' do
  source 'http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz'
end

# Assign directory to the tomcat group
directory '/opt/tomcat' do
  group 'tomcat'
end

# TODO: Find a chef package to unzip
# Unzip the above tomcat zip to the /opt/tomcat directory
execute 'tar xvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1'

include_recipe('tomcat::minimize_access')

# Add in the custom tomcat.service file to the tomcat instance
template '/etc/systemd/system/tomcat.service' do
  source 'tomcat.service.erb'
end

# Reload and run the service for tomcat
execute 'systemctl daemon-reload'

service 'tomcat' do
  action :start
end

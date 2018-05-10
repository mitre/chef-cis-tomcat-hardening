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

# TODO: Find a way for tomcat to recursively give tomcat group ownership of /opt/tomcat
# Recursively give group ownership of the `/opt/tomcat` directory to the `tomcat` group
execute 'chgrp -R tomcat /opt/tomcat'

# TODO: Find a way to recursively give group read permissions
# Recursively set permissions for `conf` folder
execute 'chmod -R g+r /opt/tomcat/conf'

# TODO: Find a way to add execute permission to group
# Giving execute permission only to the `conf` folder
execute 'chmod g+x /opt/tomcat/conf'

# TODO: Find a way to recursively give user ownership of following directories
# Recursively give ownership to the `tomcat_admin` user to the following folders
execute 'chown -R tomcat_admin /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/'

# Add in the custom tomcat.service file to the tomcat instance
template '/etc/systemd/system/tomcat.service' do
  source 'tomcat.service.erb'
end

# Reload and run the service for tomcat
execute 'systemctl daemon-reload'

service 'tomcat' do
  action :start
end

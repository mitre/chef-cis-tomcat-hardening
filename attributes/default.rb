

default['tomcat']['owner'] = 'tomcat_admin'
default['tomcat']['group'] = 'tomcat'
default['tomcat']['dir']['home'] = '/opt/tomcat'
default['tomcat']['dir']['base'] = '/opt/tomcat'
default['tomcat']['dir']['conf'] = '/opt/tomcat/conf'
default['tomcat']['dir']['logs'] = '/opt/tomcat/logs'
default['tomcat']['dir']['temp'] = '/opt/tomcat/temp'
default['tomcat']['dir']['bin'] = '/opt/tomcat/bin'
default['tomcat']['dir']['webapps'] = '/opt/tomcat/webapps'
default['tomcat']['file']['policy'] = '/opt/tomcat/conf/catalina.policy'
default['tomcat']['file']['properties'] = '/opt/tomcat/conf/catalina.properties'
default['tomcat']['file']['context'] = '/opt/tomcat/conf/context.xml'
default['tomcat']['file']['logging'] = '/opt/tomcat/conf/logging.properties'
default['tomcat']['file']['server'] = '/opt/tomcat/conf/server.xml'
default['tomcat']['file']['tomcat-users'] = '/opt/tomcat/conf/tomcat-users.xml'
default['tomcat']['file']['web'] = '/opt/tomcat/conf/web.xml'

default['tomcat']['extraneous-resources'] = [ 'docs', 'examples', 'manager', 'host-manager']

# # encoding: utf-8

# Inspec test for recipe chef-cis-tomcat-hardening::minimize_access

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/opt/tomcat') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0750 }
end

describe file('/opt/tomcat/conf') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0750 }
end

describe file('/opt/tomcat/logs') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0770 }
end

describe file('/opt/tomcat/temp') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0770 }
end

describe file('/opt/tomcat/bin') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0750 }
end

describe file('/opt/tomcat/webapps') do
  it { should exist }
  it { should be_directory }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0750 }
end

describe file('/opt/tomcat/conf/catalina.policy') do
  it { should exist }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0770 }
end

describe file('/opt/tomcat/conf/catalina.properties') do
  it { should exist }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0750 }
end

describe file('/opt/tomcat/conf/context.xml') do
  it { should exist }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0750 }
end

describe file('/opt/tomcat/conf/logging.properties') do
  it { should exist }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0750 }
end

describe file('/opt/tomcat/conf/server.xml') do
  it { should exist }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0750 }
end

describe file('/opt/tomcat/conf/tomcat-users.xml') do
  it { should exist }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0750 }
end

describe file('/opt/tomcat/conf/web.xml') do
  it { should exist }
  it { should be_owned_by 'tomcat_admin'}
  it { should be_grouped_into 'tomcat' }
  it { should be_mode 0750 }
end

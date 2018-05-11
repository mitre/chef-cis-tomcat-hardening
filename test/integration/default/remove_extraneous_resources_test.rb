# # encoding: utf-8

# Inspec test for recipe chef-cis-tomcat-hardening::remove_extraneous_resources

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

%w[ docs examples manager host-manager ].each do |path|
  describe file("/opt/tomcat/webapps/#{path}") do
    it { should_not exist }
  end
end

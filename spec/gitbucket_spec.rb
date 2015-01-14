require 'spec_helper'

describe file('/etc/localtime') do
  it { should contain 'JST' }
end

describe command('java -version') do
  its(:stderr) { should match "java" }
end

describe service('jetty') do
  it { should be_enabled }
end

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled }
end

describe file('/opt/jetty/webapps/gitbucket.war') do
  it { should be_file }
end

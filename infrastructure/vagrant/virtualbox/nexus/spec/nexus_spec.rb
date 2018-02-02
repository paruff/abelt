require 'spec_helper'

# Verify packages
describe package('nexus') do
    it { should be_installed.with_version('3.7.1-02') }
  end
  describe port(8081) do
    it { should be_listening }
  end
  describe command('java -version') do
    its(:stdout){ should include 'openjdk version "1.8.0_161"' }
  end
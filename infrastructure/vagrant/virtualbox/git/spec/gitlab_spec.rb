require 'spec_helper'

# Verify packages
describe package('git') do
    it { should be_installed.with_version('1.8.3') }
  end
  describe package('httpd') do
    it { should be_installed.with_version('2.4.6') }
  end
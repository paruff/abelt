require 'spec_helper'

# Verify packages
describe package('jenkins') do
    it { should be_installed.with_version('1.8.3') }
  end
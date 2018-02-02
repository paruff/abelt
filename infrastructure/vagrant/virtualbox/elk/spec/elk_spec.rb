require 'spec_helper'

# Verify packages
describe package('elastic') do
    it { should be_installed.with_version('1.8.3') }
  end

describe host('elk') do
  it { should be_reachable.with( :port => 9200 ) }
end

describe port(9200) do
  it { should be_listening }
end

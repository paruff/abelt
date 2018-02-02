require 'spec_helper'

# Verify packages

describe package('ntp') do
  it { should be_installed }
end

describe "java" do
  describe command('java -version') do
    its(:exit_status) { should eq 0 }
  end
end
  describe package('elasticsearch') do
    it "is enabled" do
      expect(service("elasticsearch")).to be_enabled
    end
  
    it "is running" do
      expect(service("elasticsearch")).to be_running.under('init')
    end  
  
    it "is listening on port 9200" do
      expect(port(9200)).to be_listening
    end  
    
    describe port(9300) do
      it { should be_listening }
    end

  end

describe "logstash service" do
  it "is enabled" do
    expect(service("logstash")).to be_enabled
  end

  it "is running" do
    expect(service("logstash")).to be_running.under('init')
  end  

end

# kibana
describe "kibana service" do
  it "is running" do
    expect(service("kibana")).to be_running.under('runit')
  end

  it "is listening on port 5602" do
    expect(port(5602)).to be_listening
  end
end

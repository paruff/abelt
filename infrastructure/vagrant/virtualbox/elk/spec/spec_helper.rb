require 'serverspec'
# Set backend type
set :backend, :ssh

set :path, '/sbin:/usr/local/sbin:$PATH'

set :host,  ENV['VMNAME']

# Don't include Specinfra::Helper::DetectOS
# require 'rspec/mocks/standalone'
# require 'specinfra/helper/set'
# include Specinfra::Helper::Set


# host = ENV['VMNAME']

# puts "\n## Running Tests on #{host} >>>"

# options  = Net::SSH::Config.for(host)
# config   = `vagrant ssh-config #{host}`

# realhost = ""
# user     = ""

# config.each_line do |line|
#   if match = /HostName (.*)/.match(line)
#     realhost = match[1]
#   elsif  match = /User (.*)/.match(line)
#     user = match[1]
#   elsif match = /IdentityFile (.*)/.match(line)
#     options[:keys] =  [match[1].gsub(/"/,'')]
#   elsif match = /Port (.*)/.match(line)
#     options[:port] = match[1]
#   end
# end

# # SpecInfra.configuration.ssh = Net::SSH.start(realhost, user, options)

# # property[:os] = backend.check_os

# set :host, 'target-host-name'

# set :path, '$PATH:/sbin:/usr/local/sbin'
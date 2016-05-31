#!/usr/bin/ruby

require 'resolv'

Facter.add('ipaddress_main') do
  setcode do
    fqdn = Facter.value(:fqdn)
    resolv = Resolv::DNS.new
    resolv.getaddress(fqdn).to_s
  end
end

# EOF

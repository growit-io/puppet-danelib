#!/usr/bin/ruby

Facter.add('ipaddress_main') do
  setcode do
    fqdn = Facter.value(:fqdn)
    %x{dig +short -t A #{fqdn} | grep -E '^[0-9.]+$'}.chomp
  end
end
# EOF

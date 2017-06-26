require "niri_ip_track/version"

module NiriIpTrack
  class IpTrack

    def self.locate_ip(ip)
      client_ip = ip
      ip_call ="http://freegeoip.io/json/#{client_ip}"
      require 'open-uri'
      require 'json'
      ip_call ="http://freegeoip.io/json/#{client_ip}"
      content = open(ip_call).read
      data=JSON.parse(content)
      puts data
      return data
    end

    def self.awesome?
      puts "you are awesome!!"
    end
  end
  # Your code goes here...
end

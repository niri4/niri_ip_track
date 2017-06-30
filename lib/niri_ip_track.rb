require "niri_ip_track/version"
require "niri_ip_track/railtie" if defined?(Rails)

module NiriIpTrack
  class IpTrack
    require 'open-uri'
    require 'json'

    def self.locate_ip(ip)
      client_ip = ip
      # ip_call ="http://freegeoip.io/json/#{client_ip}"
      # require 'open-uri'
      # require 'json'
      ip_call ="http://freegeoip.io/json/#{client_ip}"
      content = open(ip_call).read
      data=JSON.parse(content)
      return data
    end
    def self.locate_ip_xml(ip)
      client_ip = ip
      ip_call = "http://freegeoip.io/xml/#{client_ip}"
      content = open(ip_call).read
      return content
    end

    def self.locate_ip_csv(ip)
      client_ip = ip
      ip_call = "http://freegeoip.io/csv/#{client_ip}"
      content = open(ip_call).read
      return content
    end
  end
  # Your code goes here...
end

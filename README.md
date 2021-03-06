# NiriIpTrack

<!-- Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/niri_ip_track`. To experiment with that code, run `bin/console` for an interactive prompt.

Todo: Delete this and the text above, and describe your gem -->
This gem provides a simple and extremely flexible way to find your location from Ruby applications. It works well with Rack based web applications such as Ruby On Rails.


## Installation

Add this line to your application's Gemfile:

```ruby
gem "niri_ip_track", git: "https://github.com/niri4/niri_ip_track.git"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install niri_ip_track

## Usage
To find your location you have to require

    require "niri_ip_track"

    to get the ip request.remote.ip
    NiriIpTrack::IpTrack.locate_ip("YOUR IP HERE")

To find your location response in json use the above mention

To find your location response in xml formet use

    require "niri_ip_track"

    to get the ip request.remote.ip

    NiriIpTrack::IpTrack.locate_ip_xml("YOUR IP HERE")

To find your location response in csv formet use

    require "niri_ip_track"

    to get the ip request.remote.ip

    NiriIpTrack::IpTrack.locate_ip_csv("YOUR IP HERE")




##Example

     NiriIpTrack::IpTrack.locate_ip("122.173.143.158")
     it return the response in json form

     {"ip"=>"122.173.143.158", "country_code"=>"IN", "country_name"=>"India", "region_code"=>"CH", "region_name"=>"Chandigarh", "city"=>"Chandigarh", "zip_code"=>"", "time_zone"=>"Asia/Kolkata", "latitude"=>30.7343, "longitude"=>76.7933, "metro_code"=>0}

     NiriIpTrack::IpTrack.locate_xml("122.173.143.158")
     it return the response in xml form

     "<Response>\n\t<IP>122.173.143.158</IP>\n\t<CountryCode>IN</CountryCode>\n\t<CountryName>India</CountryName>\n\t<RegionCode>CH</RegionCode>\n\t<RegionName>Chandigarh</RegionName>\n\t<City>Chandigarh</City>\n\t<ZipCode></ZipCode>\n\t<TimeZone>Asia/Kolkata</TimeZone>\n\t<Latitude>30.7343</Latitude>\n\t<Longitude>76.7933</Longitude>\n\t<MetroCode>0</MetroCode>\n</Response>\n"

     NiriIpTrack::IpTrack.locate_csv("122.173.143.158")
     it return the response in csv form

     "122.173.143.158,IN,India,CH,Chandigarh,Chandigarh,,Asia/Kolkata,30.7343,76.7933,0\r\n"
<!-- TOdO: Write usage instructions here -->

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/niri4/niri_ip_track.

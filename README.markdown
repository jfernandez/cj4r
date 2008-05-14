# Cj4r #

Rails plugin for Commission Junction's Web Services SOAP API.

## Dependencies ##

* Ruby on Rails 2.1 +

* This plugin uses the soap4r gem.  You must have it installed.
  
  sudo gem install soap4r


## Installation ##

1. From your Rails root run:

  ./script/plugin install git://github.com/jfernandez/cj4r.git
  
2. Enter your Commission Junction developer key in
  
  config/cj_key.yml
  
3. Include the plugin in one of your Rails controllers, or just once in your Application controller

  class ApplicationController < ActionController::Base
    include Cj4r
  end
  

---
Copyright (c) 2008 HiveMagic, released under the MIT license<br/>
Written by Jose Fernandez, with support from iFundDrive.com


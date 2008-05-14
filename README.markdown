# Cj4r #

Rails plugin for Commission Junction's Web Services SOAP API.

## Supported Services ##

* Daily Publisher Commission Report Service

* Item-based Details Report Service

## Dependencies ##

* Ruby on Rails 2.1 +

* This plugin uses the soap4r gem.  You must have it installed. <pre>sudo gem install soap4r</pre>


## Installation ##

* From your Rails root run: 1.

<pre>
	./script/plugin install git://github.com/jfernandez/cj4r.git
</pre>
  
* Enter your Commission Junction developer key in

<pre>
	config/cj_key.yml
</pre>

* Include the Cj4r gem in any of your Rails controllers, or just once in the Application controller

<pre>
	class ApplicationController < ActionController::Base
	  include Cj4r
	end
</pre>

## Examples ##

* Return all transactions that occurred yesterday, sorted by sId in ascending order (defaults)

<pre>
	Cj4r::PublisherCommission.find(:all)
</pre>

* Return all transactions for the event date of January 19, 2007 sorted by commission amount in descending order

<pre>
	Cj4r::PublisherCommission.find(:all, 
		:date => Time.local(2008, 'jan', 19), 
		:sort => 'commissionAmount', 
		:order => 'desc')
</pre>


---
Copyright (c) 2008 HiveMagic, released under the MIT license<br/>
Written by Jose Fernandez, with support from iFundDrive.com


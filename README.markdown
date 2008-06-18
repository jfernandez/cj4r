# Cj4r #

Rails plugin for Commission Junction's Web Services SOAP API.

## Supported Services ##

* Daily Publisher Commission Report Service

* Item-based Details Report Service

## Dependencies ##

* Ruby on Rails 2.1 +

* This plugin uses the soap4r gem.  You must have it installed. <pre>sudo gem install soap4r</pre>


## Installation ##

* From your Rails root run:

<pre>
	./script/plugin install git://github.com/jfernandez/cj4r.git
</pre>
  
* Enter your Commission Junction developer key in

<pre>
	config/cj_key.yml
</pre>

* Include the Cj4r plugin in any of your Rails controllers, or just once in the Application controller

<pre>
	class ApplicationController < ActionController::Base
	  include Cj4r
	end
</pre>

## Examples ##

* Return all transactions that occurred yesterday, sorted by postingDate in descending order (defaults)

<pre>
	Cj4r::PublisherCommission.find(:all)
</pre>

* Return all transactions for the event date of January 19, 2007 sorted by commission amount in ascending order

<pre>
	Cj4r::PublisherCommission.find(:all, 
		:date => Time.local(2008, 'jan', 19), 
		:sort_by => 'commissionAmount', 
		:sort_order => 'asc')
</pre>


---
Copyright (c) 2008 Jose Fernandez, released under the MIT license<br/>
Written by Jose Fernandez, with support from iFundDrive.com


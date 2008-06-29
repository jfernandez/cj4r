# Cj4r #

Rails plugin for Commission Junction's Web Services SOAP API.

## Supported Services ##

* Daily Publisher Commission Report Service

* Real Time Commission Service 

* Product Catalog Search Service (v.2)

## Dependencies ##

* Ruby on Rails 2.1.0

* This plugin uses the soap4r gem.  Install it running this command: <pre>sudo gem install soap4r</pre>


## Installation ##

* From your Rails root run:

<pre>
./script/plugin install git://github.com/jfernandez/cj4r.git
</pre>
  
* Enter your Commission Junction developer key and website ID (optional) in the config yaml

<pre>
config/cj.yml
</pre>

* Include the Cj4r plugin in any of your Rails controllers, or just once in the Application controller

<pre>
class ApplicationController < ActionController::Base
  include Cj4r
end
</pre>

## Instructions ##

All Cj4r Service finders take the same parameters listed in the official [Commission Junction Web Services Help site](http://help.cj.com/en/web_services/web_services.htm).  The only difference is that Cj4r uses the snake_case version of the parameter names.  For example, if a parameter is called `manufacturerName`, you can set it using `manufacturer_name` instead.  Same goes for `advertiserIds`, use `advertiser_ids`.

The current Commission Junction service classes are:

* Cj4r::DailyPublisherCommission
* Cj4r::RealTimeCommission
* Cj4r::ProductCatalogSearch

Each service class has a `find` method that closely emulates ActiveRecord::Base#find and returns an array containing the web service results.  Each of these records are their own class and have the same attribute names (also camelCased) listed in the 'Per Record' part of each of their [Web Service documentation](http://help.cj.com/en/web_services/web_services.htm).

<pre>
	@records = DailyPublisherCommission(:all, :date => Time.local(2008, 'jan', 19))
	@records.each do |record|
	  @record.attributeName1
		# => 'foo'
		@record.attributeName2
		# => 'bar'
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
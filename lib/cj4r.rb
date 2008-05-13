require 'rubygems'
gem 'soap4r'

module Cj4r
  
  def self.included(base)
    include ClassMethods
    mattr_reader :developer_key
    
    @@developer_key = 
  end
  
end
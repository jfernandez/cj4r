require 'rubygems'
gem 'soap4r'
require 'services/daily_publisher_commission_service'

module Cj4r  
  class ConfigFileNotFoundError < StandardError; end
  class DeveloperKeyError < StandardError; end
  
  def self.included(base)    
    mattr_reader :developer_key
    
    begin
      config_path = RAILS_ROOT + "/config/cj_key.yml"
      @@developer_key = File.open(File.expand_path(config_path)) { |f| f.read }.chomp
      raise DeveloperKeyError.new("Developer key is empty: %s" % config_path) if @@developer_key.blank? 
    rescue Errno::ENOENT
      raise ConfigFileNotFoundError.new("Config file not found: %s" % config_path )
    end
  end
end
require 'rubygems'
gem 'soap4r'
require 'soap/rpc/driver'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsApiCjCom = "http://api.cj.com"
  NsTransactionLuceneServiceCjCom = "http://transaction.lucene.service.cj.com"
  NsTransactionServiceCjCom = "http://transaction.service.cj.com"
  NsTransactionDomainCjCom = "http://transaction.domain.cj.com"
end

require 'services/daily_publisher_commission_service'
require 'services/real_time_commission_service'

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
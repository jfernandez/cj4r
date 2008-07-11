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
  NsProductDomainCjCom = "http://product.domain.cj.com"
  NsProductServiceCjCom = "http://product.service.cj.com"
  NsAdvertiserServiceCjCom = "http://advertiser.service.cj.com"
  NsVoDomainCjCom = "http://vo.domain.cj.com"
  NsLinkServiceCjCom = "http://link.service.cj.com"
end

require 'cj4r/daily_publisher_commission_service'
require 'cj4r/real_time_commission_service'
require 'cj4r/advertiser_search_service'
require 'cj4r/product_catalog_search_service'
require 'cj4r/link_search_service'
require 'cj4r/support_service'

module Cj4r  
  class ConfigFileNotFoundError < StandardError; end
  
  def self.included(base)    
    mattr_reader :config
    
    begin
      config_path = RAILS_ROOT + "/config/cj.yml"
      @@config = YAML.load(ERB.new(File.read(config_path)).result).symbolize_keys
    rescue Errno::ENOENT
      raise ConfigFileNotFoundError.new("Cj4r config file not found: %s" % config_path )
    end
  end
end
require 'services/wsdl/publisher_commission_driver'

module Cj4r
  
  class PublisherCommission
    
    class << self # Class methods
      
      def find(*args)
        options = args.extract_options!
        
        case args.first
          when :first then find_initial(options)
          when :last then find_last(options)
          when :all then find_every(options)
        end
      end
      
    private

      def find_initial(options)
        find_every(options).first
      end

      def find_last(options)
        find_every(options).last
      end

      def find_every(options)
        params = FindPublisherCommissions.new(
          Cj4r.developer_key, 
          '01/19/2007', 
          'event', "", 
          "all", 
          "all", 
          "all", 
          "", 
          "", 
          "", 
          "commissionAmount", 
          "desc")
        service.findPublisherCommissions(params).out.publisherCommissions
      end

      def service
        PublisherCommissionServicePortType.new
      end
      
    end
    
  end
  
end

# #!/usr/bin/env ruby
# require 'publisher_commissionDriver.rb'
# 
# endpoint_url = ARGV.shift
# obj = PublisherCommissionServicePortType.new(endpoint_url)
# 
# # run ruby with -d to see SOAP wiredumps.
# obj.wiredump_dev = STDERR if $DEBUG
# 
# # SYNOPSIS
# #   findPublisherCommissions(parameters)
# #
# # ARGS
# #   parameters      FindPublisherCommissions - {http://api.cj.com}findPublisherCommissions
# #
# # RETURNS
# #   parameters      FindPublisherCommissionsResponse - {http://api.cj.com}findPublisherCommissionsResponse
# #
# parameters = nil
# puts obj.findPublisherCommissions(parameters)
# 
# # SYNOPSIS
# #   findPublisherCommissionDetails(parameters)
# #
# # ARGS
# #   parameters      FindPublisherCommissionDetails - {http://api.cj.com}findPublisherCommissionDetails
# #
# # RETURNS
# #   parameters      FindPublisherCommissionDetailsResponse - {http://api.cj.com}findPublisherCommissionDetailsResponse
# #
# parameters = nil
# puts obj.findPublisherCommissionDetails(parameters)
# 
# 

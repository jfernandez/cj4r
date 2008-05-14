require 'services/wsdl/publisher_commission_driver'

module Cj4r
  
  class PublisherCommission
    
    class << self # Class methods
      
      def find(*args)
        options = args.extract_options!
        options[:date] = options[:date].nil? ? 1.day.ago.strftime("%m/%d/%Y") : options[:date].strftime("%m/%d/%Y")
        options[:date_type] ||= 'event'
        options[:advertiser_ids] ||= 'all'
        options[:website_ids] ||= 'all'
        options[:action_status] ||= 'all'
        options[:action_types] ||= 'all'
        options[:ad_ids] ||= 'all'
        options[:countries] ||= 'all'
        options[:correction_status] ||= 'all'
        options[:sort] ||= 'sId'
        options[:order] ||= 'asc'
        
        case args.first
          when :first then find_initial(options)
          when :last  then find_last(options)
          when :all   then find_every(options)
          else             find_every(options)
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
          options[:date],
          options[:date_type],
          options[:advertiser_ids],
          options[:website_ids],
          options[:action_status],
          options[:action_types],
          options[:ad_ids],
          options[:countries],
          options[:correction_status],
          options[:sort],
          options[:order])
          
        service.findPublisherCommissions(params).out.publisherCommissions
      end

      def service
        PublisherCommissionServicePortType.new
      end
      
    end
    
  end
  
end
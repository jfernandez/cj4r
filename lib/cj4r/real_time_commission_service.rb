require 'cj4r/drivers/real_time_commission_driver'

module Cj4r
  class RealTimeCommission
    class << self # Class methods
      def find(*args)
        options = args.extract_options!
        options[:developer_key]     ||= Cj4r.config[:developer_key]
        options[:website_ids]       ||= ''
        options[:look_back_x_hours] ||= 4
        options[:advertiser_ids]    ||= ''
        options[:countries]         ||= ''
        options[:ad_ids]            ||= ''
        options[:include_details]   ||= 'False'
        options[:sort_by]           ||= 'Date'
        options[:sort_order]        ||= 'desc'
        
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
        params = RetrieveLatestTransactions.new(
          options[:developer_key], 
          options[:website_ids],
          options[:look_back_x_hours],
          options[:advertiser_ids],
          options[:countries],
          options[:ad_ids],
          options[:include_details],
          options[:sort_by],
          options[:sort_order])
          
        results = service.retrieveLatestTransactions(params).out.transactions
        results = [results] unless results.is_a?(Array)
      end

      def service
        @service ||= RealtimeCommissionServicePortType.new
      end
    end
  end
end
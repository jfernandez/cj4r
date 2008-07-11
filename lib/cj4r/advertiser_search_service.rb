require 'cj4r/drivers/advertiser_search_driver'

module Cj4r
  class AdvertiserSearch
    class << self # Class methods
      def find(*args)
        options = args.extract_options!
        options[:developer_key] ||= Cj4r.config[:developer_key]
        options[:token]         ||= ''
        options[:keywords]      ||= ''
        options[:category]      ||= ''
        options[:link_type]     ||= ''
        options[:link_size]     ||= ''
        options[:language]      ||= ''
        options[:targeted_area] ||= ''
        options[:sort_by]       ||= 'advertiserName'
        options[:sort_order]    ||= 'desc'
        options[:start_at]      ||= '0'
        options[:max_results]   ||= '10'
                
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
        params = Search.new(
          options[:developer_key],
          options[:token],
          options[:keywords],
          options[:category],
          options[:link_type],
          options[:link_size],
          options[:language],
          options[:targeted_area],
          options[:sort_by],
          options[:sort_order],
          options[:start_at],
          options[:max_results])
          
        service.search(params).out.advertisers
      end

      def service
        @service ||= AdvertiserSearchServiceV2PortType.new
      end
    end
  end
end
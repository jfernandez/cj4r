require 'cj4r/drivers/link_search_driver'

module Cj4r
  class LinkSearch
    class << self # Class methods
      def find(*args)
        options = args.extract_options!
        options[:developer_key]     ||= Cj4r.config[:developer_key]
        options[:token]             ||= ''
        options[:website_id]        ||= Cj4r.config[:website_id]
        options[:advertiser_ids]    ||= ''
        options[:keywords]          ||= ''
        options[:category]          ||= ''
        options[:link_type]         ||= ''
        options[:link_size]         ||= ''
        options[:language]          ||= ''
        options[:serviceable_area]  ||= ''
        options[:promotion_type]    ||= ''
        options[:start_date]          = options[:start_date].nil? ? '' : options[:start_date].strftime("%m/%d/%Y") 
        options[:end_date]            = options[:end_date].nil? ? '' : options[:end_date].strftime("%m/%d/%Y")
        options[:sort_by]           ||= ''
        options[:sort_order]        ||= 'desc'
        options[:start_at]          ||= '0'
        options[:max_results]       ||= '10'
                
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
        params = SearchLinks.new(
          options[:developer_key],
          options[:token],
          options[:website_id],
          options[:advertiser_ids],
          options[:keywords],
          options[:category],
          options[:link_type],
          options[:link_size],
          options[:language],
          options[:serviceable_area],
          options[:promotion_type],
          options[:start_date],
          options[:end_date],
          options[:sort_by],
          options[:sort_order],
          options[:start_at],
          options[:max_results])
          
        results = service.searchLinks(params).out.links
        results = [results] unless results.is_a?(Array)
      end

      def service
        @service ||= LinkSearchServiceV2PortType.new
      end
    end
  end
end
require 'services/wsdl/product_catalog_search_driver'

module Cj4r
  class ProductCatalogSearch
    class << self # Class methods
      def find(*args)
        options = args.extract_options!
        options[:website_id]        ||= ''
        options[:advertiser_ids]    ||= ''
        options[:keywords]          ||= ''
        options[:serviceable_area]  ||= ''
        options[:isbn]              ||= ''
        options[:upc]               ||= ''
        options[:manufacturer_name] ||= ''
        options[:manufacturer_sku]  ||= ''
        options[:advertiser_sku]    ||= ''
        options[:low_price]         ||= ''
        options[:high_price]        ||= ''
        options[:low_sale_price]    ||= ''
        options[:high_sale_price]   ||= ''
        options[:currency]          ||= ''
        options[:sort_by]           ||= ''
        options[:sort_order]        ||= 'asc'
        options[:start_at]          ||= '0'
        options[:max_results]       ||= '50'
        
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
          Cj4r.developer_key, 
          options[:website_id],
          options[:advertiser_ids],
          options[:keywords],
          options[:serviceable_area],
          options[:isbn],
          options[:upc],
          options[:manufacturer_name],
          options[:manufacturer_sku],
          options[:advertiser_sku],
          options[:low_price],
          options[:high_price],
          options[:low_sale_price],
          options[:high_sale_price],
          options[:currency],
          options[:sort_by],
          options[:sort_order],
          options[:start_at],
          options[:max_results])
          
        service.search(params).out.products
      end

      def service
        @service ||= ProductSearchServiceV2PortType.new
      end
    end
  end
end
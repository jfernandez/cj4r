require 'cj4r/drivers/support_driver'

module Cj4r
  class Support
    class << self # Class methods
      def categories(*args)
        options = args.extract_options!
        options[:developer_key] ||= Cj4r.config[:developer_key]
        options[:locale]        ||= 'en'
        
        params = GetCategories.new(
          options[:developer_key],
          options[:locale])
        
        service.getCategories(params).out
      end
      
      def languages(*args)
        options = args.extract_options!
        options[:developer_key] ||= Cj4r.config[:developer_key]
        
        params = GetLanguages.new(options[:developer_key])
        service.getLanguages(params).out
      end
      
      def countries(*args)
        options = args.extract_options!
        options[:developer_key] ||= Cj4r.config[:developer_key]
        options[:locale]        ||= 'en'
        
        params = GetCountries.new(
          options[:developer_key],
          options[:locale])
        
        service.getCountries(params).out
      end
      
      def link_types(*args)
        options = args.extract_options!
        options[:developer_key] ||= Cj4r.config[:developer_key]
        
        params = GetLinkTypes.new(options[:developer_key])
        service.getLinkTypes(params).out
      end
      
      def link_sizes(*args)
        options = args.extract_options!
        options[:developer_key] ||= Cj4r.config[:developer_key]
        
        params = GetLinkSizes.new(options[:developer_key])
        service.getLinkSizes(params).out
      end
      
    private

      def service
        @service ||= SupportServiceV2PortType.new
      end
    end
  end
end
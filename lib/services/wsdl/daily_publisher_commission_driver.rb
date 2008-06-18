require 'services/wsdl/daily_publisher_commission.rb'
require 'services/wsdl/daily_publisher_commission_mapping_registry.rb'

class PublisherCommissionServicePortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://pubcommission.api.cj.com/services/publisherCommissionService"

  Methods = [
    [ "",
      "findPublisherCommissions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.cj.com", "findPublisherCommissions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.cj.com", "findPublisherCommissionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "findPublisherCommissionDetails",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.cj.com", "findPublisherCommissionDetails"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.cj.com", "findPublisherCommissionDetailsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end
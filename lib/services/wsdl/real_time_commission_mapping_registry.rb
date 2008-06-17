require 'services/wsdl/real_time_commission.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsApiCjCom = "http://api.cj.com"
  NsTransactionLuceneServiceCjCom = "http://transaction.lucene.service.cj.com"
  NsTransactionServiceCjCom = "http://transaction.service.cj.com"

  EncodedRegistry.register(
    :class => RealtimeCommissionResponse,
    :schema_type => XSD::QName.new(NsTransactionServiceCjCom, "RealtimeCommissionResponse"),
    :schema_element => [
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["transactions", "ArrayOfRealTimeCommissionData", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfRealTimeCommissionData,
    :schema_type => XSD::QName.new(NsTransactionLuceneServiceCjCom, "ArrayOfRealTimeCommissionData"),
    :schema_element => [
      ["realTimeCommissionData", ["RealTimeCommissionData[]", XSD::QName.new(NsTransactionLuceneServiceCjCom, "RealTimeCommissionData")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RealTimeCommissionData,
    :schema_type => XSD::QName.new(NsTransactionLuceneServiceCjCom, "RealTimeCommissionData"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["commissionAmount", "SOAP::SOAPDouble", [0, 1]],
      ["country", "SOAP::SOAPString", [0, 1]],
      ["details", "ArrayOfDetail", [0, 1]],
      ["eventDate", "SOAP::SOAPDateTime", [0, 1]],
      ["saleAmount", "SOAP::SOAPDouble", [0, 1]],
      ["sid", "SOAP::SOAPString", [0, 1]],
      ["websiteId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDetail,
    :schema_type => XSD::QName.new(NsTransactionLuceneServiceCjCom, "ArrayOfDetail"),
    :schema_element => [
      ["detail", ["Detail[]", XSD::QName.new(NsTransactionLuceneServiceCjCom, "Detail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Detail,
    :schema_type => XSD::QName.new(NsTransactionLuceneServiceCjCom, "Detail"),
    :schema_element => [
      ["amount", "SOAP::SOAPFloat", [0, 1]],
      ["commission", "SOAP::SOAPFloat", [0, 1]],
      ["quantity", "SOAP::SOAPInt", [0, 1]],
      ["sku", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RealtimeCommissionResponse,
    :schema_type => XSD::QName.new(NsTransactionServiceCjCom, "RealtimeCommissionResponse"),
    :schema_element => [
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["transactions", "ArrayOfRealTimeCommissionData", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfRealTimeCommissionData,
    :schema_type => XSD::QName.new(NsTransactionLuceneServiceCjCom, "ArrayOfRealTimeCommissionData"),
    :schema_element => [
      ["realTimeCommissionData", ["RealTimeCommissionData[]", XSD::QName.new(NsTransactionLuceneServiceCjCom, "RealTimeCommissionData")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RealTimeCommissionData,
    :schema_type => XSD::QName.new(NsTransactionLuceneServiceCjCom, "RealTimeCommissionData"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["commissionAmount", "SOAP::SOAPDouble", [0, 1]],
      ["country", "SOAP::SOAPString", [0, 1]],
      ["details", "ArrayOfDetail", [0, 1]],
      ["eventDate", "SOAP::SOAPDateTime", [0, 1]],
      ["saleAmount", "SOAP::SOAPDouble", [0, 1]],
      ["sid", "SOAP::SOAPString", [0, 1]],
      ["websiteId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDetail,
    :schema_type => XSD::QName.new(NsTransactionLuceneServiceCjCom, "ArrayOfDetail"),
    :schema_element => [
      ["detail", ["Detail[]", XSD::QName.new(NsTransactionLuceneServiceCjCom, "Detail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Detail,
    :schema_type => XSD::QName.new(NsTransactionLuceneServiceCjCom, "Detail"),
    :schema_element => [
      ["amount", "SOAP::SOAPFloat", [0, 1]],
      ["commission", "SOAP::SOAPFloat", [0, 1]],
      ["quantity", "SOAP::SOAPInt", [0, 1]],
      ["sku", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveLatestTransactions,
    :schema_name => XSD::QName.new(NsApiCjCom, "retrieveLatestTransactions"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"],
      ["websiteIds", "SOAP::SOAPString"],
      ["lookBackXHours", "SOAP::SOAPString"],
      ["advertiserIds", "SOAP::SOAPString"],
      ["countries", "SOAP::SOAPString"],
      ["adIds", "SOAP::SOAPString"],
      ["includeDetails", "SOAP::SOAPString"],
      ["sortBy", "SOAP::SOAPString"],
      ["sortOrder", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveLatestTransactionsResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "retrieveLatestTransactionsResponse"),
    :schema_element => [
      ["out", "RealtimeCommissionResponse"]
    ]
  )
end

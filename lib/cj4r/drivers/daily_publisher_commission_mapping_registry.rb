require 'cj4r/drivers/daily_publisher_commission.rb'

module DefaultMappingRegistry

  EncodedRegistry.register(
    :class => PublisherCommissionResponse,
    :schema_type => XSD::QName.new(NsTransactionServiceCjCom, "PublisherCommissionResponse"),
    :schema_element => [
      ["publisherCommissions", "ArrayOfPublisherCommission", [0, 1]],
      ["sortBy", "SOAP::SOAPString", [0, 1]],
      ["totalResults", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PublisherCommissionDetailsResponse,
    :schema_type => XSD::QName.new(NsTransactionServiceCjCom, "PublisherCommissionDetailsResponse"),
    :schema_element => [
      ["originalActionDetails", "ArrayOfOriginalActionDetail", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfOriginalActionDetail,
    :schema_type => XSD::QName.new(NsTransactionServiceCjCom, "ArrayOfOriginalActionDetail"),
    :schema_element => [
      ["originalActionDetail", ["OriginalActionDetail[]", XSD::QName.new(NsTransactionServiceCjCom, "OriginalActionDetail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => OriginalActionDetail,
    :schema_type => XSD::QName.new(NsTransactionServiceCjCom, "OriginalActionDetail"),
    :schema_element => [
      ["transactionDetails", "ArrayOfTransactionDetail", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfPublisherCommission,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "ArrayOfPublisherCommission"),
    :schema_element => [
      ["publisherCommission", ["PublisherCommission[]", XSD::QName.new(NsTransactionDomainCjCom, "PublisherCommission")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PublisherCommission,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "PublisherCommission"),
    :schema_element => [
      ["actionStatus", "SOAP::SOAPString", [0, 1]],
      ["actionType", "SOAP::SOAPString", [0, 1]],
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["commissionAmount", "SOAP::SOAPDecimal", [0, 1]],
      ["country", "SOAP::SOAPString", [0, 1]],
      ["eventDate", "SOAP::SOAPDateTime", [0, 1]],
      ["original", "SOAP::SOAPBoolean", [0, 1]],
      ["originalActionId", "SOAP::SOAPLong", [0, 1]],
      ["postingDate", "SOAP::SOAPDateTime", [0, 1]],
      ["sId", "SOAP::SOAPString", [0, 1]],
      ["saleAmount", "SOAP::SOAPDecimal", [0, 1]],
      ["websiteId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfTransactionDetail,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "ArrayOfTransactionDetail"),
    :schema_element => [
      ["transactionDetail", ["TransactionDetail[]", XSD::QName.new(NsTransactionDomainCjCom, "TransactionDetail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => TransactionDetail,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "TransactionDetail"),
    :schema_element => [
      ["itemDetails", "ArrayOfItemDetail", [0, 1]],
      ["publisherCommission", "PublisherCommission", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfItemDetail,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "ArrayOfItemDetail"),
    :schema_element => [
      ["itemDetail", ["ItemDetail[]", XSD::QName.new(NsTransactionDomainCjCom, "ItemDetail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemDetail,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "ItemDetail"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["postingDate", "SOAP::SOAPDateTime", [0, 1]],
      ["quantity", "SOAP::SOAPInt", [0, 1]],
      ["saleAmount", "SOAP::SOAPDecimal", [0, 1]],
      ["sku", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PublisherCommissionResponse,
    :schema_type => XSD::QName.new(NsTransactionServiceCjCom, "PublisherCommissionResponse"),
    :schema_element => [
      ["publisherCommissions", "ArrayOfPublisherCommission", [0, 1]],
      ["sortBy", "SOAP::SOAPString", [0, 1]],
      ["totalResults", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PublisherCommissionDetailsResponse,
    :schema_type => XSD::QName.new(NsTransactionServiceCjCom, "PublisherCommissionDetailsResponse"),
    :schema_element => [
      ["originalActionDetails", "ArrayOfOriginalActionDetail", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfOriginalActionDetail,
    :schema_type => XSD::QName.new(NsTransactionServiceCjCom, "ArrayOfOriginalActionDetail"),
    :schema_element => [
      ["originalActionDetail", ["OriginalActionDetail[]", XSD::QName.new(NsTransactionServiceCjCom, "OriginalActionDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => OriginalActionDetail,
    :schema_type => XSD::QName.new(NsTransactionServiceCjCom, "OriginalActionDetail"),
    :schema_element => [
      ["transactionDetails", "ArrayOfTransactionDetail", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfPublisherCommission,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "ArrayOfPublisherCommission"),
    :schema_element => [
      ["publisherCommission", ["PublisherCommission[]", XSD::QName.new(NsTransactionDomainCjCom, "PublisherCommission")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PublisherCommission,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "PublisherCommission"),
    :schema_element => [
      ["actionStatus", "SOAP::SOAPString", [0, 1]],
      ["actionType", "SOAP::SOAPString", [0, 1]],
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["commissionAmount", "SOAP::SOAPDecimal", [0, 1]],
      ["country", "SOAP::SOAPString", [0, 1]],
      ["eventDate", "SOAP::SOAPDateTime", [0, 1]],
      ["original", "SOAP::SOAPBoolean", [0, 1]],
      ["originalActionId", "SOAP::SOAPLong", [0, 1]],
      ["postingDate", "SOAP::SOAPDateTime", [0, 1]],
      ["sId", "SOAP::SOAPString", [0, 1]],
      ["saleAmount", "SOAP::SOAPDecimal", [0, 1]],
      ["websiteId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTransactionDetail,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "ArrayOfTransactionDetail"),
    :schema_element => [
      ["transactionDetail", ["TransactionDetail[]", XSD::QName.new(NsTransactionDomainCjCom, "TransactionDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TransactionDetail,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "TransactionDetail"),
    :schema_element => [
      ["itemDetails", "ArrayOfItemDetail", [0, 1]],
      ["publisherCommission", "PublisherCommission", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfItemDetail,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "ArrayOfItemDetail"),
    :schema_element => [
      ["itemDetail", ["ItemDetail[]", XSD::QName.new(NsTransactionDomainCjCom, "ItemDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemDetail,
    :schema_type => XSD::QName.new(NsTransactionDomainCjCom, "ItemDetail"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["postingDate", "SOAP::SOAPDateTime", [0, 1]],
      ["quantity", "SOAP::SOAPInt", [0, 1]],
      ["saleAmount", "SOAP::SOAPDecimal", [0, 1]],
      ["sku", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPublisherCommissions,
    :schema_name => XSD::QName.new(NsApiCjCom, "findPublisherCommissions"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"],
      ["date", "SOAP::SOAPString"],
      ["dateType", "SOAP::SOAPString"],
      ["advertiserIds", "SOAP::SOAPString"],
      ["websiteIds", "SOAP::SOAPString"],
      ["actionStatus", "SOAP::SOAPString"],
      ["actionTypes", "SOAP::SOAPString"],
      ["adIds", "SOAP::SOAPString"],
      ["countries", "SOAP::SOAPString"],
      ["correctionStatus", "SOAP::SOAPString"],
      ["sortBy", "SOAP::SOAPString"],
      ["sortOrder", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindPublisherCommissionsResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "findPublisherCommissionsResponse"),
    :schema_element => [
      ["out", "PublisherCommissionResponse"]
    ]
  )

  LiteralRegistry.register(
    :class => FindPublisherCommissionDetails,
    :schema_name => XSD::QName.new(NsApiCjCom, "findPublisherCommissionDetails"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"],
      ["originalActionIds", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindPublisherCommissionDetailsResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "findPublisherCommissionDetailsResponse"),
    :schema_element => [
      ["out", "PublisherCommissionDetailsResponse"]
    ]
  )
end
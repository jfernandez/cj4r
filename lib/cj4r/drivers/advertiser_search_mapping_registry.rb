require 'cj4r/drivers/advertiser_search.rb'

module DefaultMappingRegistry

  EncodedRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsApiCjCom, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdvertiserSearchResponse,
    :schema_type => XSD::QName.new(NsAdvertiserServiceCjCom, "AdvertiserSearchResponse"),
    :schema_element => [
      ["advertisers", "ArrayOfAdvertiserData", [0, 1]],
      ["currentPage", "SOAP::SOAPInt", [0, 1]],
      ["resultsPerpage", "SOAP::SOAPInt", [0, 1]],
      ["totalResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdvertiserData,
    :schema_type => XSD::QName.new(NsVoDomainCjCom, "ArrayOfAdvertiserData"),
    :schema_element => [
      ["advertiserData", ["AdvertiserData[]", XSD::QName.new(NsVoDomainCjCom, "AdvertiserData")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdvertiserData,
    :schema_type => XSD::QName.new(NsVoDomainCjCom, "AdvertiserData"),
    :schema_element => [
      ["cid", "SOAP::SOAPString", [0, 1]],
      ["clickCommission", "SOAP::SOAPString", [0, 1]],
      ["leadCommission", "SOAP::SOAPString", [0, 1]],
      ["linkTypes", "ArrayOfString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["networkRank", "SOAP::SOAPString", [0, 1]],
      ["performanceIncentives", "SOAP::SOAPString", [0, 1]],
      ["primaryCategoryId", "SOAP::SOAPString", [0, 1]],
      ["primaryCategoryName", "ArrayOfString", [0, 1]],
      ["relationshipStatus", "SOAP::SOAPString", [0, 1]],
      ["saleCommission", "SOAP::SOAPString", [0, 1]],
      ["sevenDayEPC", "SOAP::SOAPString", [0, 1]],
      ["threeMonthEPC", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsApiCjCom, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdvertiserSearchResponse,
    :schema_type => XSD::QName.new(NsAdvertiserServiceCjCom, "AdvertiserSearchResponse"),
    :schema_element => [
      ["advertisers", "ArrayOfAdvertiserData", [0, 1]],
      ["currentPage", "SOAP::SOAPInt", [0, 1]],
      ["resultsPerpage", "SOAP::SOAPInt", [0, 1]],
      ["totalResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdvertiserData,
    :schema_type => XSD::QName.new(NsVoDomainCjCom, "ArrayOfAdvertiserData"),
    :schema_element => [
      ["advertiserData", ["AdvertiserData[]", XSD::QName.new(NsVoDomainCjCom, "AdvertiserData")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdvertiserData,
    :schema_type => XSD::QName.new(NsVoDomainCjCom, "AdvertiserData"),
    :schema_element => [
      ["cid", "SOAP::SOAPString", [0, 1]],
      ["clickCommission", "SOAP::SOAPString", [0, 1]],
      ["leadCommission", "SOAP::SOAPString", [0, 1]],
      ["linkTypes", "ArrayOfString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["networkRank", "SOAP::SOAPString", [0, 1]],
      ["performanceIncentives", "SOAP::SOAPString", [0, 1]],
      ["primaryCategoryId", "SOAP::SOAPString", [0, 1]],
      ["primaryCategoryName", "ArrayOfString", [0, 1]],
      ["relationshipStatus", "SOAP::SOAPString", [0, 1]],
      ["saleCommission", "SOAP::SOAPString", [0, 1]],
      ["sevenDayEPC", "SOAP::SOAPString", [0, 1]],
      ["threeMonthEPC", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdvertiserSearchParams,
    :schema_name => XSD::QName.new(NsApiCjCom, "search"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"],
      ["token", "SOAP::SOAPString"],
      ["keywords", "SOAP::SOAPString"],
      ["category", "SOAP::SOAPString"],
      ["linkType", "SOAP::SOAPString"],
      ["linkSize", "SOAP::SOAPString"],
      ["language", "SOAP::SOAPString"],
      ["servicaeableArea", "SOAP::SOAPString"],
      ["sortBy", "SOAP::SOAPString"],
      ["sortOrder", "SOAP::SOAPString"],
      ["startAt", "SOAP::SOAPInt"],
      ["maxResults", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "searchResponse"),
    :schema_element => [
      ["out", "AdvertiserSearchResponse"]
    ]
  )
end

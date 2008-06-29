require 'cj4r/drivers/link_search.rb'

module DefaultMappingRegistry

  EncodedRegistry.register(
    :class => LinkDetailResponse,
    :schema_type => XSD::QName.new(NsLinkServiceCjCom, "LinkDetailResponse"),
    :schema_element => [
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["links", "ArrayOfLinkDetail", [0, 1]],
      ["offset", "SOAP::SOAPInt", [0, 1]],
      ["totalResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfLinkDetail,
    :schema_type => XSD::QName.new(NsLinkServiceCjCom, "ArrayOfLinkDetail"),
    :schema_element => [
      ["linkDetail", ["LinkDetail[]", XSD::QName.new(NsLinkServiceCjCom, "LinkDetail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LinkDetail,
    :schema_type => XSD::QName.new(NsLinkServiceCjCom, "LinkDetail"),
    :schema_element => [
      ["advertiserId", "SOAP::SOAPString", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["category", "SOAP::SOAPString", [0, 1]],
      ["clickCommission", "SOAP::SOAPString", [0, 1]],
      ["creativeHeight", "SOAP::SOAPString", [0, 1]],
      ["creativeWidth", "SOAP::SOAPString", [0, 1]],
      ["language", "SOAP::SOAPString", [0, 1]],
      ["leadCommission", "SOAP::SOAPString", [0, 1]],
      ["linkCodeHTML", "SOAP::SOAPString", [0, 1]],
      ["linkCodeJavascript", "SOAP::SOAPString", [0, 1]],
      ["linkDescription", "SOAP::SOAPString", [0, 1]],
      ["linkDestination", "SOAP::SOAPString", [0, 1]],
      ["linkId", "SOAP::SOAPString", [0, 1]],
      ["linkName", "SOAP::SOAPString", [0, 1]],
      ["linkType", "SOAP::SOAPString", [0, 1]],
      ["networkRank", "SOAP::SOAPString", [0, 1]],
      ["performanceIncentives", "SOAP::SOAPString", [0, 1]],
      ["promotionEndDate", "SOAP::SOAPString", [0, 1]],
      ["promotionStartDate", "SOAP::SOAPString", [0, 1]],
      ["promotionType", "SOAP::SOAPString", [0, 1]],
      ["relationshipStatus", "SOAP::SOAPString", [0, 1]],
      ["saleCommission", "SOAP::SOAPString", [0, 1]],
      ["sevenDayEPC", "SOAP::SOAPString", [0, 1]],
      ["threeMonthEPC", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LinkDetailResponse,
    :schema_type => XSD::QName.new(NsLinkServiceCjCom, "LinkDetailResponse"),
    :schema_element => [
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["links", "ArrayOfLinkDetail", [0, 1]],
      ["offset", "SOAP::SOAPInt", [0, 1]],
      ["totalResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfLinkDetail,
    :schema_type => XSD::QName.new(NsLinkServiceCjCom, "ArrayOfLinkDetail"),
    :schema_element => [
      ["linkDetail", ["LinkDetail[]", XSD::QName.new(NsLinkServiceCjCom, "LinkDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LinkDetail,
    :schema_type => XSD::QName.new(NsLinkServiceCjCom, "LinkDetail"),
    :schema_element => [
      ["advertiserId", "SOAP::SOAPString", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["category", "SOAP::SOAPString", [0, 1]],
      ["clickCommission", "SOAP::SOAPString", [0, 1]],
      ["creativeHeight", "SOAP::SOAPString", [0, 1]],
      ["creativeWidth", "SOAP::SOAPString", [0, 1]],
      ["language", "SOAP::SOAPString", [0, 1]],
      ["leadCommission", "SOAP::SOAPString", [0, 1]],
      ["linkCodeHTML", "SOAP::SOAPString", [0, 1]],
      ["linkCodeJavascript", "SOAP::SOAPString", [0, 1]],
      ["linkDescription", "SOAP::SOAPString", [0, 1]],
      ["linkDestination", "SOAP::SOAPString", [0, 1]],
      ["linkId", "SOAP::SOAPString", [0, 1]],
      ["linkName", "SOAP::SOAPString", [0, 1]],
      ["linkType", "SOAP::SOAPString", [0, 1]],
      ["networkRank", "SOAP::SOAPString", [0, 1]],
      ["performanceIncentives", "SOAP::SOAPString", [0, 1]],
      ["promotionEndDate", "SOAP::SOAPString", [0, 1]],
      ["promotionStartDate", "SOAP::SOAPString", [0, 1]],
      ["promotionType", "SOAP::SOAPString", [0, 1]],
      ["relationshipStatus", "SOAP::SOAPString", [0, 1]],
      ["saleCommission", "SOAP::SOAPString", [0, 1]],
      ["sevenDayEPC", "SOAP::SOAPString", [0, 1]],
      ["threeMonthEPC", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchLinks,
    :schema_name => XSD::QName.new(NsApiCjCom, "searchLinks"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"],
      ["token", "SOAP::SOAPString"],
      ["websiteId", "SOAP::SOAPString"],
      ["advertiserIds", "SOAP::SOAPString"],
      ["keywords", "SOAP::SOAPString"],
      ["category", "SOAP::SOAPString"],
      ["linkType", "SOAP::SOAPString"],
      ["linkSize", "SOAP::SOAPString"],
      ["language", "SOAP::SOAPString"],
      ["serviceableArea", "SOAP::SOAPString"],
      ["promotionType", "SOAP::SOAPString"],
      ["promotionStartDate", "SOAP::SOAPString"],
      ["promotionEndDate", "SOAP::SOAPString"],
      ["sortBy", "SOAP::SOAPString"],
      ["sortOrder", "SOAP::SOAPString"],
      ["startAt", "SOAP::SOAPString"],
      ["maxResults", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchLinksResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "searchLinksResponse"),
    :schema_element => [
      ["out", "LinkDetailResponse"]
    ]
  )
end

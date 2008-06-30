require 'cj4r/drivers/support.rb'

module DefaultMappingRegistry

  EncodedRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsApiCjCom, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
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
    :class => GetLinkSizes,
    :schema_name => XSD::QName.new(NsApiCjCom, "getLinkSizes"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetLinkSizesResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "getLinkSizesResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCountries,
    :schema_name => XSD::QName.new(NsApiCjCom, "getCountries"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"],
      ["locale", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCountriesResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "getCountriesResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCategories,
    :schema_name => XSD::QName.new(NsApiCjCom, "getCategories"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"],
      ["locale", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCategoriesResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "getCategoriesResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetLinkTypes,
    :schema_name => XSD::QName.new(NsApiCjCom, "getLinkTypes"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetLinkTypesResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "getLinkTypesResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetLanguages,
    :schema_name => XSD::QName.new(NsApiCjCom, "getLanguages"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetLanguagesResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "getLanguagesResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )
end

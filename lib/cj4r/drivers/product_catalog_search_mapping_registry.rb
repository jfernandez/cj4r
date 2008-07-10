require 'cj4r/drivers/product_catalog_search.rb'

module DefaultMappingRegistry

  EncodedRegistry.register(
    :class => ProductResponse,
    :schema_type => XSD::QName.new(NsProductServiceCjCom, "ProductResponse"),
    :schema_element => [
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["offset", "SOAP::SOAPInt", [0, 1]],
      ["products", "ArrayOfProduct", [0, 1]],
      ["totalResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfProduct,
    :schema_type => XSD::QName.new(NsProductDomainCjCom, "ArrayOfProduct"),
    :schema_element => [
      ["product", ["Product[]", XSD::QName.new(NsProductDomainCjCom, "Product")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Product,
    :schema_type => XSD::QName.new(NsProductDomainCjCom, "Product"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["buyUrl", "SOAP::SOAPString", [0, 1]],
      ["catalogId", "SOAP::SOAPString", [0, 1]],
      ["currency", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["imageUrl", "SOAP::SOAPString", [0, 1]],
      ["inStock", "SOAP::SOAPString", [0, 1]],
      ["isbn", "SOAP::SOAPString", [0, 1]],
      ["manufacturerName", "SOAP::SOAPString", [0, 1]],
      ["manufacturerSku", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["price", "SOAP::SOAPDouble", [0, 1]],
      ["retailPrice", "SOAP::SOAPDouble", [0, 1]],
      ["salePrice", "SOAP::SOAPDouble", [0, 1]],
      ["sku", "SOAP::SOAPString", [0, 1]],
      ["upc", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProductResponse,
    :schema_type => XSD::QName.new(NsProductServiceCjCom, "ProductResponse"),
    :schema_element => [
      ["count", "SOAP::SOAPInt", [0, 1]],
      ["offset", "SOAP::SOAPInt", [0, 1]],
      ["products", "ArrayOfProduct", [0, 1]],
      ["totalResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfProduct,
    :schema_type => XSD::QName.new(NsProductDomainCjCom, "ArrayOfProduct"),
    :schema_element => [
      ["product", ["Product[]", XSD::QName.new(NsProductDomainCjCom, "Product")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Product,
    :schema_type => XSD::QName.new(NsProductDomainCjCom, "Product"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserId", "SOAP::SOAPLong", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["buyUrl", "SOAP::SOAPString", [0, 1]],
      ["catalogId", "SOAP::SOAPString", [0, 1]],
      ["currency", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["imageUrl", "SOAP::SOAPString", [0, 1]],
      ["inStock", "SOAP::SOAPString", [0, 1]],
      ["isbn", "SOAP::SOAPString", [0, 1]],
      ["manufacturerName", "SOAP::SOAPString", [0, 1]],
      ["manufacturerSku", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["price", "SOAP::SOAPDouble", [0, 1]],
      ["retailPrice", "SOAP::SOAPDouble", [0, 1]],
      ["salePrice", "SOAP::SOAPDouble", [0, 1]],
      ["sku", "SOAP::SOAPString", [0, 1]],
      ["upc", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProductSearchParams,
    :schema_name => XSD::QName.new(NsApiCjCom, "search"),
    :schema_element => [
      ["developerKey", "SOAP::SOAPString"],
      ["websiteId", "SOAP::SOAPString"],
      ["advertiserIds", "SOAP::SOAPString"],
      ["keywords", "SOAP::SOAPString"],
      ["serviceableArea", "SOAP::SOAPString"],
      ["upc", "SOAP::SOAPString"],
      ["manufacturerName", "SOAP::SOAPString"],
      ["manufacturerSku", "SOAP::SOAPString"],
      ["advertiserSku", "SOAP::SOAPString"],
      ["lowPrice", "SOAP::SOAPString"],
      ["highPrice", "SOAP::SOAPString"],
      ["lowSalePrice", "SOAP::SOAPString"],
      ["highSalePrice", "SOAP::SOAPString"],
      ["currency", "SOAP::SOAPString"],
      ["isbn", "SOAP::SOAPString"],
      ["sortBy", "SOAP::SOAPString"],
      ["sortOrder", "SOAP::SOAPString"],
      ["startAt", "SOAP::SOAPString"],
      ["maxResults", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResponse,
    :schema_name => XSD::QName.new(NsApiCjCom, "searchResponse"),
    :schema_element => [
      ["out", "ProductResponse"]
    ]
  )
end

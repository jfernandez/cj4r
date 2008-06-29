require 'xsd/qname'

# {http://product.service.cj.com}ProductResponse
#   count - SOAP::SOAPInt
#   offset - SOAP::SOAPInt
#   products - ArrayOfProduct
#   totalResults - SOAP::SOAPInt
class ProductResponse
  attr_accessor :count
  attr_accessor :offset
  attr_accessor :products
  attr_accessor :totalResults

  def initialize(count = nil, offset = nil, products = nil, totalResults = nil)
    @count = count
    @offset = offset
    @products = products
    @totalResults = totalResults
  end
end

# {http://product.domain.cj.com}ArrayOfProduct
class ArrayOfProduct < ::Array
end

# {http://product.domain.cj.com}Product
#   adId - SOAP::SOAPLong
#   advertiserId - SOAP::SOAPLong
#   advertiserName - SOAP::SOAPString
#   buyUrl - SOAP::SOAPString
#   catalogId - SOAP::SOAPString
#   currency - SOAP::SOAPString
#   description - SOAP::SOAPString
#   imageUrl - SOAP::SOAPString
#   inStock - SOAP::SOAPString
#   isbn - SOAP::SOAPString
#   manufacturerName - SOAP::SOAPString
#   manufacturerSku - SOAP::SOAPString
#   name - SOAP::SOAPString
#   price - SOAP::SOAPDouble
#   retailPrice - SOAP::SOAPDouble
#   salePrice - SOAP::SOAPDouble
#   sku - SOAP::SOAPString
#   upc - SOAP::SOAPString
class Product
  attr_accessor :adId
  attr_accessor :advertiserId
  attr_accessor :advertiserName
  attr_accessor :buyUrl
  attr_accessor :catalogId
  attr_accessor :currency
  attr_accessor :description
  attr_accessor :imageUrl
  attr_accessor :inStock
  attr_accessor :isbn
  attr_accessor :manufacturerName
  attr_accessor :manufacturerSku
  attr_accessor :name
  attr_accessor :price
  attr_accessor :retailPrice
  attr_accessor :salePrice
  attr_accessor :sku
  attr_accessor :upc

  def initialize(adId = nil, advertiserId = nil, advertiserName = nil, buyUrl = nil, catalogId = nil, currency = nil, description = nil, imageUrl = nil, inStock = nil, isbn = nil, manufacturerName = nil, manufacturerSku = nil, name = nil, price = nil, retailPrice = nil, salePrice = nil, sku = nil, upc = nil)
    @adId = adId
    @advertiserId = advertiserId
    @advertiserName = advertiserName
    @buyUrl = buyUrl
    @catalogId = catalogId
    @currency = currency
    @description = description
    @imageUrl = imageUrl
    @inStock = inStock
    @isbn = isbn
    @manufacturerName = manufacturerName
    @manufacturerSku = manufacturerSku
    @name = name
    @price = price
    @retailPrice = retailPrice
    @salePrice = salePrice
    @sku = sku
    @upc = upc
  end
end

# {http://api.cj.com}search
#   developerKey - SOAP::SOAPString
#   websiteId - SOAP::SOAPString
#   advertiserIds - SOAP::SOAPString
#   keywords - SOAP::SOAPString
#   serviceableArea - SOAP::SOAPString
#   upc - SOAP::SOAPString
#   manufacturerName - SOAP::SOAPString
#   manufacturerSku - SOAP::SOAPString
#   advertiserSku - SOAP::SOAPString
#   lowPrice - SOAP::SOAPString
#   highPrice - SOAP::SOAPString
#   lowSalePrice - SOAP::SOAPString
#   highSalePrice - SOAP::SOAPString
#   currency - SOAP::SOAPString
#   isbn - SOAP::SOAPString
#   sortBy - SOAP::SOAPString
#   sortOrder - SOAP::SOAPString
#   startAt - SOAP::SOAPString
#   maxResults - SOAP::SOAPString
class Search
  attr_accessor :developerKey
  attr_accessor :websiteId
  attr_accessor :advertiserIds
  attr_accessor :keywords
  attr_accessor :serviceableArea
  attr_accessor :upc
  attr_accessor :manufacturerName
  attr_accessor :manufacturerSku
  attr_accessor :advertiserSku
  attr_accessor :lowPrice
  attr_accessor :highPrice
  attr_accessor :lowSalePrice
  attr_accessor :highSalePrice
  attr_accessor :currency
  attr_accessor :isbn
  attr_accessor :sortBy
  attr_accessor :sortOrder
  attr_accessor :startAt
  attr_accessor :maxResults

  def initialize(developerKey = nil, websiteId = nil, advertiserIds = nil, keywords = nil, serviceableArea = nil, upc = nil, manufacturerName = nil, manufacturerSku = nil, advertiserSku = nil, lowPrice = nil, highPrice = nil, lowSalePrice = nil, highSalePrice = nil, currency = nil, isbn = nil, sortBy = nil, sortOrder = nil, startAt = nil, maxResults = nil)
    @developerKey = developerKey
    @websiteId = websiteId
    @advertiserIds = advertiserIds
    @keywords = keywords
    @serviceableArea = serviceableArea
    @upc = upc
    @manufacturerName = manufacturerName
    @manufacturerSku = manufacturerSku
    @advertiserSku = advertiserSku
    @lowPrice = lowPrice
    @highPrice = highPrice
    @lowSalePrice = lowSalePrice
    @highSalePrice = highSalePrice
    @currency = currency
    @isbn = isbn
    @sortBy = sortBy
    @sortOrder = sortOrder
    @startAt = startAt
    @maxResults = maxResults
  end
end

# {http://api.cj.com}searchResponse
#   out - ProductResponse
class SearchResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

require 'xsd/qname'

# {http://transaction.service.cj.com}RealtimeCommissionResponse
#   count - SOAP::SOAPInt
#   transactions - ArrayOfRealTimeCommissionData
class RealtimeCommissionResponse
  attr_accessor :count
  attr_accessor :transactions

  def initialize(count = nil, transactions = nil)
    @count = count
    @transactions = transactions
  end
end

# {http://transaction.lucene.service.cj.com}ArrayOfRealTimeCommissionData
class ArrayOfRealTimeCommissionData < ::Array
end

# {http://transaction.lucene.service.cj.com}RealTimeCommissionData
#   adId - SOAP::SOAPLong
#   advertiserId - SOAP::SOAPLong
#   advertiserName - SOAP::SOAPString
#   commissionAmount - SOAP::SOAPDouble
#   country - SOAP::SOAPString
#   details - ArrayOfDetail
#   eventDate - SOAP::SOAPDateTime
#   saleAmount - SOAP::SOAPDouble
#   sid - SOAP::SOAPString
#   websiteId - SOAP::SOAPLong
class RealTimeCommissionData
  attr_accessor :adId
  attr_accessor :advertiserId
  attr_accessor :advertiserName
  attr_accessor :commissionAmount
  attr_accessor :country
  attr_accessor :details
  attr_accessor :eventDate
  attr_accessor :saleAmount
  attr_accessor :sid
  attr_accessor :websiteId

  def initialize(adId = nil, advertiserId = nil, advertiserName = nil, commissionAmount = nil, country = nil, details = nil, eventDate = nil, saleAmount = nil, sid = nil, websiteId = nil)
    @adId = adId
    @advertiserId = advertiserId
    @advertiserName = advertiserName
    @commissionAmount = commissionAmount
    @country = country
    @details = details
    @eventDate = eventDate
    @saleAmount = saleAmount
    @sid = sid
    @websiteId = websiteId
  end
end

# {http://transaction.lucene.service.cj.com}ArrayOfDetail
class ArrayOfDetail < ::Array
end

# {http://transaction.lucene.service.cj.com}Detail
#   amount - SOAP::SOAPFloat
#   commission - SOAP::SOAPFloat
#   quantity - SOAP::SOAPInt
#   sku - SOAP::SOAPString
class Detail
  attr_accessor :amount
  attr_accessor :commission
  attr_accessor :quantity
  attr_accessor :sku

  def initialize(amount = nil, commission = nil, quantity = nil, sku = nil)
    @amount = amount
    @commission = commission
    @quantity = quantity
    @sku = sku
  end
end

# {http://api.cj.com}retrieveLatestTransactions
#   developerKey - SOAP::SOAPString
#   websiteIds - SOAP::SOAPString
#   lookBackXHours - SOAP::SOAPString
#   advertiserIds - SOAP::SOAPString
#   countries - SOAP::SOAPString
#   adIds - SOAP::SOAPString
#   includeDetails - SOAP::SOAPString
#   sortBy - SOAP::SOAPString
#   sortOrder - SOAP::SOAPString
class RetrieveLatestTransactions
  attr_accessor :developerKey
  attr_accessor :websiteIds
  attr_accessor :lookBackXHours
  attr_accessor :advertiserIds
  attr_accessor :countries
  attr_accessor :adIds
  attr_accessor :includeDetails
  attr_accessor :sortBy
  attr_accessor :sortOrder

  def initialize(developerKey = nil, websiteIds = nil, lookBackXHours = nil, advertiserIds = nil, countries = nil, adIds = nil, includeDetails = nil, sortBy = nil, sortOrder = nil)
    @developerKey = developerKey
    @websiteIds = websiteIds
    @lookBackXHours = lookBackXHours
    @advertiserIds = advertiserIds
    @countries = countries
    @adIds = adIds
    @includeDetails = includeDetails
    @sortBy = sortBy
    @sortOrder = sortOrder
  end
end

# {http://api.cj.com}retrieveLatestTransactionsResponse
#   out - RealtimeCommissionResponse
class RetrieveLatestTransactionsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

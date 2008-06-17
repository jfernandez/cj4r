require 'xsd/qname'

# {http://transaction.service.cj.com}PublisherCommissionResponse
#   publisherCommissions - ArrayOfPublisherCommission
#   sortBy - SOAP::SOAPString
#   totalResults - SOAP::SOAPLong
class PublisherCommissionResponse
  attr_accessor :publisherCommissions
  attr_accessor :sortBy
  attr_accessor :totalResults

  def initialize(publisherCommissions = nil, sortBy = nil, totalResults = nil)
    @publisherCommissions = publisherCommissions
    @sortBy = sortBy
    @totalResults = totalResults
  end
end

# {http://transaction.service.cj.com}PublisherCommissionDetailsResponse
#   originalActionDetails - ArrayOfOriginalActionDetail
class PublisherCommissionDetailsResponse
  attr_accessor :originalActionDetails

  def initialize(originalActionDetails = nil)
    @originalActionDetails = originalActionDetails
  end
end

# {http://transaction.service.cj.com}ArrayOfOriginalActionDetail
class ArrayOfOriginalActionDetail < ::Array
end

# {http://transaction.service.cj.com}OriginalActionDetail
#   transactionDetails - ArrayOfTransactionDetail
class OriginalActionDetail
  attr_accessor :transactionDetails

  def initialize(transactionDetails = nil)
    @transactionDetails = transactionDetails
  end
end

# {http://transaction.domain.cj.com}ArrayOfPublisherCommission
class ArrayOfPublisherCommission < ::Array
end

# {http://transaction.domain.cj.com}PublisherCommission
#   actionStatus - SOAP::SOAPString
#   actionType - SOAP::SOAPString
#   adId - SOAP::SOAPLong
#   advertiserId - SOAP::SOAPLong
#   advertiserName - SOAP::SOAPString
#   commissionAmount - SOAP::SOAPDecimal
#   country - SOAP::SOAPString
#   eventDate - SOAP::SOAPDateTime
#   original - SOAP::SOAPBoolean
#   originalActionId - SOAP::SOAPLong
#   postingDate - SOAP::SOAPDateTime
#   sId - SOAP::SOAPString
#   saleAmount - SOAP::SOAPDecimal
#   websiteId - SOAP::SOAPLong
class PublisherCommission
  attr_accessor :actionStatus
  attr_accessor :actionType
  attr_accessor :adId
  attr_accessor :advertiserId
  attr_accessor :advertiserName
  attr_accessor :commissionAmount
  attr_accessor :country
  attr_accessor :eventDate
  attr_accessor :original
  attr_accessor :originalActionId
  attr_accessor :postingDate
  attr_accessor :sId
  attr_accessor :saleAmount
  attr_accessor :websiteId

  def initialize(actionStatus = nil, actionType = nil, adId = nil, advertiserId = nil, advertiserName = nil, commissionAmount = nil, country = nil, eventDate = nil, original = nil, originalActionId = nil, postingDate = nil, sId = nil, saleAmount = nil, websiteId = nil)
    @actionStatus = actionStatus
    @actionType = actionType
    @adId = adId
    @advertiserId = advertiserId
    @advertiserName = advertiserName
    @commissionAmount = commissionAmount
    @country = country
    @eventDate = eventDate
    @original = original
    @originalActionId = originalActionId
    @postingDate = postingDate
    @sId = sId
    @saleAmount = saleAmount
    @websiteId = websiteId
  end
end

# {http://transaction.domain.cj.com}ArrayOfTransactionDetail
class ArrayOfTransactionDetail < ::Array
end

# {http://transaction.domain.cj.com}TransactionDetail
#   itemDetails - ArrayOfItemDetail
#   publisherCommission - PublisherCommission
class TransactionDetail
  attr_accessor :itemDetails
  attr_accessor :publisherCommission

  def initialize(itemDetails = nil, publisherCommission = nil)
    @itemDetails = itemDetails
    @publisherCommission = publisherCommission
  end
end

# {http://transaction.domain.cj.com}ArrayOfItemDetail
class ArrayOfItemDetail < ::Array
end

# {http://transaction.domain.cj.com}ItemDetail
#   id - SOAP::SOAPLong
#   postingDate - SOAP::SOAPDateTime
#   quantity - SOAP::SOAPInt
#   saleAmount - SOAP::SOAPDecimal
#   sku - SOAP::SOAPString
class ItemDetail
  attr_accessor :id
  attr_accessor :postingDate
  attr_accessor :quantity
  attr_accessor :saleAmount
  attr_accessor :sku

  def initialize(id = nil, postingDate = nil, quantity = nil, saleAmount = nil, sku = nil)
    @id = id
    @postingDate = postingDate
    @quantity = quantity
    @saleAmount = saleAmount
    @sku = sku
  end
end

# {http://api.cj.com}findPublisherCommissions
#   developerKey - SOAP::SOAPString
#   date - SOAP::SOAPString
#   dateType - SOAP::SOAPString
#   advertiserIds - SOAP::SOAPString
#   websiteIds - SOAP::SOAPString
#   actionStatus - SOAP::SOAPString
#   actionTypes - SOAP::SOAPString
#   adIds - SOAP::SOAPString
#   countries - SOAP::SOAPString
#   correctionStatus - SOAP::SOAPString
#   sortBy - SOAP::SOAPString
#   sortOrder - SOAP::SOAPString
class FindPublisherCommissions
  attr_accessor :developerKey
  attr_accessor :date
  attr_accessor :dateType
  attr_accessor :advertiserIds
  attr_accessor :websiteIds
  attr_accessor :actionStatus
  attr_accessor :actionTypes
  attr_accessor :adIds
  attr_accessor :countries
  attr_accessor :correctionStatus
  attr_accessor :sortBy
  attr_accessor :sortOrder

  def initialize(developerKey = nil, date = nil, dateType = nil, advertiserIds = nil, websiteIds = nil, actionStatus = nil, actionTypes = nil, adIds = nil, countries = nil, correctionStatus = nil, sortBy = nil, sortOrder = nil)
    @developerKey = developerKey
    @date = date
    @dateType = dateType
    @advertiserIds = advertiserIds
    @websiteIds = websiteIds
    @actionStatus = actionStatus
    @actionTypes = actionTypes
    @adIds = adIds
    @countries = countries
    @correctionStatus = correctionStatus
    @sortBy = sortBy
    @sortOrder = sortOrder
  end
end

# {http://api.cj.com}findPublisherCommissionsResponse
#   out - PublisherCommissionResponse
class FindPublisherCommissionsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {http://api.cj.com}findPublisherCommissionDetails
#   developerKey - SOAP::SOAPString
#   originalActionIds - SOAP::SOAPString
class FindPublisherCommissionDetails
  attr_accessor :developerKey
  attr_accessor :originalActionIds

  def initialize(developerKey = nil, originalActionIds = nil)
    @developerKey = developerKey
    @originalActionIds = originalActionIds
  end
end

# {http://api.cj.com}findPublisherCommissionDetailsResponse
#   out - PublisherCommissionDetailsResponse
class FindPublisherCommissionDetailsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end
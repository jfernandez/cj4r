require 'xsd/qname'

# {http://link.service.cj.com}LinkDetailResponse
#   count - SOAP::SOAPInt
#   links - ArrayOfLinkDetail
#   offset - SOAP::SOAPInt
#   totalResults - SOAP::SOAPInt
class LinkDetailResponse
  attr_accessor :count
  attr_accessor :links
  attr_accessor :offset
  attr_accessor :totalResults

  def initialize(count = nil, links = nil, offset = nil, totalResults = nil)
    @count = count
    @links = links
    @offset = offset
    @totalResults = totalResults
  end
end

# {http://link.service.cj.com}ArrayOfLinkDetail
class ArrayOfLinkDetail < ::Array
end

# {http://link.service.cj.com}LinkDetail
#   advertiserId - SOAP::SOAPString
#   advertiserName - SOAP::SOAPString
#   category - SOAP::SOAPString
#   clickCommission - SOAP::SOAPString
#   creativeHeight - SOAP::SOAPString
#   creativeWidth - SOAP::SOAPString
#   language - SOAP::SOAPString
#   leadCommission - SOAP::SOAPString
#   linkCodeHTML - SOAP::SOAPString
#   linkCodeJavascript - SOAP::SOAPString
#   linkDescription - SOAP::SOAPString
#   linkDestination - SOAP::SOAPString
#   linkId - SOAP::SOAPString
#   linkName - SOAP::SOAPString
#   linkType - SOAP::SOAPString
#   networkRank - SOAP::SOAPString
#   performanceIncentives - SOAP::SOAPString
#   promotionEndDate - SOAP::SOAPString
#   promotionStartDate - SOAP::SOAPString
#   promotionType - SOAP::SOAPString
#   relationshipStatus - SOAP::SOAPString
#   saleCommission - SOAP::SOAPString
#   sevenDayEPC - SOAP::SOAPString
#   threeMonthEPC - SOAP::SOAPString
class LinkDetail
  attr_accessor :advertiserId
  attr_accessor :advertiserName
  attr_accessor :category
  attr_accessor :clickCommission
  attr_accessor :creativeHeight
  attr_accessor :creativeWidth
  attr_accessor :language
  attr_accessor :leadCommission
  attr_accessor :linkCodeHTML
  attr_accessor :linkCodeJavascript
  attr_accessor :linkDescription
  attr_accessor :linkDestination
  attr_accessor :linkId
  attr_accessor :linkName
  attr_accessor :linkType
  attr_accessor :networkRank
  attr_accessor :performanceIncentives
  attr_accessor :promotionEndDate
  attr_accessor :promotionStartDate
  attr_accessor :promotionType
  attr_accessor :relationshipStatus
  attr_accessor :saleCommission
  attr_accessor :sevenDayEPC
  attr_accessor :threeMonthEPC

  def initialize(advertiserId = nil, advertiserName = nil, category = nil, clickCommission = nil, creativeHeight = nil, creativeWidth = nil, language = nil, leadCommission = nil, linkCodeHTML = nil, linkCodeJavascript = nil, linkDescription = nil, linkDestination = nil, linkId = nil, linkName = nil, linkType = nil, networkRank = nil, performanceIncentives = nil, promotionEndDate = nil, promotionStartDate = nil, promotionType = nil, relationshipStatus = nil, saleCommission = nil, sevenDayEPC = nil, threeMonthEPC = nil)
    @advertiserId = advertiserId
    @advertiserName = advertiserName
    @category = category
    @clickCommission = clickCommission
    @creativeHeight = creativeHeight
    @creativeWidth = creativeWidth
    @language = language
    @leadCommission = leadCommission
    @linkCodeHTML = linkCodeHTML
    @linkCodeJavascript = linkCodeJavascript
    @linkDescription = linkDescription
    @linkDestination = linkDestination
    @linkId = linkId
    @linkName = linkName
    @linkType = linkType
    @networkRank = networkRank
    @performanceIncentives = performanceIncentives
    @promotionEndDate = promotionEndDate
    @promotionStartDate = promotionStartDate
    @promotionType = promotionType
    @relationshipStatus = relationshipStatus
    @saleCommission = saleCommission
    @sevenDayEPC = sevenDayEPC
    @threeMonthEPC = threeMonthEPC
  end
end

# {http://api.cj.com}searchLinks
#   developerKey - SOAP::SOAPString
#   token - SOAP::SOAPString
#   websiteId - SOAP::SOAPString
#   advertiserIds - SOAP::SOAPString
#   keywords - SOAP::SOAPString
#   category - SOAP::SOAPString
#   linkType - SOAP::SOAPString
#   linkSize - SOAP::SOAPString
#   language - SOAP::SOAPString
#   serviceableArea - SOAP::SOAPString
#   promotionType - SOAP::SOAPString
#   promotionStartDate - SOAP::SOAPString
#   promotionEndDate - SOAP::SOAPString
#   sortBy - SOAP::SOAPString
#   sortOrder - SOAP::SOAPString
#   startAt - SOAP::SOAPString
#   maxResults - SOAP::SOAPString
class SearchLinks
  attr_accessor :developerKey
  attr_accessor :token
  attr_accessor :websiteId
  attr_accessor :advertiserIds
  attr_accessor :keywords
  attr_accessor :category
  attr_accessor :linkType
  attr_accessor :linkSize
  attr_accessor :language
  attr_accessor :serviceableArea
  attr_accessor :promotionType
  attr_accessor :promotionStartDate
  attr_accessor :promotionEndDate
  attr_accessor :sortBy
  attr_accessor :sortOrder
  attr_accessor :startAt
  attr_accessor :maxResults

  def initialize(developerKey = nil, token = nil, websiteId = nil, advertiserIds = nil, keywords = nil, category = nil, linkType = nil, linkSize = nil, language = nil, serviceableArea = nil, promotionType = nil, promotionStartDate = nil, promotionEndDate = nil, sortBy = nil, sortOrder = nil, startAt = nil, maxResults = nil)
    @developerKey = developerKey
    @token = token
    @websiteId = websiteId
    @advertiserIds = advertiserIds
    @keywords = keywords
    @category = category
    @linkType = linkType
    @linkSize = linkSize
    @language = language
    @serviceableArea = serviceableArea
    @promotionType = promotionType
    @promotionStartDate = promotionStartDate
    @promotionEndDate = promotionEndDate
    @sortBy = sortBy
    @sortOrder = sortOrder
    @startAt = startAt
    @maxResults = maxResults
  end
end

# {http://api.cj.com}searchLinksResponse
#   out - LinkDetailResponse
class SearchLinksResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

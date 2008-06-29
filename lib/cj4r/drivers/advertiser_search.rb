require 'xsd/qname'

# {http://api.cj.com}ArrayOfString
class ArrayOfString < ::Array
end

# {http://advertiser.service.cj.com}AdvertiserSearchResponse
#   advertisers - ArrayOfAdvertiserData
#   currentPage - SOAP::SOAPInt
#   resultsPerpage - SOAP::SOAPInt
#   totalResults - SOAP::SOAPInt
class AdvertiserSearchResponse
  attr_accessor :advertisers
  attr_accessor :currentPage
  attr_accessor :resultsPerpage
  attr_accessor :totalResults

  def initialize(advertisers = nil, currentPage = nil, resultsPerpage = nil, totalResults = nil)
    @advertisers = advertisers
    @currentPage = currentPage
    @resultsPerpage = resultsPerpage
    @totalResults = totalResults
  end
end

# {http://vo.domain.cj.com}ArrayOfAdvertiserData
class ArrayOfAdvertiserData < ::Array
end

# {http://vo.domain.cj.com}AdvertiserData
#   cid - SOAP::SOAPString
#   clickCommission - SOAP::SOAPString
#   leadCommission - SOAP::SOAPString
#   linkTypes - ArrayOfString
#   name - SOAP::SOAPString
#   networkRank - SOAP::SOAPString
#   performanceIncentives - SOAP::SOAPString
#   primaryCategoryId - SOAP::SOAPString
#   primaryCategoryName - ArrayOfString
#   relationshipStatus - SOAP::SOAPString
#   saleCommission - SOAP::SOAPString
#   sevenDayEPC - SOAP::SOAPString
#   threeMonthEPC - SOAP::SOAPString
class AdvertiserData
  attr_accessor :cid
  attr_accessor :clickCommission
  attr_accessor :leadCommission
  attr_accessor :linkTypes
  attr_accessor :name
  attr_accessor :networkRank
  attr_accessor :performanceIncentives
  attr_accessor :primaryCategoryId
  attr_accessor :primaryCategoryName
  attr_accessor :relationshipStatus
  attr_accessor :saleCommission
  attr_accessor :sevenDayEPC
  attr_accessor :threeMonthEPC

  def initialize(cid = nil, clickCommission = nil, leadCommission = nil, linkTypes = nil, name = nil, networkRank = nil, performanceIncentives = nil, primaryCategoryId = nil, primaryCategoryName = nil, relationshipStatus = nil, saleCommission = nil, sevenDayEPC = nil, threeMonthEPC = nil)
    @cid = cid
    @clickCommission = clickCommission
    @leadCommission = leadCommission
    @linkTypes = linkTypes
    @name = name
    @networkRank = networkRank
    @performanceIncentives = performanceIncentives
    @primaryCategoryId = primaryCategoryId
    @primaryCategoryName = primaryCategoryName
    @relationshipStatus = relationshipStatus
    @saleCommission = saleCommission
    @sevenDayEPC = sevenDayEPC
    @threeMonthEPC = threeMonthEPC
  end
end

# {http://api.cj.com}search
#   developerKey - SOAP::SOAPString
#   token - SOAP::SOAPString
#   keywords - SOAP::SOAPString
#   category - SOAP::SOAPString
#   linkType - SOAP::SOAPString
#   linkSize - SOAP::SOAPString
#   language - SOAP::SOAPString
#   servicaeableArea - SOAP::SOAPString
#   sortBy - SOAP::SOAPString
#   sortOrder - SOAP::SOAPString
#   startAt - SOAP::SOAPInt
#   maxResults - SOAP::SOAPInt
class Search
  attr_accessor :developerKey
  attr_accessor :token
  attr_accessor :keywords
  attr_accessor :category
  attr_accessor :linkType
  attr_accessor :linkSize
  attr_accessor :language
  attr_accessor :servicaeableArea
  attr_accessor :sortBy
  attr_accessor :sortOrder
  attr_accessor :startAt
  attr_accessor :maxResults

  def initialize(developerKey = nil, token = nil, keywords = nil, category = nil, linkType = nil, linkSize = nil, language = nil, servicaeableArea = nil, sortBy = nil, sortOrder = nil, startAt = nil, maxResults = nil)
    @developerKey = developerKey
    @token = token
    @keywords = keywords
    @category = category
    @linkType = linkType
    @linkSize = linkSize
    @language = language
    @servicaeableArea = servicaeableArea
    @sortBy = sortBy
    @sortOrder = sortOrder
    @startAt = startAt
    @maxResults = maxResults
  end
end

# {http://api.cj.com}searchResponse
#   out - AdvertiserSearchResponse
class SearchResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

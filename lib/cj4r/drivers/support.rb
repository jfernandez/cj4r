require 'xsd/qname'

# {http://api.cj.com}ArrayOfString
class ArrayOfString < ::Array
end

# {http://api.cj.com}getLinkSizes
#   developerKey - SOAP::SOAPString
class GetLinkSizes
  attr_accessor :developerKey

  def initialize(developerKey = nil)
    @developerKey = developerKey
  end
end

# {http://api.cj.com}getLinkSizesResponse
#   out - ArrayOfString
class GetLinkSizesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {http://api.cj.com}getCountries
#   developerKey - SOAP::SOAPString
#   locale - SOAP::SOAPString
class GetCountries
  attr_accessor :developerKey
  attr_accessor :locale

  def initialize(developerKey = nil, locale = nil)
    @developerKey = developerKey
    @locale = locale
  end
end

# {http://api.cj.com}getCountriesResponse
#   out - ArrayOfString
class GetCountriesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {http://api.cj.com}getCategories
#   developerKey - SOAP::SOAPString
#   locale - SOAP::SOAPString
class GetCategories
  attr_accessor :developerKey
  attr_accessor :locale

  def initialize(developerKey = nil, locale = nil)
    @developerKey = developerKey
    @locale = locale
  end
end

# {http://api.cj.com}getCategoriesResponse
#   out - ArrayOfString
class GetCategoriesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {http://api.cj.com}getLinkTypes
#   developerKey - SOAP::SOAPString
class GetLinkTypes
  attr_accessor :developerKey

  def initialize(developerKey = nil)
    @developerKey = developerKey
  end
end

# {http://api.cj.com}getLinkTypesResponse
#   out - ArrayOfString
class GetLinkTypesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {http://api.cj.com}getLanguages
#   developerKey - SOAP::SOAPString
class GetLanguages
  attr_accessor :developerKey

  def initialize(developerKey = nil)
    @developerKey = developerKey
  end
end

# {http://api.cj.com}getLanguagesResponse
#   out - ArrayOfString
class GetLanguagesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

require_relative 'parser'
require_relative 'site_parser'

require_relative 'search_type'
require_relative 'init_search_type'

@init_search = InitSearchType.new
@parser = SiteParser.new(@init_search)
@parser.parsing
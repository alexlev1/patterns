require_relative 'uploader'
require_relative 'reader'
require_relative 'data_convertor'

file = '/data.xml'

# Upload XML data
@uploader = Uploader.new
data = @uploader.get_xml(file)

# Adapter (Convert from XML to JSON)
@adapter = DataConvertor.new(data)
data = @adapter.xml_convertor

# Read converted JSON data
@reader = Reader.new(data)
@reader.read


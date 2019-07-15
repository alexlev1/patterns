require "rexml/document"

class DataConvertor
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def xml_convertor
    doc = REXML::Document.new(data)

    posts = []

    doc.elements.each("posts/post") do |item|
      post = {}
      post['title'] = item.attributes["title"].to_s
      post['text'] = item.attributes["text"].to_s
      posts << post
    end

    posts
  end
end
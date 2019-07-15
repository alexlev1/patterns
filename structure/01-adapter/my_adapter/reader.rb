class Reader
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def read
    data.each do |post|
      p "Post - title: #{post["title"]}, body: #{post['text']}"
    end
  end
end
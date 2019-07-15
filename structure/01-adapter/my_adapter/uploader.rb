class Uploader
  def get_xml(file)
    current_path = File.dirname(__FILE__)
    file_name = current_path + file
    file = File.new(file_name)
    file
  end
end
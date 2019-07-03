class Logistics::RoadLogistics < Logistics
  def transport_method
    Transport::CarTransport.new
  end
end
class Logistics::SeaLogistics < Logistics
  def transport_method
    Transport::ShipTransport.new
  end
end
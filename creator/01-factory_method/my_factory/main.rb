require_relative 'logistics'
require_relative 'logistics/road_logistics'
require_relative 'logistics/sea_logistics'

require_relative 'transport'
require_relative 'transport/car_transport'
require_relative 'transport/ship_transport'

def starter(factory)
  factory.create_transport
end

p starter(Logistics::RoadLogistics.new)
p starter(Logistics::SeaLogistics.new)
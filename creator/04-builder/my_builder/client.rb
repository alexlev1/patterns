require_relative 'director'

require_relative 'builder'
require_relative 'house_builder'
require_relative 'villa_builder'

require_relative 'house'
require_relative 'villa'

@director = Director.new
@house_builder = HouseBuilder.new
@villa_builder = VillaBuilder.new

@director.builder = @house_builder
@director.build_house
@house_builder.house.list_parts

@director.builder = @villa_builder
@director.build_villa
@villa_builder.villa.list_parts